<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.context.SecurityContext" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="org.springframework.security.core.GrantedAuthority" %>
 
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="admin_bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="admin_font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="admin_Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="admin_dist/css/AdminLTE.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
  <link rel="stylesheet" href="admin_dist/css/skins/skin-blue.min.css">

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        
  <!-- NEW -->
  <style> 
	input[type=submit] {
	    background-color: #4292f4;
	    border: none;
	    color: white;
	    padding: 10px;
	    text-decoration: none;
	    margin: 2px;
	    cursor: pointer;
	}
	</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="admin_mem.do" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin Page</b></span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      
    <!-- NEW -->
	<!-- 로그아웃 버튼 -->
    <sec:authorize access="isAuthenticated()">			
		<form:form action="${pageContext.request.contextPath}/login/logout.do" method="POST">
			<input type="submit" value="Logout" style="position: absolute; right: 10px; top: 5px">
		</form:form>
	</sec:authorize>

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">목록</li>
        <!-- Optionally, you can add icons to the links -->
        <li><a href="admin_mem.do"><i class="fa fa-link"></i> <span>회원 관리</span></a></li>   
        <li><a href="admin_board.do"><i class="fa fa-link"></i> <span>게시글 관리</span></a></li>        
        <li class="treeview">
        	<a href="admin_stat.do"><i class="fa fa-link"></i> <span>통계</span>
        	  <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
        	</a>            
			<ul class="treeview-menu">
			  <li><a href="admin_stat_join.do">가입자 수 추이</a></li>
			  <li><a href="admin_stat_gen.do">성별 등급 비율</a></li>
			  <li><a href="admin_stat_country.do">국가 비율 </a></li>
			</ul>
        <li><a href="admin_notice.do"><i class="fa fa-link"></i> <span>공지사항</span></a></li>
        <li><a href="../"><i class="fa fa-link"></i> <span>홈페이지 이동</span></a></li>
     </ul>
      <!-- /.sidebar-menu -->    
      
    </section>
    <!-- /.sidebar -->
  </aside>