/*
 */
// 마커를 담을 배열입니다
	var markers = [];
	
	var listEl;
	var fragment;
	var marker_set_num = 2;
	
	var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
	
	var location_left,
		location_right,
		level;
	
	function getParameterByName(name) {
	    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
	        results = regex.exec(location.search);
	    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	}
    
	(function() { 
		
		var region = getParameterByName('region');
		
		console.log(region);
		
		switch(region){
			case 'seoul': location_left = 37.563202566049746;
						  location_right = 126.89508875586239;
						  level = 9;
						  break;
			case 'busan': location_left = 35.18385194282233;
			  			  location_right = 129.03011372241076;
			  			  level = 8;
			  			  break;
			case 'chungcheongbukdo': location_left = 36.87693811111522;
									 location_right = 127.59988530914694;
									 level = 10;
									 break;
			case 'chungcheongnamdo': location_left = 36.467819712881266;
			 						 location_right = 126.96691887924996;
			 						 level = 10;
			 						 break;
			case 'daegu': location_left = 35.87200496409976;
			 			  location_right = 128.53576614995944;
			 			  level = 9;
			 			  break;
			case 'Daejeon': location_left = 36.340348263949814;
			  				location_right = 127.3758178710353;
			  				level = 9;
			  				break;
			case 'gangwondo': location_left = 37.739848824633235;
							  location_right = 128.17965711519534;
							  level = 10;
							  break;
			case 'Gunggido': location_left = 37.57146624675229;
			  				 location_right = 127.1845006756351;
			  				 level = 10;
			  				 break;
			case 'Gyeongsangbukdo': location_left = 36.48479530553416;
				 					location_right = 128.5102830116797;
				 					level = 10;
				 					break;
			case 'gyeongsangnamdo': location_left = 35.446578212238954;
									location_right = 128.09168022635197;
									level = 10;
									break;
			case 'incheon': location_left = 37.450950593205455;
							location_right = 126.81712931636055;
							level = 9;
							break;
			case 'jeju': location_left = 33.39031148219502;
						 location_right = 126.51447770430175;
						 level = 8;
						 break;
			case 'jeollabukdo': location_left = 35.71914119094499;
								location_right = 127.07262192913372;
								level = 10;
								break;
			case 'jeollanamdo': location_left = 35.002703037204384;
			 					location_right = 126.94788857925258;
			 					level = 10;
			 					break;
			case 'ulsan': location_left = 35.54145179455311;
			 			  location_right = 129.20896212468028;
			 			  level = 9;
			 			  break;
			case 'gwangju': location_left = 35.159447947703484;
			  			    location_right = 126.79290051140268;
			  			    level = 9;
			  			    break;
			default : location_left = 35.184178921561326;
			 		  location_right = 129.11213863443757;
			 		  level = 9;
			 		  break;
		}
	})();
	
	console.log(location_left+","+location_right+","+level);
	
	var mapOption = {
        center: new daum.maps.LatLng(location_left, location_right), // 지도의 중심좌표
        level: level  // 지도의 확대 레벨
    };  
	
	console.log(mapOption);
	
	var lat;
	var lng;

	// 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();
	
	var marker = new daum.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
	infowindow = new daum.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다
	 
//	searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	
	// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {
	searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
	    if (status == daum.maps.services.Status.OK && marker_set_num == 1) {
	        var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
	        detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
	        
	        var content = '<div class="bAddr">' +
	                        '<span class="title">법정동 주소정보</span>' + 
	                        detailAddr + 
	                    '</div>';
	        
	        var address_doro = !!result[0].road_address ? '' + result[0].road_address.address_name : '';
	        var address_jibun = '' + result[0].address.address_name;
	
	        // 마커를 클릭한 위치에 표시합니다 
	        marker.setPosition(mouseEvent.latLng);
	        
	        lat = mouseEvent.latLng.getLat();
	        lng = mouseEvent.latLng.getLng();
	
			addMarker(mouseEvent.latLng, content, address_doro,address_jibun);
	
	        // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
	//	            infowindow.setContent(content);
	//	            infowindow.open(map, marker);     
	        }   
	    });
	});
	
	// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
//	daum.maps.event.addListener(map, 'idle', function() {
//	    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
//	});
	
	function addMarker(position, content, address_doro,address_jibun) {
		
		listEl = document.getElementById('placesList');
		
		fragment = document.createDocumentFragment();
		
		console.log(position);
	    
	    // 마커를 생성합니다
		var marker = new daum.maps.Marker({
		    position: position,
		    clickable: true
		    
		});
		
		// 마커에 표시할 인포윈도우를 생성합니다 
//		var infowindow = new daum.maps.InfoWindow({
//		    content: content // 인포윈도우에 표시할 내용
//		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
//		daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
//	    daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	    // 생성된 마커를 배열에 추가합니다
		console.log(markers.length);
		var itemEl = getListItem(markers.length,address_doro,address_jibun);
		
		(function(marker, content) {
            daum.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, content);
            });

            daum.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, content);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker,content);
		
		fragment.appendChild(itemEl);
		listEl.appendChild(fragment);
		
		var marker_list = new Object();
		
		marker_list.marker = marker;
		marker_list.list = itemEl;
		
		markers.push(marker_list);
		
		daum.maps.event.addListener(marker, 'rightclick', function (mouseEvent) {	 	    	   
		      // 마커 위에 인포윈도우를 표시합니다
    	  //removeMarker();
		  infowindow.close();
	      marker.setMap(null);
	      console.log(listEl);
	      removeAllChildNods(listEl);
	      for(var i=0; markers.length>i;i++){
	    	  if(markers[i].marker == marker){
	    		  console.log(i+"번째에서 같은거 찾음");
	    		  markers.splice(i,1);
	    		  i--;
	    	  }else{
	    		  console.log(i);
	    		  fragment.appendChild(markers[i].list);
	    		  listEl.appendChild(fragment);
	    	  }
	      }
	      console.log(markers);
		});
	}
	
	
	//	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
	    return function() {
	        infowindow.open(map, marker);
	    };
	}
	
	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
	    return function() {
	        infowindow.close();
	    };
	}
	
	
	function searchAddrFromCoords(coords, callback) {
	    // 좌표로 행정동 주소 정보를 요청합니다
	    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback); 
	}
	
	function searchDetailAddrFromCoords(coords, callback) {
	    // 좌표로 법정동 상세 주소 정보를 요청합니다
	    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}
	
	// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
/*	function displayCenterInfo(result, status) {
	    if (status === daum.maps.services.Status.OK) {
	        var infoDiv = document.getElementById('centerAddr');
	
	    for(var i = 0; i < result.length; i++) {
	        // 행정동의 region_type 값은 'H' 이므로
	        if (result[i].region_type === 'H') {
	               	infoDiv.innerHTML = result[i].address_name;
	                break;
	            }
	        }
	    }    
	}
	*/
	
	
//	// 검색 결과 목록과 마커를 표출하는 함수입니다
//	function displayPlaces(places) {
//	
//	    var listEl = document.getElementById('placesList'), 
//	    menuEl = document.getElementById('menu_wrap'),
//	    fragment = document.createDocumentFragment(), 
//	    bounds = new daum.maps.LatLngBounds(), 
//	    listStr = '';
//	    
//	    // 검색 결과 목록에 추가된 항목들을 제거합니다
//	    removeAllChildNods(listEl);
//	
//	    // 지도에 표시되고 있는 마커를 제거합니다
//	    removeMarker();
//	    
//	    for ( var i=0; i<places.length; i++ ) {
//	
//	        // 마커를 생성하고 지도에 표시합니다
//	        var placePosition = new daum.maps.LatLng(places[i].y, places[i].x),
//	            marker = addMarker(placePosition, i), 
//	            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
//	
//	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
//	        // LatLngBounds 객체에 좌표를 추가합니다
//	        bounds.extend(placePosition);
//	
//	        // 마커와 검색결과 항목에 mouseover 했을때
//	        // 해당 장소에 인포윈도우에 장소명을 표시합니다
//	        // mouseout 했을 때는 인포윈도우를 닫습니다
//	        (function(marker, title) {
//	            daum.maps.event.addListener(marker, 'mouseover', function() {
//	                displayInfowindow(marker, title);
//	            });
//	
//	            daum.maps.event.addListener(marker, 'mouseout', function() {
//	                infowindow.close();
//	            });
//	
//	            itemEl.onmouseover =  function () {
//	                displayInfowindow(marker, title);
//	            };
//	
//	            itemEl.onmouseout =  function () {
//	                infowindow.close();
//	            };
//	        })(marker, places[i].place_name);
//	
//	        fragment.appendChild(itemEl);
//	    }
//	
//	    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
//	    listEl.appendChild(fragment);
//	    menuEl.scrollTop = 0;
//	
//	    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
//	    map.setBounds(bounds);
//	}
	
	// 검색결과 항목을 Element로 반환하는 함수입니다
	function getListItem(index, places_doro,places_jibun) {
	
	    var el = document.createElement('li'),
	    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
	                '<div class="info">';
	
	    if (places_doro!='') {
	        itemStr += '    <span>' + places_doro + '</span>' +
	                    '   <span class="jibun gray">' +  places_jibun  + '</span>'
	                    +'<div><a href="http://map.daum.net/link/map/'+lat+','+lng+'" target="_blank" class="link">자세히보기</a></div>';
	    } else {
	        itemStr += '    <span>' +  places_jibun  + '</span>'
	        +'<div><a href="http://map.daum.net/link/map/'+lat+','+lng+'" target="_blank" class="link">자세히보기</a></div>'; 
	    }
	      itemStr += '</div>';           
	
	    el.innerHTML = itemStr;
	    el.className = 'item';
	
	    return el;
	}
	
	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    //markers = [];
	}
	
	// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
	function displayPagination(pagination) {
	    var paginationEl = document.getElementById('pagination'),
	        fragment = document.createDocumentFragment(),
	        i; 
	
	    // 기존에 추가된 페이지번호를 삭제합니다
	    while (paginationEl.hasChildNodes()) {
	        paginationEl.removeChild (paginationEl.lastChild);
	    }
	
	    for (i=1; i<=pagination.last; i++) {
	        var el = document.createElement('a');
	        el.href = "#";
	        el.innerHTML = i;
	
	        if (i===pagination.current) {
	            el.className = 'on';
	        } else {
	            el.onclick = (function(i) {
	                return function() {
	                    pagination.gotoPage(i);
	                }
	            })(i);
	        }
	
	        fragment.appendChild(el);
	    }
	    paginationEl.appendChild(fragment);
	}
	
	// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	// 인포윈도우에 장소명을 표시합니다
	function displayInfowindow(marker, title) {
	    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
	
	    infowindow.setContent(content);
	    infowindow.open(map, marker);
	}
	
	 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
	function removeAllChildNods(el) {   
	    while (el.hasChildNodes()) {
	        el.removeChild (el.lastChild);
	    }
	}
	
	// 지도타입 컨트롤의 지도 또는 스카이뷰 버튼을 클릭하면 호출되어 지도타입을 바꾸는 함수입니다
	function setMapType(maptype) { 
	    var roadmapControl = document.getElementById('btnRoadmap');
	    var skyviewControl = document.getElementById('btnSkyview'); 
	    if (maptype === 'roadmap') {
	        map.setMapTypeId(daum.maps.MapTypeId.ROADMAP);    
	        roadmapControl.className = 'selected_btn';
	        skyviewControl.className = 'btn';
	    } else {
	        map.setMapTypeId(daum.maps.MapTypeId.HYBRID);    
	        skyviewControl.className = 'selected_btn';
	        roadmapControl.className = 'btn';
	    }
	}

	// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomIn() {
	    map.setLevel(map.getLevel() - 1);
	}

	// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomOut() {
		console.log(map.getLevel);
		if(map.getLevel<'12'){
			map.setLevel(map.getLevel() + 1);
		}
	}
	
	function mark_set(){
		if(map.getLevel()<=6){
			var img = document.getElementById("marker_img");
			if(img.src.indexOf("images/marker_image2.png")>-1){
				img.src = "images/marker_image3.png";
				marker_set_num = 1;
			}else{
				img.src = "images/marker_image2.png";
				marker_set_num = 2;
			}
		}else{
			alert("정확한 표시를 위해 지도를 확대후 클릭해주세요");
		}
	}
	
	// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
	var placeOverlay = new daum.maps.CustomOverlay({zIndex:1}), 
	    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
	    markers2 = [], // 마커를 담을 배열입니다
	    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
	
	// 장소 검색 객체를 생성합니다
	var ps = new daum.maps.services.Places(map); 

	// 지도에 idle 이벤트를 등록합니다
	daum.maps.event.addListener(map, 'idle', searchPlaces);

	// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
	contentNode.className = 'placeinfo_wrap';

	// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
	// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 daum.maps.event.preventMap 메소드를 등록합니다 
	addEventHandle(contentNode, 'mousedown', daum.maps.event.preventMap);
	addEventHandle(contentNode, 'touchstart', daum.maps.event.preventMap);

	// 커스텀 오버레이 컨텐츠를 설정합니다
	placeOverlay.setContent(contentNode);  

	// 각 카테고리에 클릭 이벤트를 등록합니다
	addCategoryClickEvent();

	// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
	function addEventHandle(target, type, callback) {
	    if (target.addEventListener) {
	        target.addEventListener(type, callback);
	    } else {
	        target.attachEvent('on' + type, callback);
	    }
	}

	// 카테고리 검색을 요청하는 함수입니다
	function searchPlaces() {
	    if (!currCategory) {
	        return;
	    }
	    
	    // 커스텀 오버레이를 숨깁니다 
	    placeOverlay.setMap(null);

	    // 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker2();
	    
	    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
	}

	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
	    if (status === daum.maps.services.Status.OK) {

	        // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
	        displayPlaces(data);
	    } else if (status === daum.maps.services.Status.ZERO_RESULT) {
	        // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

	    } else if (status === daum.maps.services.Status.ERROR) {
	        // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
	        
	    }
	}

	// 지도에 마커를 표출하는 함수입니다
	function displayPlaces(places) {

	    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
	    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
	    var order = document.getElementById(currCategory).getAttribute('data-order');

	    

	    for ( var i=0; i<places.length; i++ ) {

	            // 마커를 생성하고 지도에 표시합니다
	            var marker = addMarker2(new daum.maps.LatLng(places[i].y, places[i].x), order);

	            // 마커와 검색결과 항목을 클릭 했을 때
	            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
	            (function(marker, place) {
	                daum.maps.event.addListener(marker, 'click', function() {
	                    displayPlaceInfo(place);
	                });
	            })(marker, places[i]);
	    }
	}

	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker2(position, order) {
	    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new daum.maps.Size(27, 28),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new daum.maps.Size(72, 208), // 스프라이트 이미지의 크기
	            spriteOrigin : new daum.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new daum.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new daum.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });

	    marker.setMap(map); // 지도 위에 마커를 표출합니다
	    markers2.push(marker);  // 배열에 생성된 마커를 추가합니다

	    return marker;
	}

	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker2() {
	    for ( var i = 0; i < markers2.length; i++ ) {
	        markers2[i].setMap(null);
	    }   
	    markers2 = [];
	}

	// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
	function displayPlaceInfo (place) {
	    var content = '<div class="placeinfo">' +
	                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   

	    if (place.road_address_name) {
	        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
	                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
	    }  else {
	        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
	    }                
	   
	    content += '    <span class="tel">' + place.phone + '</span>' + 
	                '</div>' + 
	                '<div class="after"></div>';

	    contentNode.innerHTML = content;
	    placeOverlay.setPosition(new daum.maps.LatLng(place.y, place.x));
	    placeOverlay.setMap(map);  
	}


	// 각 카테고리에 클릭 이벤트를 등록합니다
	function addCategoryClickEvent() {
	    var category = document.getElementById('category'),
	        children = category.children;

	    for (var i=0; i<children.length; i++) {
	        children[i].onclick = onClickCategory;
	    }
	}

	// 카테고리를 클릭했을 때 호출되는 함수입니다
	function onClickCategory() {
	    var id = this.id,
	        className = this.className;

	    placeOverlay.setMap(null);

	    if (className === 'on') {
	        currCategory = '';
	        changeCategoryClass();
	        removeMarker2();
	    } else {
	        currCategory = id;
	        changeCategoryClass(this);
	        searchPlaces();
	    }
	}

	// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
	function changeCategoryClass(el) {
	    var category = document.getElementById('category'),
	        children = category.children,
	        i;

	    for ( i=0; i<children.length; i++ ) {
	        children[i].className = '';
	    }

	    if (el) {
	        el.className = 'on';
	    } 
	}
	function next(){
		var position = [];
		var marker_position;
		var person_str;
		
		console.log(position);
		
		if(markers.length==0){
			alert("여행경로를 선택해주세요.");
		}else{
			for(var i=0; i<markers.length; i++ ){
				marker_position = new Object();
//				console.log(position.length);
				marker_position.ib = markers[i].marker.getPosition().ib;
				marker_position.jb = markers[i].marker.getPosition().jb;
//				console.log(i+"marker_position");
				console.log(marker_position);
				position.push(marker_position);
//				console.log(i+"position");
				console.log(position);
			}
			if(window.sessionStorage){
				person_str = JSON.stringify(position);

				sessionStorage.setItem('position',person_str);
			}
			
			$.post("detail.do",
				{
					position : person_str
				},
				function(data,status){
					console.log(data);
					if(status=="success"){
						location.href = "content_in.do";
					}else{
						alert(status);
					}
				})
		}
	}
	daum.maps.event.addListener(map, 'center_changed', function() {
		if(map.getLevel()>6){
			var img = document.getElementById("marker_img");
			img.src = "images/marker_image2.png";
			marker_set_num = 2;
		}
	});
	
	