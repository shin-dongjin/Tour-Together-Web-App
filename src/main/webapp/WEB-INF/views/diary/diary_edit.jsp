<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>
<html>
<head>
	<title>TITLE</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	
	<!-- include libraries(jQuery, bootstrap) --> 
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
 	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
	
	<!-- autocomplete + modal css-->
	<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
	<style>
		.ui-autocomplete { 
			position: absolute;
			z-index: 12000;/* 이거로 오토컴플릿 안가리고 보이게 할수있다고함- 나중에 하기*/
		    overflow-y: scroll; 
		    overflow-x: hidden;
		}
	</style>
	
	<!-- Stylesheets -->
	<link href="common-css/bootstrap.css" rel="stylesheet">
	<link href="common-css/ionicons.css" rel="stylesheet">
	<link href="single-post-2/css/styles.css" rel="stylesheet">
	<link href="single-post-2/css/responsive.css" rel="stylesheet">	 
	<link href="single-post-2/css/form.css" rel="stylesheet">
	
	<!-- SCIPTS -->
<!-- 	<script src="common-js/jquery-3.1.1.min.js"></script> -->
	<script src="common-js/tether.min.js"></script>
	<script src="single-post-2/js/form.js"></script>
<!-- 	<script src="common-js/bootstrap.js"></script>
	<script src="common-js/scripts.js"></script> -->
	<!-- include summernote css/js -->
	<link href="summernote/summernote.css" rel="stylesheet">

	<!-- Clever CSS -->
  	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
	<link rel="stylesheet" href="../clever/style.css">

	<style>
#zindex{
	margin-top:10px;
}
</style>
	<script>
		function submitContent(){
			document.input.submit();
		}
		
		/* summernote script */
		/* jQuery.noConflict(); */
	    $(document).ready(function() {
	        $('#summernote').summernote({
	        	height: 400,
	        	minHeight: null,         
	            maxHeight: null,
	 	        lang : 'ko-KR',
	 	        callbacks: {
					onImageUpload: function(files, editor, welEditable) {			            
			            for(var i=0; i<files.length; i++){
			            	sendFile(files[i], editor, welEditable);
			            }	
			        },
			        
			        // TODO 이미지 지우기
			        onMediaDelete: function(target){
			        	console.log(target[0].src);
			        	deleteFile(target[0]);
			        }
				} 
	        });
	    });
		
		function sendFile(file, editor, welEditable){
        	data = new FormData();
        	data.append("file", file);
        	var $note = $(this);
        	$.ajax({
        		data: data,
        		type: 'POST',
        		url: "fileUpload.do",
        		cache: false,
        		contentType: false,
        		processData: false,
        		enctype: "multipart/form-data",
        		success: function(url){
        			alert(url);
        			$('#summernote').summernote('insertImage', url);
        		}
        	});
		}
		
		function deleteFile(src){
			$.ajax({
				data: {src: src},
				type: 'POST',
				url: myUrl,
				cache: false,
				success: function(resp){
					console.log(resp);
				}
			});
		}
	</script>
</head>

<body>

	<!-- header -->
	<%@include file="../include2/navybar4.jsp"%>

    <!-- ##### Catagory Area Start ##### -->
    <div class="clever-catagory blog-details bg-img d-flex align-items-center justify-content-center p-3 height-400" style="background-image: url(../clever-img/blog-img/7.jpg);">
        <div class="blog-details-headline">
            <h3>Express your feelings about your trip</h3>
            <div class="meta d-flex align-items-center justify-content-center">
                <a href="#">우우우우우</a>
                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                <a href="#">아아 &amp; 오오오</a>
            </div>
        </div>
    </div>
    <!-- ##### Catagory Area End ##### -->
	
	<section class="post-area">
		<div class="container">

			<div class="row">
				<div class="col-lg-1 col-md-0"></div>
				<div class="col-lg-10 col-md-12">
					<div id="zindex" class="main-post">
							<!-- content -->
							<c:forEach items="${ diary }" var="diary">
							<form name="input" method="post" action="edit.do" enctype="multipart/form-data">
						<div class="post-top-area-x">

								<input type="hidden" name="diary_no" value=${diary.diary_no }>

							  <span class="input">
							    <input type="text" class="input__field" id="input-1" name="title" value=${diary.title } autofocus>
							    <label for="input-1" class="input__label">
							      <span class="input__label-content">제목</span>
							  </label>
							  </span>
							
							  <span class="input">
							    <input type="text" class="input__field" id="input-2" name="email" value=${ diary.email }>
							    <label for="input-2" class="input__label">
							      <span class="input__label-content">글쓴이</span>
							    </label>
							  </span>
							
							  <span class="input">
							    <input type="text" class="input__field" id="input-3" name="region" value=${ diary.region }>
							    <label for="input-3" class="input__label">
							      <span class="input__label-content">지역</span>
							    </label>
							  </span>
							
							  <span class="input">
							    <input type="text" class="input__field" id="input-4" name="company" value=${ diary.company }>
							    <label for="input-4" class="input__label">
							      <span class="input__label-content">동행자</span>
							    </label>
							  </span>
							  <!-- summernote -->
							  <span class="input message">
							    <textarea class="input__field" id="summernote" name="diary_content">${ diary.diary_content }</textarea>
							    <!-- <label for="input-5" class="input__label">
							      <span class="input__label-content">Message</span>
							    </label> -->
							  </span><!-- summernote -->
							  	
							  <button id="send-button" type="button" onclick="submitContent()">Edit</button>	
							
	
	   					</div>
	   					</form>
	   					</c:forEach>
				    </div>

				</div><!-- col-sm-8 col-sm-offset-2 -->
			</div><!-- row -->

		</div><!-- container -->
	</section><!-- section -->


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
    <script src="../js/bootstrap/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
    <script src="../js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="../js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="../js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="../js/plugins/active.js"></script>
	<!-- Summernote js -->
	<script src="summernote/summernote.js"></script>
	<script src="summernote/lang/summernote-ko-KR.js"></script>
	<!-- Autocomplete-UI js -->
	<script	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
	<!-- Autocomplete js http://api.jqueryui.com/autocomplete/ -->
	<script type="text/javascript">
	$(document).ready(function() {
		$("#input-4").autocomplete({
			source : function(request, response) {
	
				$.ajax({
					url : "../member/autocomplete",//Specifies the URL to send the request to.
					type : "post",
					dataType : "json",//The data type expected of the server response.
					data: request,//Specifies data to be sent to the server
	
					success : function(data) {
						var result = data;
						response(result);
					},
					error : function(data) {//request fails
						alert("에러가 발생하였습니다.")
					}
				});
			}
		});
	});
	</script>

</body>
</html>
