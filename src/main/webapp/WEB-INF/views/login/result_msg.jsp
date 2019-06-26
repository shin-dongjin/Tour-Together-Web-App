<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
    if(${result}){
    	alert("회원가입이 완료되었습니다");
    }else{
    	alert("회원가입에 실패하였습니다. 재도전?");
    }
    
    location.href="../home.do";
</script>

