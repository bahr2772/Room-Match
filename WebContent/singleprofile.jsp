
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
<%        session.removeAttribute("user");
 %>
	<%@include file="header.jsp"%>

	<!-- Put your page content here! -->


	<div class="main">
		<div id="profileSingle">
			<div id="profilesSingle">
				<div>

					<img src="<%out.print(request.getParameter("profileImg"));%>"
						class="img-circle" id="profileImageSingle">
				</div>
				<div id="proboxSingle">
					<div id="infotopSingle">
						<table class="signleprofile">
							<tr>
								<td>Username:</td>
								<td>
									<%
										out.print(request.getParameter("username"));
									%>
								</td>
							</tr>
							<tr>
								<td>Email:</td>
								<td>
									<a href="mailto:<%out.print(request.getParameter("email"));%>">
									<%out.print(request.getParameter("email")); %></a>
								</td>
							</tr>
							
							<tr>
								<td>Age:</td>
								<td>
									<%
										out.print(request.getParameter("age"));
									%>
								</td>
							</tr>
							<tr>
								<td>Gender:</td>
								<td>
									<%
										if (request.getParameter("gender").equals("")) {
											out.print("n/a");
										} else if (request.getParameter("gender").equals("1")) {
											out.print("Male");
										} else if (request.getParameter("gender").equals("2")) {
											out.print("Female");
										}
									%>
								</td>
							</tr>
						</table>
						<hr>
					</div>
					<div id="infobottomSingle">
						<table class="singleprofile">
							<tr>
								<td>Cleanliness:</td>
								<td colspan="1">
									<%
										if (request.getParameter("clean").equals("00")) {
											out.print(" n/a");
										} else if (request.getParameter("clean").equals("01")) {
											out.print(" Total Slob");
										} else if (request.getParameter("clean").equals("02")) {
											out.print(" Slob");
										} else if (request.getParameter("clean").equals("03")) {
											out.print(" Normal");
										} else if (request.getParameter("clean").equals("04")) {
											out.print(" Clean");
										} else if (request.getParameter("clean").equals("05")) {
											out.print(" Clean Freak");
										}
									%>
								</td>
							</tr>
							<tr>
								<td>Loudness Level:</td>
								<td colspan="1">
									<%
										if (request.getParameter("loud").equals("00")) {
											out.print(" n/a");
										} else if (request.getParameter("loud").equals("01")) {
											out.print(" Very Quite");
										} else if (request.getParameter("loud").equals("02")) {
											out.print(" Quite");
										} else if (request.getParameter("loud").equals("03")) {
											out.print(" Normal");
										} else if (request.getParameter("loud").equals("04")) {
											out.print(" Loud");
										} else if (request.getParameter("loud").equals("05")) {
											out.print(" Very Loud");
										}
									%>
								</td>
							</tr>
							<tr>
								<td>TV time:</td>
								<td colspan="1">
									<%
										if (request.getParameter("tv").equals("00")) {
											out.print(" n/a");
										} else if (request.getParameter("tv").equals("01")) {
											out.print(" 1 Hour a day");
										} else if (request.getParameter("tv").equals("02")) {
											out.print(" 5 Hours a day");
										} else if (request.getParameter("tv").equals("03")) {
											out.print(" 10 Hours a day");
										} else if (request.getParameter("tv").equals("04")) {
											out.print(" All day long");
										}
									%>
								</td>
							</tr>
							<tr>
								<td>Hours Spent Playing Video Games:</td>
								<td colspan="1">
									<%
										if (request.getParameter("games").equals("00")) {
											out.print(" n/a");
										} else if (request.getParameter("games").equals("01")) {
											out.print(" 1 - 4 hours a day");
										} else if (request.getParameter("games").equals("02")) {
											out.print(" 4 - 8 hours a day");
										} else if (request.getParameter("games").equals("03")) {
											out.print(" All day");
										}
									%>
								</td>
							</tr>
							<tr>
								<td>Cooking Skills:</td>
								<td colspan="1">
									<%
										if (request.getParameter("cook").equals("00")) {
											out.print(" n/a");
										} else if (request.getParameter("cook").equals("01")) {
											out.print("ha, yeah right. Barley Boil Water");
										} else if (request.getParameter("cook").equals("02")) {
											out.print("Pasta, no problem");
										} else if (request.getParameter("cook").equals("03")) {
											out.print(" I got this.");
										} else if (request.getParameter("cook").equals("04")) {
											out.print(" 5 Star Quality");
										}
									%>
								</td>
							</tr>
							<tr>
								<td>Home Time:</td>
								<td colspan="1">
									<%
										if (request.getParameter("homeTime").equals("00")) {
											out.print(" n/a");
										} else if (request.getParameter("homeTime").equals("01")) {
											out.print("Close to Never");
										} else if (request.getParameter("homeTime").equals("02")) {
											out.print("Few Hours");
										} else if (request.getParameter("homeTime").equals("03")) {
											out.print(" Half of the Day");
										} else if (request.getParameter("homeTime").equals("04")) {
											out.print(" In and Out");
										}
									%>
								</td>
							</tr>
							<tr>
								<td>Normally Home in :</td>
								<td colspan="1">
									<%
										if (request.getParameter("homeAmount").equals("00")) {
											out.print(" n/a");
										} else if (request.getParameter("homeAmount").equals("01")) {
											out.print("Mornings");
										} else if (request.getParameter("homeAmount").equals("02")) {
											out.print("Afternoons");
										} else if (request.getParameter("homeAmount").equals("03")) {
											out.print("Evenings");
										} else if (request.getParameter("homeAmount").equals("04")) {
											out.print("Nights");
										} else if (request.getParameter("homeAmount").equals("05")) {
											out.print("All day");
										}
									%>
								</td>
							</tr>
							<tr>
								<td>Education Level:</td>
								<td colspan="1">
									<%
										if (request.getParameter("edu").equals("00")) {
											out.print(" n/a");
										} else if (request.getParameter("edu").equals("06")) {
											out.print("K - 11");
										} else if (request.getParameter("edu").equals("01")) {
											out.print("Graduated H.S.");
										} else if (request.getParameter("edu").equals("02")) {
											out.print("Associates Degree");
										} else if (request.getParameter("edu").equals("03")) {
											out.print("Bachelor's Degree");
										} else if (request.getParameter("edu").equals("04")) {
											out.print("Masters");
										} else if (request.getParameter("edu").equals("05")) {
											out.print("All day");
										} else if (request.getParameter("edu").equals("06")) {
											out.print("PhD Degree");
										}
									%>
								</td>
							</tr>
							<tr>
								<td>Max Rent:</td>
								<td colspan="1">
									<%
										if (request.getParameter("maxRent").equals("00")) {
											out.print("n/a");
										} else if (request.getParameter("maxRent").equals("01")) {
											out.print("$0 - $100 ");
										} else if (request.getParameter("maxRent").equals("02")) {
											out.print("$100 - $150");
										} else if (request.getParameter("maxRent").equals("03")) {
											out.print("$150 - $200");
										} else if (request.getParameter("maxRent").equals("04")) {
											out.print("$200 - $250");
										} else if (request.getParameter("maxRent").equals("05")) {
											out.print("$250 - $300");
										} else if (request.getParameter("maxRent").equals("06")) {
											out.print("$300 - $350");
										} else if (request.getParameter("maxRent").equals("07")) {
											out.print("$350+");
										}
									%>
								</td>
							</tr>

						</table>
					</div>


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
