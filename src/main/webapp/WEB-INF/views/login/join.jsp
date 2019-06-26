<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Join Page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="../resources/login/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="../resources/login/css/main.css">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" href="../clever/style.css">
</head>
<body onload="document.input.id.focus();">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-90 p-b-30">
			
				<form name="input" action="insert.do" method="POST" class="login100-form validate-form">
				
					<div class="text-center p-t-55 p-b-30">
						<span class="login100-form-title p-b-40">
							<h1 class="w3layouts_head">
								<input id="file" type="file" style="display:none;"/>
								<img img id="file_button" src="../resources/board/images/photo450.png" alt="Profile Image" height="60%"width="60%">
							</h1>
						</span>
						Profile Picture
					</div>
					* Essential Information
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter ID">
						<input class="input100" type="text" id="id" name="id" placeholder="*ID" required>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-20" data-validate = "Please enter password">
						<span class="btn-show-pass">
							<i class="fa fa fa-eye"></i>
						</span>
						<input class="input100" type="password" id="password" name="password" placeholder="*Password" required>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter your first name">
						<input class="input100" type="text" id="first_name" name="first_name" placeholder="*First name" required>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter your last name">
						<input class="input100" type="text" id="last_name" name="last_name" placeholder="*Last name" required>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter email: ex@abc.xyz" required>
						<input class="input100" type="email" id="email" name="email" placeholder="*Email">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter phone number">
						<input class="input100" type="text" id="telephone" name="telephone" placeholder="Phone number">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" >
						<input type="hidden" id="country">
						<select class="input100" name="country">
								<option value="none" selected="" disabled="">Country</option>
								<option value="Australia">Australia</option> 
								<option value="Austria">Austria</option> 
								<option value="Belgium">Belgium</option> 
								<option value="Bolivia">Bolivia</option> 
								<option value="Brazil">Brazil</option> 
								<option value="Bulgaria">Bulgaria</option> 
								<option value="Canada">Canada</option> 
								<option value="Chile">Chile</option> 
								<option value="China">China</option> 
								<option value="Christmas Island">Christmas Island</option> 
								<option value="Colombia">Colombia</option> 
								<option value="Congo">Congo</option> 
								<option value="Croatia">Croatia</option> 
								<option value="Cuba">Cuba</option> 
								<option value="Denmark">Denmark</option> 
								<option value="Egypt">Egypt</option> 
								<option value="Estonia">Estonia</option> 
								<option value="Ethiopia">Ethiopia</option> 
								<option value="Finland">Finland</option> 
								<option value="France">France</option> 
								<option value="Germany">Germany</option> 
								<option value="Ghana">Ghana</option> 
								<option value="Greece">Greece</option> 
								<option value="Haiti">Haiti</option> 
								<option value="Hong Kong">Hong Kong</option> 
								<option value="Hungary">Hungary</option> 
								<option value="Iceland">Iceland</option> 
								<option value="India">India</option> 
								<option value="Indonesia">Indonesia</option> 
								<option value="Iraq">Iraq</option> 
								<option value="Israel">Israel</option> 
								<option value="Italy">Italy</option> 
								<option value="Jamaica">Jamaica</option> 
								<option value="Japan">Japan</option> 
								<option value="Jordan">Jordan</option> 
								<option value="Kenya">Kenya</option> 
								<option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option> 
								<option value="Korea, Republic of">Korea, Republic of</option> 
								<option value="Lebanon">Lebanon</option> 
								<option value="Malaysia">Malaysia</option> 
								<option value="Mexico">Mexico</option> 
								<option value="Monaco">Monaco</option> 
								<option value="Morocco">Morocco</option> 
								<option value="Nepal">Nepal</option> 
								<option value="Netherlands">Netherlands</option> 
								<option value="New Zealand">New Zealand</option> 
								<option value="Nigeria">Nigeria</option> 
								<option value="Norway">Norway</option> 
								<option value="Pakistan">Pakistan</option> 
								<option value="Paraguay">Paraguay</option> 
								<option value="Peru">Peru</option> 
								<option value="Poland">Poland</option> 
								<option value="Portugal">Portugal</option> 
								<option value="Romania">Romania</option> 
								<option value="Russian Federation">Russian Federation</option> 
								<option value="Rwanda">Rwanda</option> 
								<option value="Singapore">Singapore</option> 
								<option value="South Africa">South Africa</option> 
								<option value="Spain">Spain</option> 
								<option value="Swaziland">Swaziland</option> 
								<option value="Sweden">Sweden</option> 
								<option value="Switzerland">Switzerland</option> 
								<option value="Thailand">Thailand</option> 
								<option value="Turkey">Turkey</option> 
								<option value="Uganda">Uganda</option> 
								<option value="Ukraine">Ukraine</option> 
								<option value="United States">United States</option> 
								<option value="United Kingdom">United Kingdom</option>
								<option value="Viet Nam">Viet Nam</option> 
								<option value="Yemen">Yemen</option> 
								<option value="Zambia">Zambia</option> 
							</select>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" >
						<input type="hidden" id="gender">
						<select class="input100" name="gender">
								<option value="none" selected="" disabled="">Gender</option>
								<option value="female">Female</option>
								<option value="male">Male</option> 
						</select>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please introduce yourself">
						<input class="input100" type="text" id="intro" name="intro" placeholder="Introduction" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter birthday">
						<input class="input100" id="birthday" name="birthday" type="text" placeholder="Date of birth" readonly>
						<span class="focus-input100"></span>
					</div>
						
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" onclick="checkValue()">
							Join
						</button>
					</div>
					
					<br/>
		               &nbsp;&nbsp;<span class="txt2 p-b-10"> Already have an account? </span> &nbsp;&nbsp;&nbsp;
		               <a href="${pageContext.request.contextPath }/login/login.do" class="txt3 bo1 hov1"> Login now </a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
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
	
	<script src="../resources/login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="../resources/login/vendor/animsition/js/animsition.min.js"></script>
	<script src="../resources/login/vendor/bootstrap/js/popper.js"></script>
	<script src="../resources/login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../resources/login/vendor/select2/select2.min.js"></script>
	<script src="../resources/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="../resources/login/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="../resources/login/vendor/countdowntime/countdowntime.js"></script>
	<script src="../resources/login/js/main.js"></script>
	<script src="../resources/login/js/fblogin.js"></script>
	
		<!-- Calendar -->
		<link rel="stylesheet" href="../resources/join/css/jquery-ui.css" />
			<script src="../resources/join/js/jquery-ui.js"></script>
			<script>
				$(function() {
					$( "#birthday" ).datepicker({
						changeMonth: true,
						changeYear: true,
						yearRange:'-99:+0'
					});
					
				});
			</script>
		<!-- //Calendar -->
		
	<!-- ##### Join Javascript Script ##### -->
	<script language="javascript">
	
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
    	if(files == null){
    		//alert("사진 없음");
    		$('.url').val(null);
    		//document.detail.submit();
    	}else{
	    	//alert("사진을 넣겠습니다.");
	    	data = new FormData();
	    	data.append("file", files);
	    	data.append("email", $('#email').val());
	    	var $note = $(this);
	    	$.ajax({
	    		data: data,
	    		type: 'POST',
	    		url: "proUpload.do",
	    		cache: false,
	    		contentType: false,
	    		processData: false,
	    		enctype: "multipart/form-data",
	    		success: function(url){
	    			$('.url').val(url);
	    			//$('#profile_path').val(url);
	    			//alert(url);
	    			//document.input.submit();
	    		},
	    		
	    		error:function(request,status,error){
	            	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	            }
	    	});
    	}
	}
	
		function checkValue()
		  {
			if(document.input.id.value.length < 5){
	             alert("Id must be over 6 letters");
	             document.getElementById("id").focus();
	            return false;
			}else{
				sendFile();
				document.input.submit();
			}
		  }
	</script>
</body>
</html>