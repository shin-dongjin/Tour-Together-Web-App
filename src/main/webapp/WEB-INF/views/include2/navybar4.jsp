<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.context.SecurityContext" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="org.springframework.security.core.GrantedAuthority" %>
<%@ page import="com.cndy.tt.member.Member" %>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">


        <!-- Navbar Area -->
        <div class="clever-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <!-- Menu -->
                <nav class="classy-navbar justify-content-between" id="cleverNav">

                    <!-- Logo -->
                    <a class="nav-brand" href="/tour_together"><img src="../clever-img/core-img/TTLogo.PNG" alt=""></a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">

                        <!-- Close Button -->
                        <div class="classycloseIcon">
                            <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                        </div>

                        <!-- Nav Start -->
                        <div class="classynav">
                     		 <ul>
                     		 	
                                <li><a href="../#aboutus">About Us</a></li>
                                <li><a href="../board/board.do?type=10">Board</a>
                                    <ul class="dropdown">
                                        <li><a href="../board/board.do?type=10">Tour Guide</a></li>
                                        <li><a href="../board/board.do?type=20">Tourist</a></li>
                                    </ul>
                                </li>
                                <li><a href="../diary/list.do">Tour Diary</a></li>
                         	</ul>
                         	<c:if test="${empty member}">
	                         	<sec:authorize access="isAuthenticated()">                                	
							    	<sec:authorize access="hasRole('ROLE_ADMIN')">
		    						<a href="<c:url value="../admin/admin_mem.do"/>" ><b>Admin Page</b></a> &nbsp;&nbsp;&nbsp;
		    						</sec:authorize>
			    				</sec:authorize>
							</c:if>
							
                            <!-- Register / Login -->
                            <div class="register-login-area">
                                

                            <c:if test="${empty member}">
                            <sec:authorize access="isAnonymous()">   
                               <a href="<c:url value="../login/join.do" />" class="btn">Register</a>
                               <a href="<c:url value="../login/login.do"/>" class="btn active">Login</a>
                            </sec:authorize>
                                   
                            <sec:authorize access="isAuthenticated()">                                                     
                               <form:form action="${pageContext.request.contextPath }/login/logout.do" method="POST">     
                                  <input type="button" class="btn active" onclick="showPopup('${userInfo.id}')" value="Chatting">                             
                                  <input type="submit" class="btn active" onclick="logout('${userInfo.login_type}')" value="Logout">  
                               </form:form>
                            </sec:authorize>
                          </c:if>
                          
                          <c:if test="${!empty member}">
                            <form:form action="${pageContext.request.contextPath }/login/logout.do" method="POST">
                               <input type="button" class="btn active" class="btn" onclick="showPopup('${member.id}')" value="Chatting">
                               <input type="submit" class="btn active" onclick="logout('${member.login_type}')" value="Logout">
                            </form:form>
                        </c:if>                             
                                

                            </div>

                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <script src="resources/login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="resources/login/js/fblogin.js"></script>
    <script>
	    var winRef;
		 function showPopup(id) { 
			if(winRef == null){//처음팝업
				console.log("showPopup1");
	 	  	 	winRef = window.open("../board/chating.do?id="+id, "채팅창", "width=600, height=400, left=100, top=50");
			}else{
		        if (winRef.closed == false) { //팝업이 닫히지 않았다면
		        	console.log("showPopup2");
		            winRef.focus();
		        }else{//팝업이 닫혔다면
		        	console.log("showPopup3");
		        	winRef = window.open("../board/chating.do?id="+id, "채팅창", "width=600, height=400, left=100, top=50");
		        }
		    }
	 	  }
    </script>
    <!-- ##### Header Area End ##### -->