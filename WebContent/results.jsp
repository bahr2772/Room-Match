
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="root.User, root.Search, java.util.ArrayList "%>
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
		<%        session.removeAttribute("user");
 %>
		<% if (session.getAttribute("search") == null || session.getAttribute("search") == "") {

	%>

		<%}else{ %>


		<% ArrayList<User> other = (ArrayList<User>)session.getAttribute("rankList");
			
			for(int i = 0; i < 20; i++){	
			String username = other.get(i).getUsername();
				String email = other.get(i).getEmail();
				
				int temp = other.get(i).getAge();
				String age = Integer.toString(temp);
				System.out.print(age);
				String gender = other.get(i).getGender();
				String loud = other.get(i).getLoud();
				String tv = other.get(i).getTv();
				String games = other.get(i).getGames();
				String clean = other.get(i).getClean();
				String cooking = other.get(i).getCook();
				String homeTime = other.get(i).getHomeTime();
				String homeAmount = other.get(i).getHomeAmount();
				String maxNum = other.get(i).getMaxNum();
				String edu = other.get(i).getEdu();
				String preRmGen = other.get(i).getPreferRmGen();
				String maxRent = other.get(i).getMaxRent();
				String profileImg = other.get(i).getProfileImage();
				%>
				
				<% if(other.get(i).getCounter() > 20){  %>
		<a href=<%= "singleprofile.jsp?username=" + username +"&email=" + email +"&age=" +age
					+ "&gender=" + gender + "&loud=" +loud +  "&tv="+tv+ "&games="+games+ "&cook="+cooking
					+"&homeTime="+homeTime+ "&homeAmount="+homeAmount+ "&clean=" +clean + "&maxNum="+maxNum+ "&edu="+edu+
					"&maxRent="+maxRent+ "&profileImg="+profileImg%>>

			


		<div id="profile01">
			<div id="profiles01">
				<div >
					<% if(other.get(i).getProfileImage() != null){ %>
					<img src="<%out.print(other.get(i).getProfileImage()); %>"
						class="img-circle" id="profileImage01">
					<%} %>

				</div>
				<div id="probox">
					<div id="infotop">
						<table>
							<tr>
								<td>Username:</td>
								<td>
									<% out.print(other.get(i).getUsername());%>
								</td>
							</tr>
							<tr>
								<td>Email:</td>
								<td>
									<% out.print(other.get(i).getEmail());%>
								</td>
							</tr>
							<tr>
							<td>Gender:</td>
							<td>
								<% if(other.get(i).getGender().equals("")){
								out.print("n/a");
							}else if(other.get(i).getGender().equals("01")){
								out.print("Male");
							}else if(other.get(i).getGender().equals("02")){
								out.print("Female");
							}%>
							</td>
							</tr>
							<tr>
								<td>Cleanliness:</td>
								<td>
									<% if(other.get(i).getClean().equals("00")){
								out.print("n/a");
							}else if(other.get(i).getClean().equals("01")){
								out.print("");
							}else if(other.get(i).getClean().equals("02")){
								out.print("Slob");
							}else if(other.get(i).getClean().equals("03")){
								out.print("Normal");
							}else if(other.get(i).getClean().equals("04")){
								out.print("Clean");
							}else if(other.get(i).getClean().equals("05")){
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
									<% if(other.get(i).getPreferRmGen().equals("00")){
								out.print("n/a");
							}else if(other.get(i).getPreferRmGen().equals("")){
								out.print("n/a");
							}else if(other.get(i).getPreferRmGen().equals("01")){
								out.print("Male(s) only");
							}else if(other.get(i).getPreferRmGen().equals("02")){
								out.print("Female(s) only");
							}else if(other.get(i).getPreferRmGen().equals("03")){
								out.print("Doesn't Matter");
							}%> <br> <% if(other.get(i).getHomeTime().equals("00")){
								out.print("n/a");
							}else if(other.get(i).getHomeTime().equals("01")){
								out.print("Close to Never");
							}else if(other.get(i).getHomeTime().equals("02")){
								out.print("Few Hours");
							}else if(other.get(i).getHomeTime().equals("03")){
								out.print("Half a day");
							}else if(other.get(i).getHomeTime().equals("04")){
								out.print("In and Out");
							}%>
								</td>
							</tr>
							<tr>
								<td>Home Amount:</td>
								<td>
									<% if(other.get(i).getHomeAmount().equals("00")){
								out.print("n/a");
							}else if(other.get(i).getHomeAmount().equals("01")){
								out.print("Mornings");
							}else if(other.get(i).getHomeAmount().equals("02")){
								out.print("Afternoon");
							}else if(other.get(i).getHomeAmount().equals("03")){
								out.print("Evenings");
							}else if(other.get(i).getHomeAmount().equals("04")){
								out.print("Night");
							}else if(other.get(i).getHomeAmount().equals("05")){
								out.print("All day Long");
							}%>
								</td>

							</tr>

						</table>
					</div>
				</div>


				<% if(other.get(i).getCounter() < 100) { %>

				<div id="score">
					<img
						src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Stj%C3%A4rna.svg/2000px-Stj%C3%A4rna.svg.png"
						id="scorepic">
				</div>
				<%} %>




				<%	} } 
			  }
			  %>
			  </a>
			</div>
		</div>
	</div>
	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>
