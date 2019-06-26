<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript" src="../js/paging.js"></script>
	<link rel="stylesheet" type="text/css" href="css/admin_mem_tab.css" />
	<link rel="stylesheet" type="text/css" href="css/admin_search_tab.css" />
	
	<!-- paging css  -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
	
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
		.unblockButton {
		    background-color: #e7e7e7; /* Black */ 
		    border: none;
		    color: black;
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


<script>
	function blockConfirm(){
		if(window.confirm("사용자의 이용을 제한하시겠습니까?")){
			console.log('yes');
			blockUsers();
			
		}else{
			console.log('no');
			return false;
		}		
		
	}

	function blockUsers(){
		var values = document.getElementsByName("user");
		var ids = [];
		for(var i=0; i<values.length; i++){
			if(values[i].checked){
				//alert('values[i].value: '+ values[i].value);
				ids.push(values[i].value);
			}
		}
 		 $.ajax({
			url: "block.do",
			type: "POST",
			dataType: "json",
			traditional: true,
			data: { "ids": ids },
			success: function(result){
				if(result){
					alert('성공적으로 사용자의 이용이 제한되었습니다.');
					//$("input[name=user]").prop("checked", false);
					window.location.reload();
				}else{
					alert('실패');
				}
			}
		}); 	 	
	}
	
	function unblockConfirm(){
		if(window.confirm("사용자의 이용 제한을 해제하시겠습니까?")){
			console.log('yes');
			unblockUsers();
			
		}else{
			console.log('no');
			return false;
		}		
	}

	function unblockUsers(){
		var values = document.getElementsByName("user");
		var ids = [];
		for(var i=0; i<values.length; i++){
			if(values[i].checked){
				//alert('values[i].value: '+ values[i].value);
				ids.push(values[i].value);
			}
		}
 		 $.ajax({
			url: "unblock.do",
			type: "POST",
			dataType: "json",
			traditional: true,
			data: { "ids": ids },
			success: function(result){
				if(result){
					alert('성공적으로 사용자의 이용 제한이 해제되었습니다.');
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
	<!-- 회원 검색 테이블 -->
	<form action="searchMem.do" method="post" class="search">
		<div class="topnav">
			<div class="search-container">
	 			<input type="text" name="inputText" value="${ inputText }" placeholder="Search..">
	 			<button type="submit" id="search"><i class="fa fa-search"></i></button>
	 		</div>
			<!-- 게시물 검색 select -->
	 		<div class="select">
	        	<select name="searchOpt" id="searchOpt" style="width:80px; height:30px;">
				  <option value="email">이메일</option>
				  <option value="telephone">전화번호</option>
				  <option value="last_name">성</option>
				  <option value="first_name">이름</option>
				  <option value="member_class">등급</option>
				  <option value="join_date">가입일</option>
				  <option value="country">나라</option>
				  <option value="gender">성별</option>
				</select>
			</div>
		</div>
	</form>
	
	<!-- 회원 테이블 -->
	 <table class="type09">
	    <thead>
	    <tr>
	        <th scope="cols">선택</th>
	        <th scope="cols">이메일</th>
	        <th scope="cols">전화번호</th>
	        <th scope="cols">성</th>
	        <th scope="cols">이름</th>
	        <th scope="cols">등급</th>	        
	        <th scope="cols">나라</th>
	        <th scope="cols">성별</th>
	        <th scope="cols">가입일</th>
	        <th scope="cols">차단여부</th>      
	    </tr>
	    </thead>
	    
	    <c:forEach items="${list}" var="data">
		     <tbody>
			      <tr>
			        <th scope="row" align="center">
			        	<input type="checkbox" name="user" value="${data.id}" />
			        </th>
			        <td>${data.email}</td>	        
			        <td>${data.telephone}</td>
			        <td>${data.last_name}</td>	        
			        <td>${data.first_name}</td>
			        <td>${data.member_class}</td>			        	        
			        <td>${data.country}</td>
			        <td>${data.gender}</td>
			        <td>${data.join_date}</td>
			      <c:set var = "enabled" value = "${data.enabled}"/>
			      <c:choose>			         
			         <c:when test = "${enabled == true}">
			            <td>  </td>
			         </c:when>			         
			         <c:when test = "${enabled == false}">
			            <td> ✔ </td>
			         </c:when>
			      </c:choose>
			      </tr>			      
		      </tbody>
	     </c:forEach>
	     <td></td>
	     <td/><td/><td/><td/><td/><td/><td/><td/>
	     <td>총 ${pagingVo.total}명</td>
	 </table>
	 
	 <!-- NEW -->	
	<button id="unblock" onclick="unblockConfirm()" style="float: right;" class="unblockButton">해제</button> &nbsp;&nbsp;&nbsp;
	<button id="block" onclick="blockConfirm()" style="float: right;" class="blockButton">차단</button>
	
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
 	    <form action="admin_mem.do" method="post" id='frmPaging'>
		<!--출력할 페이지번호, 출력할 페이지 시작 번호, 출력할 리스트 갯수 -->
		<input type='hidden' name='index' id='index' value='${pagingVo.index}'>
		<input type='hidden' name='pageStartNum' id='pageStartNum' value='${pagingVo.pageStartNum}'>
		<input type='hidden' name='listCnt' id='listCnt' value='${pagingVo.listCnt}'>
	</form>
	</div>

</body>
</html>