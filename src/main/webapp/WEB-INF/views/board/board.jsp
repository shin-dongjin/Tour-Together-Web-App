<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Pinball Website Template | Home :: w3layouts</title>
		<link href="resources/board/css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="images/fav-icon.png" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<!-- Global CSS for the page and tiles -->
  		<link rel="stylesheet" href="resources/board/css/main.css">
  		<!-- //Global CSS for the page and tiles -->
		<!---start-click-drop-down-menu----->
		<script src="resources/board/js/jquery.min.js"></script>
        <!----start-dropdown--->
         <script type="text/javascript">
			var $ = jQuery.noConflict();
				$(function() {
					$('#activator').click(function(){
						$('#box').animate({'top':'0px'},500);
					});
					$('#boxclose').click(function(){
					$('#box').animate({'top':'-700px'},500);
					});
				});
				$(document).ready(function(){
				//Hide (Collapse) the toggle containers on load
				$(".toggle_container").hide(); 
				//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
				$(".trigger").click(function(){
					$(this).toggleClass("active").next().slideToggle("slow");
						return false; //Prevent the browser jump to the link anchor
				});
									
			});
		</script>
        <!----//End-dropdown--->
		<!---//End-click-drop-down-menu----->
	</head>
	<body>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" title="pinbal" /></a>
				</div>
				<div class="nav-icon">
					 <a href="#" class="right_bt" id="activator"><span> </span> </a>
				</div>
				 <div class="box" id="box">
					 <div class="box_content">        					                         
						<div class="box_content_center">
						 	<div class="form_content">
								<div class="menu_box_list">
									<ul>
										<li><a href="#"><span>home</span></a></li>
										<li><a href="#"><span>About</span></a></li>
										<li><a href="#"><span>Works</span></a></li>
										<li><a href="#"><span>Clients</span></a></li>
										<li><a href="#"><span>Blog</span></a></li>
										<li><a href="contact.html"><span>Contact</span></a></li>
										<div class="clear"> </div>
									</ul>
								</div>
								<a class="boxclose" id="boxclose"> <span> </span></a>
							</div>                                  
						</div> 	
					</div> 
				</div>       	  
				<div class="top-searchbar">
					<form>
						<input type="text" /><input type="submit" value="" />
					</form>
				</div>
				<div class="userinfo">
					<div class="user">
						<ul>
							<li><a href="#"><img src="images/user-pic.png" title="user-name" /><span>Ipsum</span></a></li>
						</ul>
					</div>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		<!---//End-header---->
		<!---start-content---->
		<div class="content">
			<div class="wrap">
			 <div id="main" role="main">
			      <ul id="tiles">
			      
			        <!-- These are our grid blocks -->
			        <c:forEach var="list" items="${list}">
			        <li>
			        <a href="sample.jsp"/>
			        	<c:choose>
			        		<c:when test="${'지역' eq list.region}">
			        			<img src="resources/board/images/jegudo.jpg" width="282" height="200">
			        		</c:when>
			        		<c:when test="${'null' eq list.photo_path}">
			        			<img src="resources/board/images/${list.region}.jpg" width="282" height="200">
			        		</c:when>
			        		<c:otherwise>
			        			<img src="${list.photo_path}" width="282" height="200">
			        		</c:otherwise>
			        	</c:choose>
			        	<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="content.do?no=${list.board_no}">${list.title}</a></h3>
				        		<span><a href="content.do?no=${list.board_no}"><label> </label>${list.region}</a></span>
				        		<p><input type="submit" value="팝업창 호출" onclick="showPopup(104687663793205);" /></p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<span style="font-size:0.8em; color:gray;"> &nbsp&nbsp${list.start_date}</span>
			        			<span style="font-size:0.8em; color:gray;">~ ${list.end_date}</span>
			        			<fmt:parseDate var="startDate_D"  value="${list.start_date}" pattern="yyyy-MM-dd"/>
								<fmt:parseDate var="endDate_D" value="${list.end_date}"  pattern="yyyy-MM-dd"/>
 
								<fmt:parseNumber var="strDate" value="${startDate_D.time / (1000*60*60*24)}" integerOnly="true" />
								<fmt:parseNumber var="endDate" value="${endDate_D.time / (1000*60*60*24)}" integerOnly="true" /> 
								
								<span style="font-size:0.8em; color:gray;">(${endDate - strDate+1}일)</span>
			        			<div class="post-share">
			        				<span><a href="#"></a></span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
			        </li>
			        </c:forEach>
			        <!-- End of grid blocks -->
			      </ul>
			    </div>
			</div>
		</div>
		<!---//End-content---->
		<!----wookmark-scripts---->
		  <script src="resources/board/js/jquery.imagesloaded.js"></script>
		  <script src="resources/board/js/jquery.wookmark.js"></script>
		  <script type="text/javascript">
		 	 function showPopup(id) { 
	    	   // var pop_title = "http://10.10.10.175:3000";
	    	    
	    	  	window.open("doA?id="+id, "채팅창", "width=600, height=400, left=100, top=50");
//	     	  	var frmData = document.chatid;
//	     	  	frmData.target = pop_title;
//	     	  	frmData.submit();
	    	  }
		    (function ($){
		      var $tiles = $('#tiles'),
		          $handler = $('li', $tiles),
		          $main = $('#main'),
		          $window = $(window),
		          $document = $(document),
		          $i = 1;
		      	  $j = 0;
		          options = {
		            autoResize: true, // This will auto-update the layout when the browser window is resized.
		            container: $main, // Optional, used for some extra CSS styling
		            offset: 20, // Optional, the distance between grid items
		            itemWidth:280 // Optional, the width of a grid item
		          };
		      /**
		       * Reinitializes the wookmark handler after all images have loaded
		       */
		      function applyLayout() {
		        $tiles.imagesLoaded(function() {
		          // Destroy the old handler
		          if ($handler.wookmarkInstance) {
		            $handler.wookmarkInstance.clear();
		          }
		
		          // Create a new layout handler.
		          $handler = $('li', $tiles);
		          $handler.wookmark(options);
		        });
		      }
		      /**
		       * When scrolled all the way to the bottom, add more tiles
		       */
		      function onScroll() {
		        // Check if we're within 100 pixels of the bottom edge of the broser window.
		        var winHeight = window.innerHeight ? window.innerHeight : $window.height(), // iphone fix
		            closeToBottom = ($window.scrollTop() + winHeight > $document.height() - 100);
		
		        if (closeToBottom) {
		          // Get the first then items from the grid, clone them, and add them to the bottom of the grid
		          var $items = $('li', $tiles)
		             // $firstTen = $items.slice(0, 10);
		        	  if($i!=$j){
		        		  $j=$i;
			          	$.ajax({
			        		  type: 'post',
			        		  url: "search.do?page="+$i,
			        		  dataType:"json",
			        		  contentType:'application/json;charset=UTF-8',
			        		  
			        		  success:function(data){
			        			  var json = {list:data};
			        			  console.log(json);
			        			  for(var i=0; i<json.list.length; i++){
			        				  var obj = json.list[i].data;
			        				  var date1 = new Date(obj.start_date);
			        				  var date2 = new Date(obj.end_date);
			        				  var date3 = date2-date1;
			        				  var region = obj.region;
			        				  if(region=="지역"){
			        					  region = 'jegudo';
			        				  }
				        			  $tiles.append("<li>"
				    		        		  +"<a href=\"sample.jsp\"/>"
				    		        		  +"<img src=resources/board/images/"+region+".jpg width=282 height=118>"
				    		        		  +"<div class=\"post-info\">"
				    		        		  +"<div class=\"post-basic-info\">"
				    		        		  +"<h3><a href=\"#\">"+obj.title+"</a></h3>"
				    		        		  +"<span><a href=\"#\"><label> </label>"+obj.region+"</a></span>"
				    		        		  +"<p>"+obj.board_content+"</p>"
				    		        		  +"</div>"
				    		        		  +"<div class=\"post-info-rate-share\">"
				    		        		  +"<span style=\"font-size:0.8em; color:gray;\"> &nbsp&nbsp"+obj.start_date+"</span>"
				    		        		  +"<span style=\"font-size:0.8em; color:gray;\">~ "+obj.end_date+"</span>"
				    		        		  +"<span style=\"font-size:0.8em; color:gray;\">("+(parseInt(date3/(24*60*60*1000))+1)+"일)</span>"
				    		        		  +"<div class=\"post-share\">"
				    		        		  +"<span> </span>"
				    		        		  +"</div>"
				    		        		  +"<div class=\"clear\"> </div>"
				    		        		  +"</div>"
				    		        		  +"</div>"
				    		        		  +"</li>");
				        			  $i=$i+1;
			        			  }
			        		  },
			        	  	  
			        		  error : function(request,status,error){
			        	  		//alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			        	  		$tiles.append(request.responseText);
			        	  	  }
			        	  });
		        	  }
		          	
		//스크립트에 DB 불러오기
		          applyLayout();
		        }
		      };
		
		      // Call the layout function for the first time
		      applyLayout();
		
		      // Capture scroll event.
		      $window.bind('scroll.wookmark', onScroll);
		    })(jQuery);
		  </script>
		<!----//wookmark-scripts---->
		<!----start-footer--->
		<div class="footer">
			<p>Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
		<!----//End-footer--->
		<!---//End-wrap---->
	</body>
</html>

