<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Editor  -->
    <script src="//cdn.ckeditor.com/4.10.0/basic/ckeditor.js"></script>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<script>		
		function submitContent(){
			document.input.submit();
		}
	</script>	 

	<!-- 글쓰기 -->
	<c:forEach items="${ notice }" var="notice" >
	<form name="input" method="post" action="../admin/editNotice.do" enctype="multipart/form-data">
		<div><a>제목</a>&emsp;
			<input type="text" name="title" value=${ notice.title }>
		</div><br/>
        <textarea name="content" id="editor1" rows="10" cols="80" >
        	${ notice.content }
        </textarea>
        <script> CKEDITOR.replace( 'editor1' ); </script>
        <input type="hidden" name="notice_no" value=${ notice_no } >
        <input type="button" value="수정" onclick="submitContent()" />
    </form>
    </c:forEach>
</body>
</html>
