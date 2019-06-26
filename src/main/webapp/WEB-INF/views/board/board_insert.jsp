<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>좌표로 주소를 얻어내기</title>
	<link href="resources/board/css/map_style.css" rel="stylesheet" type="text/css">
</head>
	<body style="overflow-x:hidden; overflow-y:hidden;">
		<div class="map_wrap">
		    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
		
		    <div id="menu_wrap" class="bg_white">
		        <div class="option">
		            <div>
						<h1><p align="center">  여행 목록   </p></h2>
		            </div>
		        </div>
		        <hr>
		        <ul id="placesList"></ul>
		        <div id="pagination"></div>
		    </div>
		    
		    <!-- 지도타입 컨트롤 div 입니다 -->
		    <div class="custom_typecontrol radius_border">
		        <span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">지도</span>
		        <span id="btnSkyview" class="btn" onclick="setMapType('skyview')">스카이뷰</span>
		    </div>
    		<!-- 지도 확대, 축소 컨트롤 div 입니다 -->
		    <div class="custom_zoomcontrol radius_border"> 
		        <span onclick="zoomIn()"><img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대"></span>  
		        <span onclick="zoomOut()"><img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"></span>
		    </div>
		    <div class="marker radius_border">
		    	<span onclick="mark_set()"><img id="marker_img" src="images/marker_image2.png" alt="마커"></span>
		    </div>
		    <div class="save radius_border">
		    	<span onclick="next()"><img id="detail" src="images/detail.png" alt="상세정보"></span>
		    </div>
		    
		    <ul id="category">
		        <li id="AD5" data-order="0"> 
		            <span class="category_bg bank"></span>
		            	숙박
		        </li>       
		        <li id="FD6" data-order="1"> 
		            <span class="category_bg mart"></span>
		       		         음식점
		        </li>  
		        <li id="CE7" data-order="2"> 
		            <span class="category_bg cafe"></span>
		           	         카페
		        </li>  
		        <li id="SW8" data-order="3"> 
		            <span class="category_bg oil"></span>
		            	지하철역
		        </li>  
		        <li id="AT4" data-order="4"> 
		            <span class="category_bg cafe"></span>
		            	관광명소
		        </li>  
		        <li id="CT1" data-order="5"> 
		            <span class="category_bg store"></span>
		           	         문화시설<%session.getAttribute("position"); %>
		        </li>      
    	</ul>
		     
		</div>

		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2d15fd5bf26911082d79838012f46ad9&libraries=services"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2d15fd5bf26911082d79838012f46ad9"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="resources/board/js/board.script.js"></script>
	</body>
</html>