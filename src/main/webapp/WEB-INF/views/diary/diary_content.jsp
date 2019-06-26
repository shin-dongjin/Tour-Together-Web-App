<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>
<html>
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
	<link href="common-css/bootstrap.css" rel="stylesheet">
	<link href="common-css/ionicons.css" rel="stylesheet">
 	<link href="single-post-2/css/styles.css" rel="stylesheet">
	<link href="single-post-2/css/responsive.css" rel="stylesheet"> 

	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
	
	<script type="text/javascript">

		function submitComment(){
			if(document.comment.form_name.value == ""){
				document.comment.form_name.focus();
			}else if(document.comment.form_email.value ==""){
				document.comment.form_email.focus();
			}else if(document.comment.form_comment_content.value==""){
				document.comment.form_comment_content.focus();
			} else{
				document.comment.submit();		
			} 
		}
		
		function replyReady(comment_no, refer, lev, step){	
			//alert('답글');
			document.getElementById("form_comment_no").value = comment_no;
			document.getElementById("form_refer").value = refer;
			document.getElementById("form_lev").value = lev;
			document.getElementById("form_step").value = step;
			document.comment.comment_content.focus();
		}
		
		function loadReply(board_no, refer, comment_no){
	         console.log("board_no: "+board_no + ", refer: "+refer + ", comment_no: "+comment_no);
	         $.ajax({
	            url: "loadReply.do",
	            type: "get",
	            data: { "board_no" : board_no, "refer" : refer },
	            dataType: 'json',
	            contentType: 'application/json;charset=UTF-8',
	            success: function(data){
	               var reply = data[0];
	               var profile = data[1];
	               console.log("data: "+reply[0].comment_no);
	               console.log("profile: "+profile[0].photo_path);
	               
	               var html = "";
	               html += "<hr>";
	               if(data != null){
	                  for(var i=0; i<reply.length; i++){
	                     console.log("reply: "+reply[i].comment_no);
	                     
	                     var comment_profile = "";
	                     for(var j=0; j<profile.length; j++ ){
	                        console.log("comment email: "+reply[i].email);
	                        console.log("profile email: "+profile[j].email);
	                        var comment_email = reply[i].email;
	                        if(profile[j].email == comment_email){
	                           comment_profile = profile[j].photo_path;
	                        }
	                     }
	                     
	                      html += '<div class="comment">';
	                     html += "<div class='post-info'>";
	                     html += '<input type="hidden" name="comment_no" id="comment_no" value="'+ reply[i].comment_no +'">';
	                     html += '<input type="hidden" name="refer" id="refer" value="'+reply[i].refer+'">';
	                     html += "<input type='hidden' name='lev' id='lev' value='"+reply[i].lev+"'>";
	                     html += "<input type='hidden' name='step' id='step' value='"+reply[i].step+"'>";
	                     html += "<div class='left-area'>";
	                     html += '<a class="avatar"><img src="'+comment_profile+'" alt="Profile Image"></a>';
	                     html += "</div>";
	                     html += "<div class='middle-area'>";
	                     html += "<a class='name' name='email'><b>"+reply[i].email+"</b></a>";
	                     html += "<h6 class='date' name='comment_date'>"+reply[i].comment_date+"</h6>";
	                     html += "</div>";
	                     html += "<div class='right-area'>";
	                     html += "<h5 class='reply-btn'><a href='deleteComment.do?comment_no="+ reply[i].comment_no 
	                           +"&board_no="+ reply[i].board_no +"&refer="+reply[i].refer+"&lev="+reply[i].lev+"'><b>delete</b></a></h5>";
	                     html += "</div>";
	                     html += "</div>";
	                     html += "<p name='comment_content'>"+reply[i].comment_content+"</p>";
	                     html += "</div>"; 
	                  }
	               }
	               var replySectionId = "#"+comment_no;
	               $(replySectionId).html(html);
	            }
	         });
	      }
		
		function cancelReply(){
			$('#form_comment_no').val("0");
			$('#form_refer').val("0");
			$('#form_lev').val("0");
			$('#form_step').val("0");
		}
	
	</script>

</head>
<body>

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
                <li class="breadcrumb-item active" aria-current="page">Tour &amp; Diary</li>
            </ol>
        </nav>
    </div>
    <!-- ##### Breadcumb Area End ##### -->	
    
<style>
	#profile{
		border-radius: 30%;
		width: 300px;
		height: 250px;
	}
</style>
 				<!-- 다이어리 내용 출력 -->
				<c:forEach items="${ diary }" var="diary">
					<c:set var="board_no" value="${ diary.diary_no }"/>
					<c:set var="email" value="${diary.email}"/>

    <!-- ##### Catagory Area Start ##### -->
    <div class="clever-catagory blog-details bg-img d-flex align-items-center justify-content-center p-3 height-400" style="background-image: url(../clever-img/blog-img/7.jpg);">
         <div class="blog-details-headline">

         	<h3><img id="profile" src="${content_profile}" alt="Profile Image" height="30%"width="30%"></h3>
            <h3>${ diary.title }</h3>
            <div class="meta d-flex align-items-center justify-content-center">
                <a>${ diary.write_date }</a>
                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                <a>${ diary.region }</a>
                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                <a>Tourist</a>
            </div>
        </div>
    </div>
    <!-- ##### Catagory Area End ##### -->

   <!-- ##### Blog Details Content ##### -->
    <div class="blog-details-content section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <!-- Blog Details Text -->
                    <div class="blog-details-text">
                        <p class="text-right py-1">

								<a id="like" href="<c:url value="like.do?diary_no=${diary.diary_no }"/>"><i class="ion-heart"></i> ${ diary.user_like }</a> 
								<i class="ion-eye"></i> ${ diary.count_read }<br/>
                        		동행자: ${diary.company}<br/> 
								투어 시작날짜: ${diary.start_date}</p>
						<p>
                        <h5 class="py-1">${diary.diary_content}</h5>
                    </div>

					<div class="editdel">
					    <!-- 수정 및 삭제 버튼  -->
	                    <c:choose>
	                      	<c:when test="${empty member}">
	                      		<sec:authorize access="isAuthenticated()">
									<c:if test="${sessionScope.userInfo.email eq diary.email}">
			                        	<a href="edit.do?diary_no=${diary.diary_no }" class="editt">edit</a>
										<a href="delete.do?diary_no=${ diary.diary_no }" class="dell">delete</a>
			                        </c:if>
	               				</sec:authorize>
	                       	</c:when>
	                       	<c:otherwise>
	                       		<c:if test="${sessionScope.member.email eq diary.email}">
		                        	<a href="edit.do?diary_no=${diary.diary_no }" class="editt">edit</a>
									<a href="delete.do?diary_no=${ diary.diary_no }" class="dell">delete</a>
		                        </c:if>
	                       	</c:otherwise>
	                     </c:choose>
					</div>
                </div>
            </div>
        </div>
    </div>
        			</c:forEach><!-- 다이어리 내용 출력 끝 -->
      
	<section class="comment-section center-text">
		<div class="container"><br/>
			<div class="row">

				<div class="col-lg-2 col-md-0"></div>

				<div class="col-lg-8 col-md-12">
    
					<br/><h4><b>COMMENTS</b></h4><br/>
					<!-- commnets-area -->
					<c:forEach items="${ comments }" var="comment">
						<c:set var="comment_no" value="${ comment.comment_no }"/>
						<c:set var="refer" value="${ comment.refer }"/>
						<c:set var="lev" value="${ comment.lev }"/>
						<c:set var="step" value="${ comment.step }"/>
						
						<c:forEach var="profile" items="${profiles}">
							<c:if test="${ profile.email eq comment.email }">
								<c:set var="comment_profile" value="${profile.photo_path}"/>
							</c:if>
						</c:forEach>
						
						<div class="commnets-area text-left">
	
							<div class="comment">
	
								<div class="post-info">
									
									<input type="hidden" name="comment_no" id="comment_no" value="${ comment_no }">
									<input type="hidden" name="refer" id="refer" value="${ refer }">
									<input type="hidden" name="lev" id="lev" value="${ lev }">
									<input type="hidden" name="step" id="step" value="${ step }">
									<div class="left-area">
										<a class="avatar"><img src="${comment_profile}" alt="Profile Image"></a>
									</div>
	
									<div class="middle-area">
										<a class="name" name="email"><b>${ comment.email }</b></a>
										<h6 class="date" name="comment_date">${ comment.comment_date }</h6>
									</div>
	
									<div class="right-area">
										
                    					<c:choose>
				                        	<c:when test="${empty member}">
				                        		<sec:authorize access="isAuthenticated()">
													<h5 class="reply-btn"><a href='javascript:replyReady(${comment_no }, ${refer },${lev },${step })'><b>reply</b></a></h5><br/>
		                        					<c:if test="${sessionScope.userInfo.email eq comment.email}">
		                        						<h5 class="reply-btn"><a href='deleteComment.do?comment_no=${comment_no }&board_no=${ board_no }&refer=${refer}'><b>delete</b></a></h5>
		                        					</c:if>
		                    					</sec:authorize>
				                          	</c:when>
				                          	<c:otherwise>
				                          		<h5 class="reply-btn"><a href='javascript:replyReady(${comment_no }, ${refer },${lev },${step })'><b>reply</b></a></h5><br/>
		                        					<c:if test="${sessionScope.member.email eq comment.email}">
		                        						<h5 class="reply-btn"><a href='deleteComment.do?comment_no=${comment_no }&board_no=${ board_no }&refer=${refer}'><b>delete</b></a></h5>
		                        					</c:if>
				                          	</c:otherwise>
				                        </c:choose>
									
									</div>
	
								</div><!-- post-info -->
	
								<p name="comment_content">${ comment.comment_content }</p>
	
							</div>	
							
							<c:if test="${ lev ne 0 }">		
								<a id="loadReply" href="javascript:loadReply(${ board_no }, ${ refer }, ${comment_no })">more</a>
								<div id='${ comment_no}'></div>				
							</c:if>					
							
						</div>
					</c:forEach>
					
					<c:choose>
                    	<c:when test="${empty member}">
                    		<sec:authorize access="isAuthenticated()">
                         		<c:set var="writer" value="${sessionScope.userInfo.email}"/>
                      		</sec:authorize> 
                      	</c:when>
                      	<c:otherwise>
                      		<c:set var="writer" value="${sessionScope.member.email}"/>
                      	</c:otherwise>
                    </c:choose>
					
					<!-- comment-form -->
					<div class="comment-form">
						<form name="comment" method="post" action='insertComment.do?'>
							<div class="row">
								<input type="hidden" name="comment_no" id="form_comment_no" value="0">
								<input type="hidden" name="board_no" value="${ board_no }">
								<input type="hidden" name="refer" id="form_refer" value="0">
								<input type="hidden" name="lev" id="form_lev" value="0">
								<input type="hidden" name="step" id="form_step" value="0">
								
<%-- 								<div class="col-sm-6">
									<input type="text" aria-required="true" name="name" id="form_name" class="form-control"
										value="${name}" aria-required="true" disabled >
								</div><!-- col-sm-6 --> --%>
								
								<div class="col-sm-6">
									<input type="email" aria-required="true" name="email" id="form_email" class="form-control"
										value="${writer}" aria-invalid="true" disabled>
								</div><!-- col-sm-6 -->

								<div class="col-sm-12">
									<textarea name="comment_content" rows="2" id="form_comment_content" class="text-area-messge form-control"
										placeholder="Enter your comment" aria-required="true" required></textarea >
								</div><!-- col-sm-12 -->
								
								<div class="col-sm-12">
									<c:choose>
				                    	<c:when test="${empty member}">
				                    		<sec:authorize access="isAuthenticated()">
				                         		<button class="submit-btn" onclick="submitComment()"><b>확인</b></button>
				                      		</sec:authorize> 
				                      	</c:when>
				                      	<c:otherwise>
				                      		<button class="submit-btn" onclick="submitComment()"><b>확인</b></button>
				                      	</c:otherwise>
				                    </c:choose>
				                    &emsp;&emsp;
								</div><!-- col-sm-12 -->

							</div><!-- row -->
						</form>
					</div>

				</div><!-- col-lg-8 col-md-12 -->
			</div><!-- row -->

		</div><!-- container -->
	</section>

<%@include file="../include2/footer3.jsp"%>

</body>
</html>
