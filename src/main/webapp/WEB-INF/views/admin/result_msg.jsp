<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
    if(${result}){
    	alert("공지사항이 성공적으로 입력되었습니다!");    	
    }else{
    	alert("공지사항 입력 실패!");    	
    }
    
    location.href="admin_notice.do";
    
</script>

