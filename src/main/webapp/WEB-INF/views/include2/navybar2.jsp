	<header>
		<div class="container-fluid position-relative no-side-padding">

			<a href="/tour_together" class="logo"><img src="images/logo.png" alt="Logo Image"></a>

			<div class="menu-nav-icon" data-nav-menu="#main-menu"><i class="ion-navicon"></i></div>

			<ul class="main-menu visible-on-click" id="main-menu">
				<li><a href="/tour_together">Home</a></li>
				<li><a href="../diary/list.do">Diary</a></li>
				<li><a href="#">Board</a></li>
				<li><a href="../admin/admin_mem.do">admin</a></li>
				<li><a id="login" href="#open">login</a></li>
				<li><a  style="display:none" id="logout" href="" onclick="logout()">Logout</a></li>
				<li><a id="profile" href="../member/profile">Profile</a></li>
				<li><a id="me" href="../member/profile"> <img src="//graph.facebook.com/${id}/picture?type=small"></a></li>
				<!-- <li><a id="me" href="member/profile"> <img src="images/fb_default.jpg" height='40' width="40"></a></li>  -->
				<%-- <li><a href="member/profile"> <img src="<c:url value="resources/images/qwe.jpg" />"></a></li> --%>
				<!--c:url 사용 시 주의 사항) https://m.blog.naver.com/PostView.nhn?blogId=phrack&logNo=80105009259&proxyReferer=https%3A%2F%2Fwww.google.co.kr%2F -->
			</ul><!-- main-menu -->

			<div class="src-area">
				<form>
					<button class="src-btn" type="submit"><i class="ion-ios-search-strong"></i></button>
					<input class="src-input" type="text" placeholder="Type of search">
				</form>
			</div>

		</div><!-- conatiner -->
	</header>