<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
    if(${result}){
    	alert("게시글이 성공적으로 입력되었습니다!");
    }else{
    	alert("게시글 입력 실패!");
    }
    
    location.href="list.do";
</script>

