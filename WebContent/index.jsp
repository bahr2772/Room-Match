<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Profile</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<%        session.removeAttribute("user");
 %>
	<%@include file="header.jsp"%>

	<!-- Put your page content here! -->
	<div class="inputgroup1">
		<div id=submitUser>
			<div class="logForm">
				<div id="logText">

					<c:if test="${sessionScope.username == null }">


						<br>
						<br>
				
				Welcome: 
					<br>
					Please Log in.<br>
						<a href="login.jsp"> Log In</a></c:if>
					
					<c:if test="${sessionScope.username != null }">
						<br>
						<br>
				
				Welcome: 
					<%=session.getAttribute("username")%><br> 
					If you haven't filed out your profile please do so here.<br>
						<a href="profile.jsp"> Profile</a> <br>
						<a href="signout.jsp" id=signout>Sign Out</a>
					</c:if>

				</div>
			</div>
		</div>
	</div>



	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>
