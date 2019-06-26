<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Notice</title>
<style>
	p{
		text-align: center;
	}
html,
body {
	height: 100%;
}

body {
	margin: 0;
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 100;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	width: 300px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

th,
td {
	padding: 15px;
	background-color: rgba(255,255,255,0.2);
	color: #fff;
}

th {
	text-align: left;
}

thead {
	th {
		background-color: #55608f;
	}
}
#footer {
   position:fixed;
   left:0px;
   bottom:0px;
   height:25px;
   width:100%;
   background:#000000;
   color: white;
}
#footer p {
   text-align: center;
}
</style>

<script type="text/javascript">
/* 	function setCookie(name, value, expiredays) {
	var today = new Date();
	    today.setDate(today.getDate() + expiredays);

	    document.cookie = name + '=' + escape(value) + '; path=/; expires=' + today.toGMTString() + ';'
	} */

/* 	function closePop() {   
	if(document.forms[0].todayPop.checked)                
		setCookie('popupNotice', 'popup', 1);
		window.close();
	} */
</script>

</head>
<body>

<div class="container">
	<table>
		<tbody>
			<tr>
				<td align="center" style=""><b>TOUR TOGETHER NOTIFICATION</b></td>
			</tr>
		</tbody>
	</table>
	<br/>
	<table>
		<thead>
			<tr>
				<th>${ notice.title }</th>				
			</tr>
		</thead>
		<tbody>
			<tr>	
				<td>${ notice.content }</td>
			</tr>
		</tbody>
	</table>
	<h6>posted: ${notice.postdate}</h6>
</div>
</body>
<div id="footer">
<form>
	<input type="checkbox" id="popup" name="todayPop" onClick="closePop()">
	<font size="2px">Do not see this today</font>
</form>
</div>

</html>