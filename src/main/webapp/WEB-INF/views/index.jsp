<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" %>
<%@ page import="com.cndy.tt.member.Member" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *Must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>TourTogether</title>

    <!-- Favicon -->
    <link rel="icon" href="clever-img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="clever/style.css">
    
    <style>
	    p{
			text-align: center;
		}
    </style>
    
    <script type="text/javascript">
/*     function getCookie(name){    
    	var wcname = name + '=';
    	var wcstart, wcend, end;
    	var i = 0;    

    	  while(i <= document.cookie.length) {            
    	  	wcstart = i;  
    		wcend   = (i + wcname.length);            
    		if(document.cookie.substring(wcstart, wcend) == wcname) {                    
    			if((end = document.cookie.indexOf(';', wcend)) == -1)                           
    				end = document.cookie.length;                    
    			return document.cookie.substring(wcend, end);            
    	  	}            

    		i = document.cookie.indexOf('', i) + 1;            
    	  
    	  	if(i == 0)                    
    			break;    
    	  }    
    	  return '';
    }  */
    
    //if(getCookie('popupNotice') != 'popup') {
	       //var notice = "${notice.title}";
	       //if(notice != ""){
	          window.open('./popupNotice.do','','width=500,height=600,top=0,left=0');   
	       //}else if(notice == ""){
	         // window.close();
	       //}
	  //}
    </script>

</head>
<%
	Member member = (Member)session.getAttribute("member");
	System.out.println(" [index.jsp] member: "+ member);
%>
<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="spinner"></div>
    </div>

    <!-- ##### Header Area Start ##### -->
	<%@include file="include2/navybar3.jsp"%>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Hero Area Start ##### -->
    <!-- NEW -->
    <section class="hero-area bg-img bg-overlay-2by5" style="background-image: url(clever-img/bg-img/indexbg.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <!-- Hero Content -->
                    <div class="hero-content text-center">
                        <h2>Let's go on a trip together</h2>
                        <!-- NEW -->
                        <a href="board/board.do?type=10" class="btn clever-btn">I NEED TOUR GUIDE</a>
                        <a href="board/board.do?type=20" class="btn clever-btn">I NEED TOURIST</a>
                        <a href="diary/list.do" class="btn clever-btn">TOUR DIARY</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Cool Facts Area Start ##### -->
    <section class="cool-facts-area section-padding-100-0">
        <div class="container">
            <div class="row">
                <!-- Single Cool Facts Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-facts-area text-center mb-100 wow fadeInUp" data-wow-delay="250ms">
                        <div class="icon">
                            <img src="clever-img/core-img/docs.png" alt="">
                        </div>
                        <h2><span class="counter">${countInfo.touristCount}</span></h2>
                        <h5>Tourist posts</h5>
                    </div>
                </div>

                <!-- Single Cool Facts Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-facts-area text-center mb-100 wow fadeInUp" data-wow-delay="500ms">
                        <div class="icon">
                            <img src="clever-img/core-img/star.png" alt="">
                        </div>
                        <h2><span class="counter">${countInfo.guideCount}</span></h2>
                        <h5>Guide posts</h5>
                    </div>
                </div>

                <!-- Single Cool Facts Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-facts-area text-center mb-100 wow fadeInUp" data-wow-delay="750ms">
                        <div class="icon">
                            <img src="clever-img/core-img/events.png" alt="">
                        </div>
                        <h2><span class="counter">${countInfo.thisMonthCount}</span></h2>
                        <h5>this month</h5>
                    </div>
                </div>

                <!-- Single Cool Facts Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-facts-area text-center mb-100 wow fadeInUp" data-wow-delay="1000ms">
                        <div class="icon">
                            <img src="clever-img/core-img/earth.png" alt="">
                        </div>
                        <h2><span class="counter">${countInfo.thisWeekCount}</span></h2>
                        <h5>this week</h5>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Cool Facts Area End ##### -->

     <!-- ##### Popular Courses Start ##### -->
    <section class="popular-courses-area section-padding-100-0" style="background-image: url(clever-img/core-img/texture.png);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h3> <span id="aboutus"> About Us </span> </h3> 
                    </div>
                </div>
            </div>
        </div>
            <p><span id="aboutus"><img src="images/aboutus.png" width="1000px" height="800px" alt="introduction"></span></p>
            <br/><br/><br/><br/><br/>            		
    </section>
    <!-- ##### Popular Courses End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <!-- Top Footer Area -->
        <div class="top-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">

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
    <script src="clever-js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="clever-js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="clever-js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="clever-js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="clever-js/active.js"></script>
    
</body>
</html>