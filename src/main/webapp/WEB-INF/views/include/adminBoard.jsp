<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Table -->
    <script type="text/javascript" src="../js/paging.js"></script>
	<link rel="stylesheet" type="text/css" href="css/admin_mem_tab.css" />
	<link rel="stylesheet" type="text/css" href="css/admin_search_tab.css" />
	
	<!-- paging css  -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	
	<!-- searching css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>		
		.topnav {
		  overflow: hidden;
		}		
		.topnav .search-container {
		  float: right;
		}		
		.topnav input[type=text] {
		  padding: 6px;
		  margin-top: 8px;
		  font-size: 17px;
		  border: none;
		}		
		.topnav .search-container button {
		  float: right;
		  padding: 6px 10px;
		  margin-top: 8px;
		  margin-right: 16px;
		  background: #ddd;
		  font-size: 17px;
		  border: none;
		  cursor: pointer;
		}		
		.topnav .search-container button:hover {
		  background: #ccc;
		}		
		@media screen and (max-width: 600px) {
		  .topnav .search-container {
		    float: none;
		  }
		  .topnav a, .topnav input[type=text], .topnav .search-container button {
		    float: none;
		    display: block;
		    text-align: left;
		    width: 100%;
		    margin: 0;
		    padding: 14px;
		  }
		  .topnav input[type=text] {
		    border: 1px solid #ccc;  
		  }
		}		
		.select {
			float: right;
			padding: 6px 10px;
			margin-top: 8px;
			margin-right: 0px;
			font-size: 17px;
			border: none;
			cursor: pointer;
		}
		/* NEW */
		.blockButton {
		    background-color: #555555; /* Black */ 
		    border: none;
		    color: white;
		    padding: 15px;
		    text-align: center;
		    text-decoration: none;
		    display: inline-block;
		    font-size: 16px;
		    margin: 4px 2px;
		    cursor: pointer;
		}	
	</style>
</head>
<!-- NEW -->
<script>
	function blockConfirm(){
		if(window.confirm("게시물을 차단하시겠습니까?")){
			console.log('yes');
			blockContent();
		}else{
			console.log('no');
			return false;
		}		
		
	}

	function blockContent(){
		var values = document.getElementsByName("user");
		var ids = [];
		for(var i=0; i<values.length; i++){
			if(values[i].checked){
				//alert('values[i].value: '+ values[i].value);
				ids.push(values[i].value);
			}
		}
 		 $.ajax({
			url: "blockContent.do",
			type: "POST",
			dataType: "json",
			traditional: true,
			data: { "ids": ids },
			success: function(result){
				if(result){
					alert('성공적으로 게시물이 차단되었습니다.');
					//$("input[name=user]").prop("checked", false);
					window.location.reload();
				}else{
					alert('실패');
				}
			}
		}); 	 	
	}
</script>
<body>
	<!-- 게시물 검색 -->
	<form action="searchBoard.do" method="post" class="search">		
		<div class="topnav">
			<div class="search-container">
	 			<input type="text" name="inputText" value="${ inputText }" placeholder="Search..">
	 			<button type="submit" id="search"><i class="fa fa-search"></i></button>
	 		</div>
	 		
	 		<!-- 게시물 검색 select -->
	 		<div class="select">
		       	<select name="searchOpt" id="searchOpt" style="width:80px; height:30px;">
				  <option value="title">제목</option>
				  <option value="email">이메일</option>
				  <option value="board_type">글타입</option>
				  <option value="region">지역</option>
				  <option value="write_date">게시날짜</option>
				</select>
			</div>
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;
	</form>	
	
	<!-- 게시글 테이블 -->
	<table class="type09">
	    <thead>
	    <tr>
	    	<th scope="cols">선택</th>
	        <th scope="cols">번호</th>
	        <th scope="cols">제목</th>
	        <th scope="cols">아이디</th>
	        <th scope="cols">글타입</th>	        
	        <th scope="cols">지역</th>
	        <th scope="cols">게시날짜</th>
	    </tr>
	    </thead>	    
	    
	    <c:forEach items="${list}" var="data">
		     <tbody>
			      <tr>
			        <th scope="row" align="center">
			        <!-- NEW -->
			        	<input type="checkbox" name="user" value="${data.board_no}"/>
			        </th>
			        <td>${data.board_no}</td>	        
			        <td>${data.title}</td>
			        <td>${data.id}</td>	        
			        <td>${data.board_type}</td>
			        <td>${data.region}</td>			        	        
			        <td>${data.write_date}</td>
			      </tr>			      
		      </tbody>
	     </c:forEach>
	     <td/><td/><td/><td/><td/><td/>
	     <td>총 ${pagingVo.total}개</td>
	 </table>
	 
	 <!-- NEW -->
	 <button id="block" onclick="blockConfirm()" style="float: right;" class="blockButton">게시물 차단</button>
	 
	 <!-- paging view -->
	 <div align="center">
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
  	    <form action="admin_board.do" method="post" id='frmPaging'>
			<!--출력할 페이지번호, 출력할 페이지 시작 번호, 출력할 리스트 갯수 -->
			<input type='hidden' name='index' id='index' value='${pagingVo.index}'>
			<input type='hidden' name='pageStartNum' id='pageStartNum' value='${pagingVo.pageStartNum}'>
			<input type='hidden' name='listCnt' id='listCnt' value='${pagingVo.listCnt}'>
		</form>
	</div>		
</body>
</html>
