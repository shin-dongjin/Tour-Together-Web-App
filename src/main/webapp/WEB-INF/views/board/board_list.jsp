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
                <li class="breadcrumb-item active" aria-current="page">Tour &amp; Diary</li>
            </ol>
        </nav>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area bg-img bg-overlay-2by5" style="background-image: url(../clever-img/bg-img/bg2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <!-- Hero Content -->
                    <div class="hero-content text-center">
                        <h2>Tour &amp; Board</h2>
                        <a href="../board/form.do" class="btn clever-btn">Write a board</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Catagory ##### -->
<!--     <div class="clever-catagory bg-img d-flex align-items-center justify-content-center p-3" style="background-image: url(../clever-img/bg-img/bg2.jpg);">
                    <div class="hero-content text-center">
                        <h1>Tour &amp; Diary</h1>
                        <a href="#" class="btn clever-btn">Get Started</a>
                    </div>
    </div> -->

    <!-- ##### Popular Course Area Start ##### -->
    <section class="popular-courses-area section-padding-100">
        <div class="container">
            <div class="row">
           		<c:forEach items="${list}" var="data">
                <!-- Single Popular Course -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="250ms">
                        <img src="../clever-img/bg-img/c1.jpg" alt="">
                        <!-- Course Content -->
                        <div class="course-content">
                        	<a href='content.do?diary_no=${data.diary_no}&index=${pagingVo.index}'>
                            <h4>${data.title}</h4></a>
                            <div class="meta d-flex align-items-center">
                                <a href="#">Sarah Parker</a>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <a href="#">Tourist</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla, mollis eu metus in, sagittis</p>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <i class="fa fa-heart" aria-hidden="true"></i> 10
                                </div>
                                <div class="rating">
                                    <i class="far fa-comment" aria-hidden="true"></i> 4.5
                                </div>
                                <div class="rating">
                                    <i class="far fa-eye" aria-hidden="true"></i> 4.5
                                </div>
                            </div>
                            <div class="course-fee h-100">
                                <a href='content.do?diary_no=${data.diary_no}&index=${pagingVo.index}'>Click</a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>

                <!-- Single Popular Course -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="500ms">
                        <img src="../clever-img/bg-img/c2.jpg" alt="">
                        <!-- Course Content -->
                        <div class="course-content">
                            <h4>Vocabulary</h4>
                            <div class="meta d-flex align-items-center">
                                <a href="#">Sarah Parker</a>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <a href="#">Art &amp; Design</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla, mollis eu metus in, sagittis</p>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <i class="fa fa-user" aria-hidden="true"></i> 10
                                </div>
                                <div class="rating">
                                    <i class="fa fa-star" aria-hidden="true"></i> 4.5
                                </div>
                            </div>
                            <div class="course-fee h-100">
                                <a href="#">Click</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Popular Course -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="750ms">
                        <img src="../clever-img/bg-img/c3.jpg" alt="">
                        <!-- Course Content -->
                        <div class="course-content">
                            <h4>Expository writing</h4>
                            <div class="meta d-flex align-items-center">
                                <a href="#">Sarah Parker</a>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <a href="#">Art &amp; Design</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla, mollis eu metus in, sagittis</p>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <i class="fa fa-user" aria-hidden="true"></i> 10
                                </div>
                                <div class="rating">
                                    <i class="fa fa-star" aria-hidden="true"></i> 4.5
                                </div>
                            </div>
                            <div class="course-fee h-100">
                                <a href="#">Click</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Popular Course -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="250ms">
                        <img src="../clever-img/bg-img/c4.jpg" alt="">
                        <!-- Course Content -->
                        <div class="course-content">
                            <h4>Vocabulary</h4>
                            <div class="meta d-flex align-items-center">
                                <a href="#">Sarah Parker</a>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <a href="#">Art &amp; Design</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla, mollis eu metus in, sagittis</p>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <i class="fa fa-user" aria-hidden="true"></i> 10
                                </div>
                                <div class="rating">
                                    <i class="fa fa-star" aria-hidden="true"></i> 4.5
                                </div>
                            </div>
                            <div class="course-fee h-100">
                                <a href="#">Click</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Popular Course -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="500ms">
                        <img src="../clever-img/bg-img/c5.jpg" alt="">
                        <!-- Course Content -->
                        <div class="course-content">
                            <h4>English Grammer</h4>
                            <div class="meta d-flex align-items-center">
                                <a href="#">Sarah Parker</a>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <a href="#">Art &amp; Design</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla, mollis eu metus in, sagittis</p>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <i class="fa fa-user" aria-hidden="true"></i> 10
                                </div>
                                <div class="rating">
                                    <i class="fa fa-star" aria-hidden="true"></i> 4.5
                                </div>
                            </div>
                            <div class="course-fee h-100">
                                <a href="#" class="free">Click</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Popular Course -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="750ms">
                        <img src="../clever-img/bg-img/c6.jpg" alt="">
                        <!-- Course Content -->
                        <div class="course-content">
                            <h4>Expository writing</h4>
                            <div class="meta d-flex align-items-center">
                                <a href="#">Sarah Parker</a>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <a href="#">Art &amp; Design</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla, mollis eu metus in, sagittis</p>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <i class="fa fa-user" aria-hidden="true"></i> 10
                                </div>
                                <div class="rating">
                                    <i class="fa fa-star" aria-hidden="true"></i> 4.5
                                </div>
                            </div>
                            <div class="course-fee h-100">
                                <a href="#">Click</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Popular Course -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="250ms">
                        <img src="../clever-img/bg-img/c7.jpg" alt="">
                        <!-- Course Content -->
                        <div class="course-content">
                            <h4>English Grammer</h4>
                            <div class="meta d-flex align-items-center">
                                <a href="#">Sarah Parker</a>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <a href="#">Art &amp; Design</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla, mollis eu metus in, sagittis</p>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <i class="fa fa-user" aria-hidden="true"></i> 10
                                </div>
                                <div class="rating">
                                    <i class="fa fa-star" aria-hidden="true"></i> 4.5
                                </div>
                            </div>
                            <div class="course-fee h-100">
                                <a href="#" class="free">Click</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Popular Course -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="500ms">
                        <img src="../clever-img/bg-img/c8.jpg" alt="">
                        <!-- Course Content -->
                        <div class="course-content">
                            <h4>Vocabulary</h4>
                            <div class="meta d-flex align-items-center">
                                <a href="#">Sarah Parker</a>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <a href="#">Art &amp; Design</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla, mollis eu metus in, sagittis</p>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <i class="fa fa-user" aria-hidden="true"></i> 10
                                </div>
                                <div class="rating">
                                    <i class="fa fa-star" aria-hidden="true"></i> 4.5
                                </div>
                            </div>
                            <div class="course-fee h-100">
                                <a href="#">Click</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Popular Course -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="750ms">
                        <img src="../clever-img/bg-img/c9.jpg" alt="">
                        <!-- Course Content -->
                        <div class="course-content">
                            <h4>Expository writing</h4>
                            <div class="meta d-flex align-items-center">
                                <a href="#">Sarah Parker</a>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <a href="#">Art &amp; Design</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla, mollis eu metus in, sagittis</p>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <i class="fa fa-user" aria-hidden="true"></i> 10
                                </div>
                                <div class="rating">
                                    <i class="fa fa-star" aria-hidden="true"></i> 4.5
                                </div>
                            </div>
                            <div class="course-fee h-100">
                                <a href="#">Click</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="load-more text-center wow fadeInUp" data-wow-delay="1000ms">
                        <a href="#" class="btn clever-btn btn-2">Load More</a>
                    </div>
                </div>
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
                            <a href="index.html"><img src="../clever-img/core-img/logo2.png" alt=""></a>
                        </div>
                        <!-- Copywrite -->
                        <p><a href="#"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bottom Footer Area -->
        <div class="bottom-footer-area d-flex justify-content-between align-items-center">
            <!-- Contact Info -->
            <div class="contact-info">
                <a href="#"><span>Phone:</span> +44 300 303 0266</a>
                <a href="#"><span>Email:</span> info@clever.com</a>
            </div>
            <!-- Follow Us -->
            <div class="follow-us">
                <span>Follow us</span>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
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
    <!-- Paging js -->
    <script type="text/javascript" src="../js/paging.js"></script>
</body>

</html>