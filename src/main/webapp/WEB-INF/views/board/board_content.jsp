<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" import="com.cndy.tt.board.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *Must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>TourTogether-Tour &amp; Content | For Guide</title>

    <!-- Favicon -->
    <link rel="icon" href="../clever-img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="../clever/style.css">
    <link rel="stylesheet" href="../clever-css/all.css">
</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="spinner"></div>
    </div>

    <!-- ##### Header Area Start ##### -->
	<%@include file="../include2/navybar4.jsp"%>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area">
        <!-- Breadcumb -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">Home</li>
                <li class="breadcrumb-item">Tour</li>
                <li class="breadcrumb-item">Tour &amp; Guide</li>
                <li class="breadcrumb-item active" aria-current="page">Tour Content</li>
            </ol>
        </nav>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

<style>
   #profile{
      border-radius: 30%;
   }
</style>
    <!-- ##### Single Course Intro Start ##### -->
    <div class="single-course-intro d-flex align-items-center justify-content-center" style="background-image: url(../clever-img/bg-img/bg5.jpg);">
        <!-- Content -->
        <div class="single-course-intro-content text-center">
            <!-- Ratings -->
            <a href="#"><img id="profile" src="${photo}" alt="Profile Image" height="50%"width="50%"></a>
            <br/><br/>
            <h3>${con.title}</h3>
            <span style="font-size:1em; color:gray;">${con.id}</span>
            <div class="meta d-flex align-items-center justify-content-center">
            </div>
        </div>
    </div>
    <!-- ##### Single Course Intro End ##### -->

    <!-- ##### Courses Content Start ##### -->
    <div class="single-course-content section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="course--content">

                        <div class="clever-tabs-content">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="tab--1" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false">Itinerary</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="tab--4" data-toggle="tab" href="#tab4" role="tab" aria-controls="tab4" aria-selected="true">Guides</a>
                                </li>
                            </ul>

                            <div class="tab-content" id="myTabContent">
                                <!-- Tab Text -->
                                <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab--1">
                                    <div class="clever-curriculum">

                                        <!-- About Curriculum -->
                                        <div class="about-curriculum mb-30">
                                            <h4> 여행 정보 </h4>
                                            <p>${con.board_content}</p>
                                        </div>

                                        <!-- Curriculum Level -->
                                        <div class="curriculum-level mb-30">
                                            <h4 class="d-flex justify-content-between"><span>여행 지역</span></h4>

                                            <ul class="curriculum-list">
                                                <li><i class="fas fa-map-marked" aria-hidden="true"></i> 지역
                                                    <ul id="tiles">
                                                        <li>

                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <c:if test="${empty member}">
                                       		<sec:authorize access="isAnonymous()">
                                        		
                                        	</sec:authorize>
                                        	<sec:authorize access="isAuthenticated()">
                                        		<c:if test="${userInfo.id eq con.id}">
                                        			<a href="delete.do?no=${con.board_no}&type=${con.board_type}" class="btn clever-btn mb-30 w-100">Delete</a>
                                        		</c:if>
                                        	</sec:authorize>
                                        </c:if>
                                        <c:if test="${!empty member}">
	                               			<c:if test="${member.id eq con.id}">
                                        		<a href="delete.do?no=${con.board_no}&type=${con.board_type}" class="btn clever-btn mb-30 w-100">Delete</a>
                                        	</c:if> 
                        				</c:if>

                                    </div>
                                </div>

                                <!-- Tab Text -->
                                <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="tab--4">
                                    <div class="clever-members">

                                        <!-- About Members -->
                                        <div class="about-members mb-30">
                                            <h4>Guides</h4>
                                            <p>가이드 정보 & 할 말</p>
                                        </div>

                                        <!-- All Members -->
                                        <div class="all-instructors mb-30">
                                            <div class="row">
                                                <!-- Single Members -->
                                                <div class="col-lg-6">
                                                    <div class="single-instructor d-flex align-items-center mb-30">
                                                        <div class="instructor-thumb">
                                                            <img src="../clever-img/bg-img/t1.png" alt="">
                                                        </div>
                                                        <div class="instructor-info">
                                                            <h5>Sarah Parker</h5>
                                                            <span>Guide</span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Single Members -->
                                                <div class="col-lg-6">
                                                    <div class="single-instructor d-flex align-items-center mb-30">
                                                        <div class="instructor-thumb">
                                                            <img src="../clever-img/bg-img/t2.png" alt="">
                                                        </div>
                                                        <div class="instructor-info">
                                                            <h5>Sarah Parker</h5>
                                                            <span>Guide</span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Single Members -->
                                                <div class="col-lg-6">
                                                    <div class="single-instructor d-flex align-items-center mb-30">
                                                        <div class="instructor-thumb">
                                                            <img src="../clever-img/bg-img/t3.png" alt="">
                                                        </div>
                                                        <div class="instructor-info">
                                                            <h5>Sarah Parker</h5>
                                                            <span>Guide</span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Single Members -->
                                                <div class="col-lg-6">
                                                    <div class="single-instructor d-flex align-items-center mb-30">
                                                        <div class="instructor-thumb">
                                                            <img src="../clever-img/bg-img/t4.png" alt="">
                                                        </div>
                                                        <div class="instructor-info">
                                                            <h5>Sarah Parker</h5>
                                                            <span>Guide</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="course-sidebar">
                        <!-- Buy Course -->
                        <c:if test="${empty member}">
                        	<sec:authorize access="isAnonymous()"> 
                        		<input type="button" onclick="alarm();" class="btn clever-btn mb-30 w-100" value="1:1 Counseling"/>
                        	</sec:authorize>
                        	<sec:authorize access="isAuthenticated()">
                        	<c:if test="${userInfo.id ne con.id}">
                        		<input type="button" onclick="showPopup('${con.id}');" class="btn clever-btn mb-30 w-100" value="1:1 Counseling"/>
                        	</c:if>
                        	</sec:authorize>
						</c:if>
						<c:if test="${!empty member}">
						<c:if test="${member.id ne con.id}">
                        	<input type="button" onclick="showPopup('${con.id}');" class="btn clever-btn mb-30 w-100" value="1:1 Counseling"/>
						</c:if>
						</c:if>

                        <!-- Widget -->
                        <div class="sidebar-widget">
                            <h4>가이드 투어 계획</h4>
                            <ul class="features-list">
                                <li>
                                    <h6><i class="fa fa-calendar" aria-hidden="true"></i> 여행시작 일자 </h6>
                                    <h6>${con.start_date}</h6>
                                </li>
                                <li>
                                    <h6><i class="fa fa-calendar" aria-hidden="true"></i> 여행마지막 일자 </h6>
                                    <h6>${con.end_date}</h6>
                                </li>
                                <li>
                                    <h6><i class="fa fa-clock-o" aria-hidden="true"></i> 투어시간  </h6>
                                    <h6> ${con.company} Hour</h6>
                                </li>
                                <li>
                                    <h6><i class="fa fa-bell" aria-hidden="true"></i> 지역 </h6>
                                    <h6> ${con.region} </h6>
                                </li>
                                <li>
                                    <h6><i class="fa fa-file" aria-hidden="true"></i> 희망 모집인원</h6>
                                    <h6> ${con.tour_time} 명</h6>
                                </li>
                                <li>
                                    <h6><i class="fa fa-money-bill" aria-hidden="true"></i> 예상경비(1인)</h6>
                                    <h6>${con.budget} 원</h6>
                                </li>
                            </ul>
                        </div>
                        
                        <!-- Widget -->
                        <div class="sidebar-widget">
                            <div class="map_wrap">
		    					<div id="map" style="width:100%;height:350px;"></div>
		    				</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Courses Content End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <!-- Top Footer Area -->
        <div class="top-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Footer Logo -->
                        <div class="footer-logo">
                        </div>
                        <!-- Copywrite -->
                        <p><a href="#"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area End ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="../clever-js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="../clever-js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="../clever-js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="../clever-js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="../clever-js/active.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2d15fd5bf26911082d79838012f46ad9&libraries=services"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2d15fd5bf26911082d79838012f46ad9"></script>
    <script type="text/javascript">
    function alarm(){
        alert("Please login and use it.");
     }
     var winRef;
	 function showPopup(id) { 
		if(winRef == null){//처음팝업
			console.log("showPopup1");
  	  	 	winRef = window.open("doA?id="+id, "채팅창", "width=600, height=400, left=100, top=50");
		}else{
	        if (winRef.closed == false) { //팝업이 닫히지 않았다면
	        	console.log("showPopup2");
	            winRef.focus();
	        }else{//팝업이 닫혔다면
	        	console.log("showPopup3");
	        	winRef = window.open("doA?id="+id, "채팅창", "width=600, height=400, left=100, top=50");
	        }
	    }
  	  }
    
	var loc = "${con.board_no}";
	var mapContainer;
	var map;
	var geocoder = new daum.maps.services.Geocoder();
	var $tiles = $('#tiles');
	var num;
	console.log(loc);
	(function ($){
		$.ajax({
  		  type: 'post',
  		  url: "location.do?no="+loc,
  		  dataType:"json",
  		  contentType:'application/json;charset=UTF-8',
  		  
  		  success:function(data){
  			  var json = {list:data};
  			  mapContainer = document.getElementById('map'), // 지도를 표시할 div 
  		      mapOption = { 
  		          center: new daum.maps.LatLng(json.list[0].data.LOCATION_JB, json.list[0].data.LOCATION_IB), // 지도의 중심좌표
  		          level: 9 // 지도의 확대 레벨
  		      };
  			  // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
  			  map = new daum.maps.Map(mapContainer, mapOption);
  			  
  			for(var i = 0; i<json.list.length; i++){
  				var marker = new daum.maps.Marker({
  					map: map,
  					position: new daum.maps.LatLng(json.list[i].data.LOCATION_JB, json.list[i].data.LOCATION_IB)
  				});
  			num=i;
  			
				searchDetailAddrFromCoords(new daum.maps.LatLng(json.list[i].data.LOCATION_JB, json.list[i].data.LOCATION_IB), function(result, status) {
			       if (status === daum.maps.services.Status.OK) {
			           var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
			           detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
			           
			           var content = '<div class="bAddr">' +
			                           '<span class="title">법정동 주소정보</span>' + 
			                           detailAddr + 
			                       '</div>';
					   console.log(json.list[num].data.LOCATION_JB, json.list[num].data.LOCATION_IB);
					   $tiles.append("<li>"+
							   		"<span><i class=\"fas fa-map-marker-alt\" aria-hidden=\"true\"></i> 관광지 : <span>"+
							   		"<a href=\"http://map.daum.net/link/map/"+json.list[num].data.LOCATION_JB+","+json.list[num].data.LOCATION_IB+"\" target=\"_blank\" class=\"link\">"+
							   		result[0].address.address_name+
							   		"</a>"+
							   		"</span></span>"+
							   		"<span><i class=\"fa fa-clock-o\" aria-hidden=\"true\"></i></span>"+
							   		"</li>");
			       }   
  			    });
  			}
  		}
  	  });
	})(jQuery);
	function searchDetailAddrFromCoords(coords, callback) {
	    // 좌표로 행정동 주소 정보를 요청합니다
		geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}
	 
    </script>
</body>

</html>