			<%@ page language="java" contentType="text/html; charset=UTF-8"
				pageEncoding="UTF-8"%>
			<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			
		<%@ page import="root.User, root.Search, java.util.ArrayList " %> 
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
			
				<%@include file="header.jsp"%>
			
			<!-- Put your page content here! -->

	
	<div class="main">
			<div id="profilesSingle">
						<div id="profilesSingle">
							<div id="profileImage01">
					
				<img
					src="<% out.print(request.getParameter("profileImg"));%>"
					class="img-circle" id="profileImage01">
			</div>
			<div id="proboxSingle">
				<div id="infotopSingle">
					<table>
					<tr>
							<td>Username:</td>
							<td><% out.print(request.getParameter("username")); %></td>
						</tr>
						<tr>
							<td>Email:</td>
							<td><% out.print(request.getParameter("email"));%></td>
						</tr>
						<tr>
							<td>Gender:</td>
							<td><% if( request.getParameter("gender").equals("")){ 
								out.print("n/a");
							}else if(request.getParameter("gender").equals("1")){
								out.print("Male");
							}else if(request.getParameter("gender").equals("2")){
								out.print("Female") ;
							}%></td>
						</tr>
						<tr>
						<td>Age:</td>
							<td><%out.print(request.getParameter("age")); %></td>
						</tr>
						
								<tr>
									<td>Cleanliness:</td>
									<td>
										<% if(request.getParameter("clean").equals("00")){
								out.print("n/a");
							}else if(request.getParameter("clean").equals("01")){
								out.print("Total Slob");
							}else if(request.getParameter("clean").equals("02")){
								out.print("Slob");
							}else if(request.getParameter("clean").equals("03")){
								out.print("Normal");
							}else if(request.getParameter("clean").equals("04")){
								out.print("Clean");
							}else if(request.getParameter("clean").equals("05")){
								out.print("Clean Freak");
							}%>
									</td>
								</tr>
								<tr>
							</table>
						</div>
						<div id="infobottom">
							<table>
								<tr>
									<td>Prefered Gender: <br> Home Time:
									</td>
									<td>
										<% if(request.getParameter("preRmGen").equals("00")){
								out.print("n/a");
							}else if(request.getParameter("preRmGen").equals("")){
								out.print("n/a");
							}else if(request.getParameter("preRmGen").equals("01")){
								out.print("Male(s) only");
							}else if(request.getParameter("preRmGen").equals("02")){
								out.print("Female(s) only");
							}else if(request.getParameter("preRmGen").equals("03")){
								out.print("Doesn't Matter");
								
							}%> <br> <% if(request.getParameter("homeTime").equals("00")){
								out.print("n/a");
							}else if(request.getParameter("homeTime").equals("01")){
								out.print("Close to Never");
							}else if(request.getParameter("homeTime").equals("02")){
								out.print("Few Hours");
							}else if(request.getParameter("homeTime").equals("03")){
								out.print("Half a day");
							}else if(request.getParameter("homeTime").equals("04")){
								out.print("In and Out");
							}%>
									</td>
								</tr>
								<tr>
									<td>Home Amount:</td>
									<td>
							<% if(request.getParameter("homeAmount").equals("00")){
								out.print("n/a");
							}else if(request.getParameter("homeAmount").equals("01")){
								out.print("Mornings");
							}else if(request.getParameter("homeAmount").equals("02")){
								out.print("Afternoon");
							}else if(request.getParameter("homeAmount").equals("03")){
								out.print("Evenings");
							}else if(request.getParameter("homeAmount").equals("04")){
								out.print("Night");
							}else if(request.getParameter("homeAmount").equals("05")){
								out.print("All day Long");
							}%>
									</td>
								</tr>
								<tr>
									<td>Max Rent:</td>
									<td>
							<% if(request.getParameter("maxRent").equals("00")){
								out.print("n/a");
							}else if(request.getParameter("maxRent").equals("01")){
								out.print("$0 - $100");
							}else if(request.getParameter("maxRent").equals("02")){
								out.print("$100 - $150");
							}else if(request.getParameter("maxRent").equals("03")){
								out.print("$150 - $200");
							}else if(request.getParameter("maxRent").equals("04")){
								out.print("$200 - $250");
							}else if(request.getParameter("maxRent").equals("05")){
								out.print("$250 - $300");
							}else if(request.getParameter("maxRent").equals("06")){
								out.print("$300 -$350");
							}else if(request.getParameter("maxRent").equals("07")){
								out.print("$350+");
								
							}%>
									</td>
								</tr>
					</table>
				</div>
				

			</div>
		
		</div>

	</div></div>
	
		
				
			<!-- jQuery -->
			<script src="js/jquery.js"></script>
			
			<!-- Bootstrap Core JavaScript -->
				<script src="js/bootstrap.min.js"></script>
			
			</body>
			
			</html>
