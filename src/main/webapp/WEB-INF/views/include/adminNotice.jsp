<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Editor  -->
    <script src="//cdn.ckeditor.com/4.10.0/basic/ckeditor.js"></script>
    
    <!-- Table -->
    <script type="text/javascript" src="../js/paging.js"></script>
	<link rel="stylesheet" type="text/css" href="css/admin_mem_tab.css" />
	<link rel="stylesheet" type="text/css" href="css/admin_search_tab.css" />
	
	<!-- paging css  -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<style>
	body {font-family: Arial, Helvetica, sans-serif;}
	/* The Modal (background) */
	.modal {
	    display: none; /* Hidden by default */
	    position: fixed; /* Stay in place */
	    z-index: 1; /* Sit on top */
	    padding-top: 100px; /* Location of the box */
	    left: 0;
	    top: 0;
	    width: 100%; /* Full width */
	    height: 100%; /* Full height */
	    overflow: auto; /* Enable scroll if needed */
	    background-color: rgb(0,0,0); /* Fallback color */
	    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}
	
	/* Modal Content */
	.modal-content {
	    background-color: #fefefe;
	    margin: auto;
	    padding: 20px;
	    border: 1px solid #888;
	    width: 55%;
	}
	/* The Close Button */
	.close {
	    color: #aaa;
	    float: right;
	    font-size: 28px;
	    font-weight: bold;
	}
	
	.close:hover,
	.close:focus {
	    color: black;
	    text-decoration: none;
	    cursor: pointer;
	}

	</style>
</head>
<body>
    
	<!-- 공지사항 테이블 -->
	<table class="type09">
	    <thead>
	    <tr>
	        <th scope="cols">번호</th>
	        <th scope="cols">제목</th>
	        <th scope="cols">글쓴이</th>
	        <th scope="cols">게시날짜</th>        
	    </tr>
	    </thead>	    
	    
	    <c:forEach items="${list}" var="data">
	    <c:set var="notice_no" value="modalId${data.notice_no}"/>
	     <tbody>
		      <tr>
		        <th>${data.notice_no}</th>	        
		        <td>
		        	<div onclick='javascript:Modal("${notice_no}")'>
		        		${data.title}
		        	</div>		        	
		        </td>
		        <td> ${data.admin_id} </td>
		        <td> ${data.postdate} </td>
		      </tr>			      
	      </tbody>
	      
    <!-- The Modal -->
	<div id="modalId${data.notice_no}" class="modal">
	  <!-- Modal content -->
	  <div class="modal-content">
	    <!-- 
	    	취소버튼(x button on top)
	    	<span class="close">&times;</span>
	    -->
	    <p>
	    	<b> 제목 : ${data.title} </b>
	    	${data.content}
	    </p>
	    <input type="button" value="수정" onclick="changeContent(${data.notice_no})">
	    <input type="button" value="삭제" onclick="deleteContent(${data.notice_no})">
	</div>	
	</div>
	     </c:forEach>
	 </table>
	 
	<script>		
		var span = document.getElementsByClassName("close")[0];
		var modal = "<c:out value="${notice_no}"/>";
		
		function submitContent(){
			document.input.submit();			
		}
		
		function Modal(notice_no){
			modal = document.getElementById(notice_no);
			showModal(notice_no, modal);
			//closeModal(notice_no, modal);			
		}
		
		function showModal(notice_no, modal){
			modal = document.getElementById(notice_no);
			modal.style.display = "block";
		}
		
		// When the user clicks on <span> (x), close the modal
		/*
		span.onclick = function() {
			modal.style.display = "none";
		}
		*/

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		    if (event.target == modal) {
		        modal.style.display = "none";
		    }
		}
		
		function changeContent(notice_no){
			location.href="../admin/showEditPage.do?notice_no="+notice_no;
		}
		
		function deleteContent(notice_no){
			location.href="../admin/deleteNotice.do?notice_no="+notice_no;
			alert("공지사항이 삭제되었습니다.");
			//modal.style.display = "none";
			//window.location.reload();
		}
		
	</script>	 
	 
	 <!-- paging view -->
	 <div>
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
  	    <form action="admin_notice.do" method="post" id='frmPaging'>
			<!--출력할 페이지번호, 출력할 페이지 시작 번호, 출력할 리스트 갯수 -->
			<input type='hidden' name='index' id='index' value='${pagingVo.index}'>
			<input type='hidden' name='pageStartNum' id='pageStartNum' value='${pagingVo.pageStartNum}'>
			<input type='hidden' name='listCnt' id='listCnt' value='${pagingVo.listCnt}'>
		</form>
	</div>
	
	<h3>공지사항 글쓰기</h3> &nbsp;
	
	<!-- 글쓰기 -->
	<form name="input" method="post" action="../admin/noticeWrite.do" enctype="multipart/form-data">
		<div><a>제목</a>&emsp;
			<input type="text" name="title">
		</div><br/>
        <textarea name="content" id="editor1" rows="10" cols="80"></textarea>
        <script> CKEDITOR.replace( 'editor1' ); </script>
        
        <button type="button" onclick="submitContent()">등록</button>
    </form>
	
</body>
</html>
