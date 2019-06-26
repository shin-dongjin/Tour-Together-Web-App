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

	<!-- paging css  -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" href="../clever/style.css">
    <!-- Search area css-->
	<link rel="stylesheet" href="../resources/search/search.css">
	
<style>
#acenter{
    width: 100px;
    height: 100px;
    position: absolute;
    left: 0;
    right: 0;
    margin: auto;
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
                        <h2>Tour &amp; Diary</h2>
                        
                        <c:choose>
                           <c:when test="${empty member}">
                              <sec:authorize access="isAnonymous()">   
                                 <input type="button" onclick="alarm();" class="btn clever-btn"value="Write a diary">
                        	  </sec:authorize>
                          
                              <sec:authorize access="isAuthenticated()">
                                 <c:if test='${userInfo.enabled eq false}'>
                                    <input type="button" onclick="checkEnabled()" class="btn clever-btn" value="Write a diary">
                                 </c:if>
                                 <c:if test="${userInfo.enabled ne false}">
                                    <a href="<c:url value="write.do" />" class="btn clever-btn">Write a diary</a>
                                 </c:if>
                             </sec:authorize> 
                             </c:when>
                             <c:otherwise>
                                 <c:if test="${member.enabled eq false}">
                                   <input type="button" onclick="checkEnabled()" class="btn clever-btn" value="Write a diary">
                                </c:if>
                                <c:if test="${member.enabled ne false}">
                                   <a href="write.do" class="btn clever-btn">Write a diary</a>
                                </c:if>
                             </c:otherwise>
                        </c:choose>
                       	
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
    
	<div class="search">
	  <input type="search" id="keyword" class="search-box" value="" />
	  <span class="search-button">
	    <span class="search-icon"></span>
	  </span>
	</div>
	 
    <br/><br/>
		<div id="container"></div>
	<br/><br/>
<%

%>
<!-- ##### Popular Course Area Start ##### -->
    <section class="popular-courses-area section-padding-100">
        <div class="container">
            <div class="row">
           		
           		<c:forEach items="${list}" var="data">
                <!-- Single Popular Course -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="250ms">
                        	
			           		<c:choose>
			           			<c:when test="${i eq null}">
			           				<c:set var="img" value="../clever-img/bg-img/c1.jpg"/>
			           			</c:when>
			           			<c:when test="${i eq 1}">
			           				<c:set var="img" value="../clever-img/bg-img/c2.jpg"/>
			           			</c:when>
			           			<c:when test="${i eq 2}">
			           				<c:set var="img" value="../clever-img/bg-img/c3.jpg"/>
			           			</c:when>
			           			<c:when test="${i eq 3}">
			           				<c:set var="img" value="../clever-img/bg-img/c4.jpg"/>
			           			</c:when>
			           			<c:when test="${i eq 4}">
			           				<c:set var="img" value="../clever-img/bg-img/c5.jpg"/>
			           			</c:when>
			           			<c:when test="${i eq 5}">
			           				<c:set var="img" value="../clever-img/bg-img/c6.jpg"/>
			           			</c:when>
			           			<c:when test="${i eq 6}">
			           				<c:set var="img" value="../clever-img/bg-img/c7.jpg"/>
			           			</c:when>
			           			<c:when test="${i eq 7}">
			           				<c:set var="img" value="../clever-img/bg-img/c8.jpg"/>
			           			</c:when>
			           			<c:otherwise>
			           				<c:set var="img" value="../clever-img/bg-img/c9.jpg"/>
			           			</c:otherwise>
			           		</c:choose>
           			
                        	<img src="${img}" alt="">
                        	<c:set var="i" value="${i+1}"/>
                        	<c:if test="i eq 10">
                        		<c:set var="i" value="1"/>
                        	</c:if>
                        	
                        <!-- Course Content -->
                        <div class="course-content">
                        	<a href='content.do?diary_no=${data.diary_no}&index=${pagingVo.index}'>
                            <h4>${data.title}</h4></a>
                            <div class="meta d-flex align-items-center">
                                <a href="#">${ data.email }</a>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <a href="#">${data.region}</a>
                            </div>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <i class="fa fa-heart" aria-hidden="true"></i> ${ data.user_like }
                                </div>
                                <div class="rating">
                                    <i class="far fa-eye" aria-hidden="true"></i> ${data.count_read}
                                </div>
                            </div>
                            <div class="course-fee h-100">
                                <a href='content.do?diary_no=${data.diary_no}&index=${pagingVo.index}'>Click</a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>

            </div>

            <div id="acenter" class="row">
                <div class="col-12">
                    <div class="load-more text-center wow fadeInUp" data-wow-delay="1000ms">
                        <!-- paging view -->	
						<ul id="paging" class="pagination">
							<c:if test="${pagingVo.pageStartNum ne 1}">
								<!--맨 첫페이지 이동 -->
								<li><a onclick='pagePre(${pagingVo.pageCnt+1},${pagingVo.pageCnt});'>&laquo;</a></li>
								<!--이전 페이지 이동 -->
								<li><a onclick='pagePre(${pagingVo.pageStartNum},${pagingVo.pageCnt});'>&lsaquo;</a></li>
							</c:if>
							
							<!--페이지번호 -->
							<c:forEach var='i' begin="${pagingVo.pageStartNum}" end="${pagingVo.pageLastNum}" step="1">
								<li class='pageIndex${i}'><a onclick='pageIndex(${i});'>${i}</a></li>
							</c:forEach>
							
							<c:if test="${pagingVo.lastChk}">
								<!--다음 페이지 이동 -->
								<li><a onclick='pageNext(${pagingVo.pageStartNum},${pagingVo.total},${pagingVo.listCnt},${pagingVo.pageCnt});'>&rsaquo;</a></li>
								<!--마지막 페이지 이동 -->
								<li><a onclick='pageLast(${pagingVo.pageStartNum},${pagingVo.total},${pagingVo.listCnt},${pagingVo.pageCnt});'>&raquo;</a></li>
							</c:if>
						</ul>
				  	    <form action="./list.do" method="post" id='frmPaging'>
							<!--출력할 페이지번호, 출력할 페이지 시작 번호, 출력할 리스트 갯수 -->
							<input type='hidden' name='index' id='index' value='${pagingVo.index}'>
							<input type='hidden' name='pageStartNum' id='pageStartNum' value='${pagingVo.pageStartNum}'>
							<input type='hidden' name='listCnt' id='listCnt' value='${pagingVo.listCnt}'>	
						</form>
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
    <!-- Paging js -->
    <script type="text/javascript" src="../js/paging.js"></script>
    <!-- Search area css -->
    <script src="../resources/search/search.js"></script>
    <!-- Searching AJAX -->
   	<script type="text/javascript">
    function alarm(){
        alert("Please login to use it.");
     }
    
   	$(document).ready(function(){
   		if($("#keyword").val()){//검색 키워드가 존재할 때 AJAX처리해서 검색결과 도출(컨텐츠에서 뒤로가기 등의 상황)
   			console.log("keyword 존재 OOOOOOOOOOOOOOO");
   			ajaxAct();
   		}
   	});
	$(document).ready(function(){
		//$("#searchOk01").bind("click",function(){
		$("#keyword").keypress(function(event){
			if(event.keyCode == 13){//엔터키를 누를 때만 수행
				//alert("event.keyCode "+ event.keyCode);
			    ajaxAct();
			 }
		});
	});
	function ajaxAct() {
		$.ajax({
	        url : "list2.do",
	        type: "get",
	        data : { "keyword" : $("#keyword").val(), 
	        		 "index" : $("#index").val(), 
	        		 "pageStartNum" : $("#pageStartNum").val(),
	        		 "total" : $("#total").val(),
	        		 "listCnt" : $("#listCnt").val(),
	        		 "pageCnt" : $("#pageCnt").val()
	        },
	        success : function(responseData){
	        	var clone = $('#acenter').clone(true);
	        	$("#sect").remove();
	            //alert("responseData: "+ responseData.length);
	            if(responseData.list.length == 0){
	                return false;
	            }
	            //var data = JSON.parse(responseData);
	            //alert("pageLastNum: "+ responseData.pagingVo.pageLastNum+" "+typeof responseData.pagingVo.pageLastNum);
	            var html = "";
	            html += "<section id='sect' class='popular-courses-area section-padding-100'><div class='container'><div class='row'>"
	            if(responseData.length != 0){
		            for (var i=0; i<responseData.list.length; i++) {
		            	//alert(data[i].seq+", "+data[i].name+", "+data[i].addr+", "+data[i].rdate);
		            	html += "<div class='col-12 col-md-6 col-lg-4'>";
		            	html += "	<div class='single-popular-course mb-100 wow fadeInUp' data-wow-delay='250ms'>";
		            	html += "		<img src='../clever-img/bg-img/c1.jpg' alt=''>";
		            	html += "		<div class='course-content'>";
		            	html += "			<a href='content.do?diary_no="+responseData.list[i].diary_no+"&index="+responseData.pagingVo.index+"'>";
		            	html += "			<h4>"+responseData.list[i].title+"</h4></a>";
		            	html += "			<div class='meta d-flex align-items-center'>";
		            	html += "				<a href='#'>"+responseData.list[i].email+"</a>";
		            	html += "				<span><i class='fa fa-circle' aria-hidden='true'></i></span>";
		            	html += "				<a href='#'>Tourist</a>";
		            	html += "			</div>";
		            	html += "			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla, mollis eu metus in, sagittis</p>";
		            	html += "		</div>";
		            	html += "		<div class='seat-rating-fee d-flex justify-content-between'>";
		            	html += "			<div class='seat-rating h-100 d-flex align-items-center'>";
		            	html += "				<div class='seat'>";
		            	html += "					<i class='fa fa-heart' aria-hidden='true'></i> 10";
		            	html += "				</div>";
		            	html += "				<div class='rating'>";
		            	html += "					<i class='far fa-comment' aria-hidden='true'></i> 4.5";
		            	html += "				</div>";
		            	html += "				<div class='rating'>";
		            	html += "					<i class='far fa-eye' aria-hidden='true'></i> 4.5";
		            	html += "				</div>";
		            	html += "			</div>";
		            	html += "			<div class='course-fee h-100'>";
		            	html += "					<a href='content.do?diary_no="+responseData.list[i].diary_no+"&index="+responseData.pagingVo.index+"'>Click</a>";
		            	html += "			</div>";
		            	html += "		</div>";
		            	html += "	</div>";
		            	html += "</div>";
		            }
		            html += "</div>";
		            html += "<div id='acenter' class='row'>";
		            html += "	<div class='col-12'>";
		            html += "		<div class='load-more text-center wow fadeInUp' data-wow-delay='1000ms'>";
		            html += "			<ul id='paging' class='pagination'>";
		            if(responseData.pagingVo.pageStartNum > 1){
						console.log("pageStartNum: "+responseData.pagingVo.pageStartNum);	
						console.log("total: "+responseData.pagingVo.total);
						console.log("listCnt: "+responseData.pagingVo.listCnt);
						console.log("pageCnt: "+responseData.pagingVo.pageCnt);
		            html += "					<li><a onclick='pagePre("+responseData.pagingVo.pageCnt+1+","+responseData.pagingVo.pageCnt+");'>&laquo;</a></li>";
		            html += "					<li><a onclick='pagePre("+responseData.pagingVo.pageStartNum+","+responseData.pagingVo.pageCnt+");'>&lsaquo;</a></li>";
		            }
		            for(var i= responseData.pagingVo.pageStartNum ; i<=responseData.pagingVo.pageLastNum ; i++){
			            html += "					<li class='pageIndex"+i+"'><a onclick='pageIndex("+i+");'>"+i+"</a></li>";
			        }
		            if(responseData.pagingVo.lastChk){
		            html += "					<li><a onclick='pageNext("+responseData.pagingVo.pageStartNum+","+responseData.pagingVo.total+","+responseData.pagingVo.listCnt+","+responseData.pagingVo.pageCnt+");'>&rsaquo;</a></li>";
		            html += "					<li><a onclick='pageLast("+responseData.pagingVo.pageStartNum+","+responseData.pagingVo.total+","+responseData.pagingVo.listCnt+","+responseData.pagingVo.pageCnt+");'>&raquo;</a></li>";
		            }
		            html += "			</ul>";
		            html += "			<form action='./paging.do' method='post' id='frmPaging'>";
		            html += "				<input type='hidden' name='index' id='index' value='"+responseData.pagingVo.index+"'>";
		            html += "				<input type='hidden' name='pageStartNum' id='pageStartNum' value='"+responseData.pagingVo.pageStartNum+"'>";
		            html += "				<input type='hidden' name='listCnt' id='listCnt' value='"+responseData.pagingVo.listCnt+"'>	";
		            html += "				<input type='hidden' name='keyword' id='keyword' value='"+$("#keyword").val()+"'>	";
		            html += "			</form>";
		            html += "		</div>";
		            html += "	</div>";
		            html += "</div>";
		            html += "</div></section>";
	            }else{
	            	html += "<tr>";
	            	html += "<td colspan='4' align='center'>조회된 결과가 없습니다.</td>";
	                html += "</tr>";
	            }
	            $("#container").after(html);
	            
	   			// 현재번호 active
	   			console.log("index출력전");
	   			var index = document.getElementById("index").value;
	   			console.log("index: "+index);
	   			var pageIndex = document.querySelector('.pageIndex'+(Number(index)+1));
	   			console.log("pageIndex 확인: "+ index+1 );
	   			pageIndex.setAttribute("class", "active");
	   			// 리스트갯수 selected 처리
	   			$("#listCount > option").each(function () {
	   				if ($(this).val() == $('#listCnt').val()) {
	   					$(this).prop("selected", true);
	   				}
	   			});
	        }
	    });
	}
	
    function checkEnabled(){
        alert("Unfortunately, you won't be able to access your account at the momont. Please contact the website administrator to solve this problem.");       
      }
	</script>
</body>

</html>