<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" %>
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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
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
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Tour</a></li>
                <li class="breadcrumb-item"><a href="#">Tour &amp; Guide</a></li>
                <li class="breadcrumb-item active" aria-current="page">Tour Content</li>
            </ol>
        </nav>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Single Course Intro Start ##### -->
    <div class="single-course-intro d-flex align-items-center justify-content-center" style="background-image: url(../clever-img/bg-img/bg5.jpg);">
        <!-- Content -->
        
           <div id="fileUpload" class="dragDropDiv">
		   		<!-- multiple attr 가 없다면 단일 이미지만 선택한다. -->
    			<input id="file" type="file" style="display:none;"/>
 				<img id="file_button" src="../resources/board/images/photo450.png" style="width:450px; height:450px"/>
			    <!-- 해당 위치 안에 이미지가 쌓이게 된다. -->
			</div>
        
    </div>
    <!-- ##### Single Course Intro End ##### -->
<style> 
textarea{
    width: 100%;
    height: 150px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    font-size: 16px;
    resize: none;
}
.d_notif {
    width: 100%;
    height: 30px;
    padding: 12px 1px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    font-size: 16px;
    resize: none;
}
</style>
    <!-- ##### Courses Content Start ##### -->
    <div class="single-course-content section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="course--content">

                        <div class="clever-tabs-content">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="tab--1" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false">Tour registration form</a>
                                </li>
                            </ul>

                            <div class="tab-content" id="myTabContent">
                                <!-- Tab Text -->
                                <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab--1">
                                <form name="detail" action="all_insert.do" onsubmit="return false;" method="post">
                                    <div class="clever-description">
										<div class="about-course mb-30">
											<h4>Title</h4>
                                            <h3><input class="d_notif" type="text" name="title" style="width:400px;"/></h3>
                                            <h4>Travel period</h4>
								            <div class="price">
								                <input class="d_notif" type="text" id="start_date" name="start_date" style="width:100px" value="   start date">
								                ~
								                <input class="d_notif" type="text" id="end_date" name="end_date" style="width:100px;" value="   last date">
								            </div>
								            <br/>
								            <div class="price">
								            <h4>Number of people to join &emsp;&emsp;&emsp; Tour time</h4> <input class="d_notif" type="number" name="tour_time" style="width:220px;height:20px">
								            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								            <input class="d_notif" type="number" name="company" style="width:220px;height:20px">
								            </div>
								            <br/>
								            <div class="price">
								            <h4>Budget </h4> <input class="d_notif" type="number" name="budget" style="width:220px;height:20px">
								            </div>
                                        </div>
                                        <!-- About Course -->
                                        <div class="about-course mb-30">
                                            <h4>About this Tour</h4>
                                            <textarea name="board_content" placeholder="brief information on travel."></textarea>
                                        </div>
                                    </div>
                                    <input type="hidden" name="board_type" value="10">
                                    <input type="hidden" class='url' id="photo_path" name="photo_path" value="null">
                              </form>
                                    <div class="clever-curriculum">

                                        <!-- Curriculum Level -->
                                        <div class="curriculum-level mb-30">
                                            <h4 class="d-flex justify-content-between"><span>Travel area</span></h4>			
                                            <ul class="curriculum-list">
                                                <li><i class="fas fa-map-marked" aria-hidden="true"></i> Area
                                                    <ul id="tiles">
                                                       
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    
                                    <div class="clever-members">
                                        <!-- About Members -->

                                    </div>
                                    
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="course-sidebar">
                        <!-- Buy Course -->
                        <a href="#" onclick="next()" class="btn clever-btn mb-30 w-100">Register</a>
                        
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
<!--     <script src="../clever-js/jquery/jquery-2.2.4.min.js"></script> -->
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
	
	var files = null;
    var previewIndex = 0;
	
	$(document).ready(
		    function() {
		        // 태그에 onchange를 부여한다.
		        $('#file').change(function() {
		                addPreview($(this)); //preview form 추가하기
		        });
		    });
		 
		    // image preview 기능 구현
		    // input = file object[]
		    function addPreview(input) {
		        if (input[0].files) {
		            //파일 선택이 여러개였을 시의 대응
		            for (var fileIndex = 0 ; fileIndex < input[0].files.length ; fileIndex++) {
		                var file = input[0].files[fileIndex];
		                var reader = new FileReader();
		 
		                reader.onload = function (img) {
		                    //div id="preview" 내에 동적코드추가.
		                    //이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
// 		                    $("#preview").append(
// 		                        "<img src=\"" + img.target.result + "\"\/>"
// 		                    );
		                	var ext = $("input:file").val().split(".").pop().toLowerCase();
		            		if(ext.length > 0){
		            			if($.inArray(ext, ["gif","png","jpg","jpeg"]) == -1) { 
		            				alert("gif,png,jpg 파일만 업로드 할수 있습니다.");
		            				files=null;
		            				console.log(files);
		            				$("#file_button").attr('src',"../resources/board/images/photo.png");
		            				$()
		            				return false;  
		            			}                  
		            		}
		                	$("#file_button").attr('src',img.target.result);
		                	files = file;
		                	console.log(files);
		                };
		                
		                reader.readAsDataURL(file);
		            }
		        } else alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
		    }
		    
    $( function() {
    	
	  $('#file_button').click(function (e) {
	 	e.preventDefault();
	 	$('#file').click();
	  });
      $( "#start_date" ).datepicker();
      $( "#end_date" ).datepicker();
      
      console.log("autocomplete");
      $("#start_date").autocomplete({
    	  source: function(request, response){
    	  	var date_n = $("#start_date").val();
    	  	console.log(date_n);
    	  }
       });
      
     });
    
    function sendFile(){
    	if(files==null){
    		$('.url').val(null);
    		document.detail.submit();
    	}else{
	    	data = new FormData();
	    	data.append("file", files);
	    	var $note = $(this);
	    	$.ajax({
	    		data: data,
	    		type: 'POST',
	    		url: "ImgUpload.do",
	    		cache: false,
	    		contentType: false,
	    		processData: false,
	    		enctype: "multipart/form-data",
	    		success: function(url){
	    			//$('#photo_path').val(url);
	    			$('.url').val(url);
	    			//alert(url);
	    			document.detail.submit();
	    		},
	    		
	    		error:function(request,status,error){
	            	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	            }
	    	});
    	}
	}
    
    function next(){
    	var dt = new Date();
    	
    	var month = dt.getMonth()+1;
    	var day = dt.getDate();
    	var year = dt.getFullYear();
    	
    	dt=month+"/"+day+"/"+year;
    	dt=new Date(dt);
    	
    	var date = new Date(detail.start_date.value);
    	var end_date = new Date(detail.end_date.value);
    	
    	if(detail.title.value==""){
    		alert("가이드 이름을 입력해주세요");
    		return;
    	}
    	if(date=="Invalid Date"){
    		alert(date);
    		return;
    	}else if(end_date=="Invalid Date"){
    		alert("마지막 날짜를 입력해주세요");
    		return;
    	}else{
    		if(date.getTime()<dt.getTime()){
    			alert("과거여행을 가이드를 하시려면 관리자에게 문의해주세요.");
    			return;
    		}else if(date.getTime()>end_date.getTime()){
    			alert("마지막 날짜가 시작날짜 이전으로 표시되었습니다.");
    			return;
    		}
    	}
    	if(detail.budget.value<0||detail.budget.value==""){
    		alert("가격을 0 이상으로 적어주세요");
    		return;
    	}
    	if(detail.company.value<1||detail.company.value==null){
    		alert("투어리스트 인원을 1명 이상으로 적어주세요 ");
    		return;
    	}
    	if(detail.board_content.value==null||detail.board_content.value=="")
    	{
    		alert("글 내용을 입력해주세요");
    		return;
    	}
    	if(detail.tour_time.value<0||detail.tour_time.value==""){
    		alert("투어 시간을 입력해주세요");
    		return;
    	}
    	sendFile();
    }
    
    var loc = <%=session.getAttribute("position")%>;
    
    console.log(loc);
    
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(loc[0].jb, loc[0].ib), // 지도의 중심좌표
        level: 8 // 지도의 확대 레벨
    };

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new daum.maps.Map(mapContainer, mapOption);
	
	var geocoder = new daum.maps.services.Geocoder();
	var $tiles = $('#tiles');
	var num;

	for(var i = 0; i<loc.length; i++){
		var marker = new daum.maps.Marker({
			map: map,
			position: new daum.maps.LatLng(loc[i].jb, loc[i].ib)
		});
	num=i;
	
		searchDetailAddrFromCoords(new daum.maps.LatLng(loc[i].jb, loc[i].ib), function(result, status) {
	       if (status === daum.maps.services.Status.OK) {
	           var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
	           detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
	           
	           var content = '<div class="bAddr">' +
	                           '<span class="title">법정동 주소정보</span>' + 
	                           detailAddr + 
	                       '</div>';
			   console.log(loc[num].jb);
			   $tiles.append("<li>"+
					   		"<span><i class=\"fas fa-map-marker-alt\" aria-hidden=\"true\"></i> A tourist spot : <span>"+
					   		"<a href=\"http://map.daum.net/link/map/"+loc[num].jb+","+loc[num].ib+"\" target=\"_blank\" class=\"link\">"+
					   		result[0].address.address_name+
					   		"</a>"+
					   		"</span></span>"+
					   		"<span><i class=\"fa fa-clock-o\" aria-hidden=\"true\"></i></span>"+
					   		"</li>");
	       }   
	    });
	}
	
	function searchDetailAddrFromCoords(coords, callback) {
	    // 좌표로 행정동 주소 정보를 요청합니다
		geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}
	
    </script>
</body>

</html>