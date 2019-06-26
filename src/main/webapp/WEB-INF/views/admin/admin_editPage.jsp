<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%@include file="../include/admin_header.jsp"%>
 
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      	공지사항 수정
      </h1>
    </section>
 
    <!-- Main content -->
    <section class="content">
 
      <!-- Your Page Content Here -->
 	<%@include file="../include/editNotice.jsp"%>
 		
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
<%@include file="../include/admin_footer.jsp"%>