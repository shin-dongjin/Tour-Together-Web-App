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
    <title>Clever - Education &amp; Courses Template | Courses</title>

    <!-- Favicon -->
    <link rel="icon" href="../clever-img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" href="../clever/style.css">
    <!-- Search area css-->
	<link rel="stylesheet" href="../resources/search/search.css">
	<!-- Korean font css -->
	<link rel="stylesheet" href="../resources/css/ko-fonts/all.css">
	
<style>
#acenter{
    width: 100px;
    height: 100px;
    position: absolute;
    left: 0;
    right: 0;
    margin: auto;
}

/* CodePen demo */
/* body {
  background: #2a2a2b;
  color: #fff;
  text-align: center;
  font-family: Arial, Helvetica;
} */

.big {
  font-size: 1.2em;
}

/* Custom dropdown */
.custom-dropdown {
  position: relative;
  display: inline-block;
  vertical-align: middle;
  margin: 10px; /* demo only */
}

.custom-dropdown select {
font-family: Arial, Helvetica;
  background-color: #dee2e2;
  color: #000;
  font-size: inherit;
  padding: .5em;
  padding-right: 2.5em; 
  border: 0;
  margin: 0;
  border-radius: 3px;
  text-indent: 0.01px;
  text-overflow: '';
  -webkit-appearance: button; /* hide default arrow in chrome OSX */
}

.custom-dropdown::before,
.custom-dropdown::after {
  content: "";
  position: absolute;
  pointer-events: none;
}

.custom-dropdown::after { /*  Custom dropdown arrow */
  content: "\25BC";
  height: 1em;
  font-size: .625em;
  line-height: 1;
  right: 1.2em;
  top: 50%;
  margin-top: -.5em;
}

.custom-dropdown::before { /*  Custom dropdown arrow cover */
  width: 2em;
  right: 0;
  top: 0;
  bottom: 0;
  border-radius: 0 3px 3px 0;
}

.custom-dropdown select[disabled] {
  color: rgba(0,0,0,.3);
}

.custom-dropdown select[disabled]::after {
  color: rgba(0,0,0,.1);
}

.custom-dropdown::before {
  background-color: rgba(0,0,0,.15);
}

.custom-dropdown::after {
  color: rgba(0,0,0,.4);
}
</style>
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
                <li class="breadcrumb-item"><a href="#">Board</a></li>
                <li class="breadcrumb-item active" aria-current="page">Tour &amp; Board</li>
            </ol>
        </nav>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area bg-img bg-overlay-2by5" style="background-image: url(../clever-img/bg-img/bg6.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <!-- Hero Content -->
                    <div class="hero-content text-center">
                        <c:choose>
			        		<c:when test="${10 eq param.type}">
			        			<h2>GUIDE</h2>
			        			<c:if test="${empty member}">
 									<sec:authorize access="isAnonymous()">   
			        					<input type="button" onclick="alarm();" class="btn clever-btn" value="Write Your Guide">
			        				</sec:authorize>
			        				<sec:authorize access="isAuthenticated()">
			        					<a href="region.do?type=10" class="btn clever-btn">Write Your Guide</a>
			        				</sec:authorize>
			        			</c:if>
			        			<c:if test="${!empty member}">
                        			<a href="region.do?type=10" class="btn clever-btn">Write Your Guide</a>
								</c:if>
			        		</c:when>
			        		<c:when test="${20 eq param.type}">
			        			<h2>Tour List</h2>
			        			<c:if test="${empty member}">
 									<sec:authorize access="isAnonymous()">   
 										<input type="button" onclick="alarm();" class="btn clever-btn" value="Write Your Tour">
			        				</sec:authorize>
			        				<sec:authorize access="isAuthenticated()">
			        					<a href="region.do?type=20" class="btn clever-btn">Write Your Tour</a>
			        				</sec:authorize>
			        			</c:if>
			        			<c:if test="${!empty member}">
                        			<a href="region.do?type=20" class="btn clever-btn">Write Your Tour</a>
								</c:if>
			        		</c:when>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->
    <style>
.out {
 width: 100%;
 text-align: center;
 }
.in {
 display: inline-block;
 }

 </style>
    <form action="searchBoard.do" method="post" id="searchForm">	
   		<div class='out'>
	 	   <div class='left in'>
				<span class="custom-dropdown big">
				    <select name="searchOpt" id="searchOpt">   
						<option value="title" <c:if test="${ 'title' == searchOpt }"> selected </c:if>>제목</option>
						<option value="email" <c:if test="${ 'email' == searchOpt }"> selected </c:if>>작성자</option>
						<option value="board_type" <c:if test="${ 'board_type' == searchOpt }"> selected </c:if>>글타입</option>
						<option value="region" <c:if test="${ 'region' == searchOpt }"> selected </c:if>>지역</option>
						<option value="write_date" <c:if test="${ 'write_date' == searchOpt }"> selected </c:if>>게시날짜</option>
				    </select>
				</span>
				<input type='hidden' name='type' value='${type}'>
			</div>
			<div class='in'>
				<div class="search">
				  <input type="search" id="keyword" name='keyword' class="search-box" value="${keyword}" onkeypress="if( event.keyCode==13 ){document.getElementById('searchForm').submit();}">
				  <span class="search-button">
				    <span class="search-icon"></span>
				  </span>
				</div>
			</div>
		</div>
	</form>	

    <!-- ##### Popular Course Area Start ##### -->
    <section class="popular-courses-area section-padding-100">
        <div class="container">
            <div id="tiles" class="row">
           		<c:forEach var="list" items="${list}">
                 <!-- Single Popular Course -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="350ms">
                        <c:choose>
			        		<c:when test="${'지역' eq list.region}">
			        			<img src="resources/board/images/jegudo.jpg" width="282" height="200" alt="">
			        		</c:when>
			        		<c:when test="${null eq list.photo_path}">
			        			<img src="resources/board/images/${list.region}.jpg" width="282" height="200" alt="">
			        		</c:when>
			        		<c:otherwise>
			        			<img src="${list.photo_path}" width="282" height="200" alt="">
			        		</c:otherwise>
			        	</c:choose>
                        <!-- Course Content -->
                        <div class="course-content">
                            <h4>${list.title}</h4>
                            <div class="meta d-flex align-items-center">
                                <a href="#">${list.id}</a>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <a href="#">${list.region}</a>
                            </div>
                            <div class="meta d-flex align-items-center">
                                <span style="font-size:0.8em; color:gray;">${list.start_date}</span>
			        			<span style="font-size:0.8em; color:gray;">~ ${list.end_date}</span>
			        			<fmt:parseDate var="startDate_D"  value="${list.start_date}" pattern="yyyy-MM-dd"/>
								<fmt:parseDate var="endDate_D" value="${list.end_date}"  pattern="yyyy-MM-dd"/>
								<fmt:parseNumber var="strDate" value="${startDate_D.time / (1000*60*60*24)}" integerOnly="true" />
								<fmt:parseNumber var="endDate" value="${endDate_D.time / (1000*60*60*24)}" integerOnly="true" /> 
								<span style="font-size:0.8em; color:gray;">(${endDate - strDate+1}일)</span>
                            </div>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                
                            </div>
                            <div class="course-fee h-100">
                                <a href="content.do?no=${list.board_no}">Click</a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>

            </div>
           </div>
    </section>
    <!-- ##### Popular Course Area End ##### -->

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
    <!-- Search area js -->
    <script src="../resources/search/search.js"></script>
  		<!----wookmark-scripts---->
    <script src="resources/board/js/jquery.imagesloaded.js"></script>
    <script src="resources/board/js/jquery.wookmark.js"></script>
    <script type="text/javascript">
    function alarm(){
        alert("Please login to use it.");
     }
	 	 function show (id) { 
    	   // var pop_title = "http://10.10.10.175:3000";
    	    
    	  	window.open("doA?id="+id, "채팅창", "width=600, height=400, left=100, top=50");
		  //var frmData = document.chatid;
		  //frmData.target = pop_title;
		  //frmData.submit();
    	  }
	    (function ($){
	      var $tiles = $('#tiles'),
	          $handler = $('div', $tiles),
	          $main = $('#main'),
	          $window = $(window),
	          $document = $(document),
	          $i = 19;
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
	          $handler = $('div', $tiles);
	          $handler.wookmark(options);
	        });
	      }
	      /**
	       * When scrolled all the way to the bottom, add more tiles
	       */
	       
	      function search(f){
	    	  if(f.keyCode ==13){
	    		  formname.submit();
	    	  }
	      }
	      
	      function onScroll() {
	        // Check if we're within 100 pixels of the bottom edge of the broser window.
	        var winHeight = window.innerHeight ? window.innerHeight : $window.height(), // iphone fix
	            closeToBottom = ($window.scrollTop() + winHeight > $document.height() - 100);
	        
	        <%-- 
	        var url = "search.do?page="+$i+"&type="+<%= request.getParameter("type") %>;
	        
	        if($("#keyword").val() != null){
	        	url = "search.do?page="+$i+"&type="+<%= request.getParameter("type") %>+"&keyword="+$("#keyword").val()+"&searchOpt="+$("#searchOpt").val();
	        } 
	        --%>
	        var keyword = '${keyword}';
	        var type = 1 * ${type};//곱해서 Number타입으로 자동형변환
	        var url = "search.do?page="+$i+"&type="+type+"&keyword="+keyword+"&searchOpt="+$("#searchOpt").val();
	        
	        if (closeToBottom) {
	          // Get the first then items from the grid, clone them, and add them to the bottom of the grid
	          var $items = $('div', $tiles)
	             // $firstTen = $items.slice(0, 10);
	        	  if($i!=$j){
	        		  $j=$i;
		          	$.ajax({
		        		  type: 'post',
		        		  url: url,
		        		  dataType:"json",
		        		  contentType:'application/json;charset=UTF-8',
		        		  
		        		  success:function(data){
		        			  var json = {list:data};
		        			  console.log("page를 늘림");
		        			  console.log(json);
		        			  for(var i=0; i<json.list.length; i++){
		        				  var obj = json.list[i].data;
		        				  var date1 = new Date(obj.start_date);
		        				  var date2 = new Date(obj.end_date);
		        				  var date3 = date2-date1;
		        				  var photo = obj.photo_path;
		        				  if(photo==null){
		        					  photo = "resources/board/images/"+obj.region+".jpg";
		        				  }
			        			  $tiles.append("<div class=\"col-12 col-md-6 col-lg-4\">"
			    		        		  +"<div class=\"single-popular-course mb-100 wow fadeInUp\" data-wow-delay=\"750ms\">"
			    		        		  +"<img src=\""+photo+"\" width=\"282\" height=\"200\" alt=\"\">"
			    		        		  +"<div class=\"course-content\">"
			    		        		  +"<h4>"+obj.title+"</h4>"
			    		        		  +"<div class=\"meta d-flex align-items-center\">"
			    		        		  +"<a href=\"#\">"+obj.id+"</a>"
			    		        		  +"<span><i class=\"fa fa-circle\" aria-hidden=\"true\"></i></span>"
			    		        		  +"<a href=\"#\">"+obj.region+"</a>"
			    		        		  +"</div>"
			    		        		  +"<div class=\"meta d-flex align-items-center\">"
			    		        		  +"<span style=\"font-size:0.8em; color:gray;\">"+obj.start_date+"</span>"
			    		        		  +"<span style=\"font-size:0.8em; color:gray;\">~ "+obj.end_date+"</span>"
			    		        		  +"<span style=\"font-size:0.8em; color:gray;\">("+(parseInt(date3/(24*60*60*1000))+1)+"일)</span>"
			    		        		  +"</div>"
			    		        		  +"</div>"
			    		        		  +"<div class=\"seat-rating-fee d-flex justify-content-between\">"
			    		        		  +"<div class=\"seat-rating h-100 d-flex align-items-center\">"
			    		        		  +"<div class=\"seat\">"
			    		        		  +"<i class=\"fa fa-user\" aria-hidden=\"true\"></i>"+obj.read_count
			    		        		  +"</div>"
			    		        		  +"<div class=\"rating\">"
			    		        		  +"<i class=\"fa fa-star\" aria-hidden=\"true\"></i> 4.5"
			    		        		  +"</div>"
			    		        		  +"</div>"
			    		        		  +"<div class=\"course-fee h-100\">"
			    		        		  +"<a href=\"content.do?no="+obj.board_no+"\">Click</a>"
			    		        		  +"</div>"
			    		        		  +"</div>"
			    		        		  +"</div>"
			    		        		  +"</div>"
			        			  );
			        			  $i=$i+1;
		        			  }
		        		  },
		        	  	  
		        		  error : function(request,status,error){
		        	  		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
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
	    
	    
	    /* JS for demo only */
	    var colors = ['1abc9c', '2c3e50', '2980b9', '7f8c8d', 'f1c40f', 'd35400', '27ae60'];

	    colors.each(function (color) {
	      $$('.color-picker')[0].insert(
	        '<div class="square" style="background: #' + color + '"></div>'
	      );
	    });

	    $$('.color-picker')[0].on('click', '.square', function(event, square) {
	      background = square.getStyle('background');
	      $$('.custom-dropdown select').each(function (dropdown) {
	        dropdown.setStyle({'background' : background});
	      });
	    });

	    /*
	     * Original version at
	     * http://red-team-design.com/making-html-dropdowns-not-suck
	     */
	  </script>

</body>

</html>

