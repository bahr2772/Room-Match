<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
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



	<%
		if (session.getAttribute("username") == null || session.getAttribute("username") == "") {
	%>
	<form action="LoginServlet" method="post">
		<div class="profileGroup">
			<div id=submitUser>
				<div class="logForm">
					<div id="logText">
						<div id="inputText">
							<h4 id="fail">Login First:</h4>

							Username: <br> <input type="text" name="username"
								id="usernameIn" aria-describedby="sizing-addon3"><br>

							Password: <br> <input type="password" name="password"
								id="passIn" aria-describedby="sizing-addon3"> <br>
						</div>
						<!-- 						password fail -->
						<%
							if (session.getAttribute("login") == "passFail") {
						%>
						<div id="fail">Incorrect Password</div>
						<!-- 							user not found -->
						<%
							} else if (session.getAttribute("login") == "noUser") {
						%>
						<div id="fail">User not Found</div>
						<a href="register.jsp"> Register New User </a> <br>
						<%
							}
						%>

						<button type="submit" class="logBtn" id="submit">Login</button>
						<br> <a href="register.jsp" id="reg">Register Here</a>
					</div>

				</div>
			</div>
		</div>

	</form>

	<%
		} else {
	%>



	<form action="ProfileServlet" method="post">
		<div class="profilegroup">
			<div id=userProfile>
				<div class="profileForm">
					<div id="profileText">
						<div id="inputText">

							<c:set var="user" value="${sessionScope.user}" />
							<c:if test="${user != null}">
								<h5>User Updated</h5>
							</c:if>
							<input type="hidden" name="username"
								value="<%=session.getAttribute("username")%>">
							<table id="profileTable">

								<tr>
									<td>Name:</td>

									<td><input type="text" name="name" id="profileIn"
										value="${sessionScope.name}"></td>

								</tr>
								<tr>
									<td>Email:</td>
									<td><input type="email" name="email" id="profileIn"
										value="${sessionScope.email}"></td>

								</tr>
								<tr id="profileIn">
									<td>Age:</td>
									<!-- Month dropdown -->
									<td colspan="2"><select name="age" id="age">
											<option value="16"
												<c:if test="${sessionScope.age =='16'}"> selected </c:if>>16</option>
											<option value="17"
												<c:if test="${sessionScope.age =='17'}"> selected </c:if>>17</option>
											<option value="18"
												<c:if test="${sessionScope.age =='18'}"> selected </c:if>>18</option>
											<option value="19"
												<c:if test="${sessionScope.age =='19'}"> selected </c:if>>19</option>
											<option value="20"
												<c:if test="${sessionScope.age =='20'}"> selected </c:if>>20</option>
											<option value="21"
												<c:if test="${sessionScope.age =='21'}"> selected </c:if>>21</option>
											<option value="22"
												<c:if test="${sessionScope.age =='22'}"> selected </c:if>>22</option>
											<option value="23"
												<c:if test="${sessionScope.age =='23'}"> selected </c:if>>23</option>
											<option value="24"
												<c:if test="${sessionScope.age =='24'}"> selected </c:if>>24</option>
											<option value="25"
												<c:if test="${sessionScope.age =='25'}"> selected </c:if>>25</option>
											<option value="26"
												<c:if test="${sessionScope.age =='26'}"> selected </c:if>>26</option>
											<option value="27"
												<c:if test="${sessionScope.age =='27'}"> selected </c:if>>27</option>
											<option value="28"
												<c:if test="${sessionScope.age =='28'}"> selected </c:if>>28</option>
											<option value="29"
												<c:if test="${sessionScope.age =='29'}"> selected </c:if>>29</option>
											<option value="30"
												<c:if test="${sessionScope.age =='30'}"> selected </c:if>>30</option>
											<option value="31"
												<c:if test="${sessionScope.age =='31'}"> selected </c:if>>31</option>
											<option value="32"
												<c:if test="${sessionScope.age =='32'}"> selected </c:if>>32</option>
											<option value="33"
												<c:if test="${sessionScope.age =='33'}"> selected </c:if>>33</option>
											<option value="34"
												<c:if test="${sessionScope.age =='34'}"> selected </c:if>>34</option>
											<option value="35"
												<c:if test="${sessionScope.age =='35'}"> selected </c:if>>35</option>
											<option value="36"
												<c:if test="${sessionScope.age =='36'}"> selected </c:if>>36</option>
											<option value="37"
												<c:if test="${sessionScope.age =='37'}"> selected </c:if>>37</option>
											<option value="38"
												<c:if test="${sessionScope.age =='38'}"> selected </c:if>>38</option>
											<option value="39"
												<c:if test="${sessionScope.age =='39'}"> selected </c:if>>39</option>
											<option value="40"
												<c:if test="${sessionScope.age =='40'}"> selected </c:if>>40</option>
											<option value="41"
												<c:if test="${sessionScope.age =='41'}"> selected </c:if>>41</option>
											<option value="42"
												<c:if test="${sessionScope.age =='42'}"> selected </c:if>>42</option>
											<option value="43"
												<c:if test="${sessionScope.age =='43'}"> selected </c:if>>43</option>
											<option value="44"
												<c:if test="${sessionScope.age =='44'}"> selected </c:if>>44</option>
											<option value="45"
												<c:if test="${sessionScope.age =='45'}"> selected </c:if>>45</option>
											<option value="46"
												<c:if test="${sessionScope.age =='46'}"> selected </c:if>>46</option>
											<option value="47"
												<c:if test="${sessionScope.age =='47'}"> selected </c:if>>47</option>
											<option value="48"
												<c:if test="${sessionScope.age =='48'}"> selected </c:if>>48</option>
											<option value="49"
												<c:if test="${sessionScope.age =='49'}"> selected </c:if>>49</option>
											<option value="50"
												<c:if test="${sessionScope.age =='50'}"> selected </c:if>>50</option>
											<option value="61"
												<c:if test="${sessionScope.age =='51'}"> selected </c:if>>51</option>
											<option value="62"
												<c:if test="${sessionScope.age =='52'}"> selected </c:if>>52</option>
											<option value="63"
												<c:if test="${sessionScope.age =='53'}"> selected </c:if>>53</option>
											<option value="64"
												<c:if test="${sessionScope.age =='54'}"> selected </c:if>>54</option>
											<option value="65"
												<c:if test="${sessionScope.age =='55'}"> selected </c:if>>55</option>
											<option value="66"
												<c:if test="${sessionScope.age =='56'}"> selected </c:if>>56</option>
											<option value="67"
												<c:if test="${sessionScope.age =='57'}"> selected </c:if>>57</option>
											<option value="68"
												<c:if test="${sessionScope.age =='58'}"> selected </c:if>>58</option>
											<option value="69"
												<c:if test="${sessionScope.age =='59'}"> selected </c:if>>59</option>
											<option value="70"
												<c:if test="${sessionScope.age =='60'}"> selected </c:if>>60</option>
											<option value="61"
												<c:if test="${sessionScope.age =='61'}"> selected </c:if>>61</option>
											<option value="62"
												<c:if test="${sessionScope.age =='62'}"> selected </c:if>>62</option>
											<option value="63"
												<c:if test="${sessionScope.age =='63'}"> selected </c:if>>63</option>
											<option value="64"
												<c:if test="${sessionScope.age =='64'}"> selected </c:if>>64</option>
											<option value="65"
												<c:if test="${sessionScope.age =='65'}"> selected </c:if>>65</option>
											<option value="66"
												<c:if test="${sessionScope.age =='66'}"> selected </c:if>>66</option>
											<option value="67"
												<c:if test="${sessionScope.age =='67'}"> selected </c:if>>67</option>
											<option value="68"
												<c:if test="${sessionScope.age =='68'}"> selected </c:if>>68</option>
											<option value="69"
												<c:if test="${sessionScope.age =='69'}"> selected </c:if>>69</option>
											<option value="70"
												<c:if test="${sessionScope.age =='70'}"> selected </c:if>>70</option>
											<option value="71"
												<c:if test="${sessionScope.age =='71'}"> selected </c:if>>71</option>
											<option value="72"
												<c:if test="${sessionScope.age =='72'}"> selected </c:if>>72</option>
											<option value="73"
												<c:if test="${sessionScope.age =='73'}"> selected </c:if>>73</option>
											<option value="74"
												<c:if test="${sessionScope.age =='74'}"> selected </c:if>>74</option>
											<option value="75"
												<c:if test="${sessionScope.age =='75'}"> selected </c:if>>75</option>
											<option value="76"
												<c:if test="${sessionScope.age =='76'}"> selected </c:if>>76</option>
											<option value="77"
												<c:if test="${sessionScope.age =='77'}"> selected </c:if>>77</option>
											<option value="78"
												<c:if test="${sessionScope.age =='78'}"> selected </c:if>>78</option>
											<option value="79"
												<c:if test="${sessionScope.age =='79'}"> selected </c:if>>79</option>
											<option value="80"
												<c:if test="${sessionScope.age =='80'}"> selected </c:if>>80</option>
											<option value="81"
												<c:if test="${sessionScope.age =='81'}"> selected </c:if>>81</option>
											<option value="82"
												<c:if test="${sessionScope.age =='82'}"> selected </c:if>>82</option>
											<option value="83"
												<c:if test="${sessionScope.age =='83'}"> selected </c:if>>83</option>
											<option value="84"
												<c:if test="${sessionScope.age =='84'}"> selected </c:if>>84</option>
											<option value="85"
												<c:if test="${sessionScope.age =='85'}"> selected </c:if>>85</option>
											<option value="86"
												<c:if test="${sessionScope.age =='86'}"> selected </c:if>>86</option>
											<option value="87"
												<c:if test="${sessionScope.age =='87'}"> selected </c:if>>87</option>
											<option value="88"
												<c:if test="${sessionScope.age =='88'}"> selected </c:if>>88</option>
											<option value="89"
												<c:if test="${sessionScope.age =='89'}"> selected </c:if>>89</option>
											<option value="90"
												<c:if test="${sessionScope.age =='90'}"> selected </c:if>>90</option>
											<option value="91"
												<c:if test="${sessionScope.age =='91'}"> selected </c:if>>91</option>
											<option value="92"
												<c:if test="${sessionScope.age =='92'}"> selected </c:if>>92</option>
											<option value="93"
												<c:if test="${sessionScope.age =='93'}"> selected </c:if>>93</option>
											<option value="94"
												<c:if test="${sessionScope.age =='94'}"> selected </c:if>>94</option>
											<option value="95"
												<c:if test="${sessionScope.age =='95'}"> selected </c:if>>95</option>
											<option value="96"
												<c:if test="${sessionScope.age =='96'}"> selected </c:if>>96</option>
											<option value="97"
												<c:if test="${sessionScope.age =='97'}"> selected </c:if>>97</option>
											<option value="98"
												<c:if test="${sessionScope.age =='98'}"> selected </c:if>>98</option>
											<option value="99"
												<c:if test="${sessionScope.age =='99'}"> selected </c:if>>99</option>
											<option value="100"
												<c:if test="${sessionScope.age =='100'}"> selected </c:if>>100</option>
									</select></td>
								<tr>
									<td>Gender:</td>
									<td><input type="radio" name="gender" value="1" id=""
										<c:if test="${sessionScope.gender =='1'}"> checked </c:if>>
										Male <input type="radio" name="gender" value="2"
										id="profileGender"
										<c:if test="${sessionScope.gender =='2'}"> checked </c:if>>
										Female</td>
								</tr>

								<tr>
									<td>Loudness:</td>
									<td><select name="loud" id="profileLoud" onchange=""
										size="1">
											<option value=""
												<c:if test="${sessionScope.loud ==''}"> selected </c:if>></option>
											<option value="01"
												<c:if test="${sessionScope.loud =='01'}"> selected </c:if>>Very
												Very Quite</option>
											<option value="02"
												<c:if test="${sessionScope.loud =='02'}"> selected </c:if>>Quite</option>
											<option value="03"
												<c:if test="${sessionScope.loud =='03'}"> selected </c:if>>Normal</option>
											<option value="04"
												<c:if test="${sessionScope.loud =='04'}"> selected </c:if>>Loud</option>
											<option value="05"
												<c:if test="${sessionScope.loud =='05'}"> selected </c:if>>Very
												Very Loud</option>
									</select></td>
								</tr>
								<tr>
									<td>Cleanliness:</td>
									<td><select name="clean" id="profileLoud" onchange=""
										size="1">
											<option value=""
												<c:if test="${sessionScope.clean ==''}"> selected </c:if>></option>
											<option value="01"
												<c:if test="${sessionScope.clean =='01'}"> selected </c:if>>Total
												Slob</option>
											<option value="02"
												<c:if test="${sessionScope.clean =='02'}"> selected </c:if>>Slob</option>
											<option value="03"
												<c:if test="${sessionScope.clean =='03'}"> selected </c:if>>Normal</option>
											<option value="04"
												<c:if test="${sessionScope.clean =='04'}"> selected </c:if>>Clean</option>
											<option value="05"
												<c:if test="${sessionScope.clean =='05'}"> selected </c:if>>Clean
												Freak</option>
									</select></td>
								</tr>
								<tr>
									<td>Tv Time:</td>
									<td><select name="tv" id="profileLoud" onchange=""
										size="1">
											<option value=""
												<c:if test="${sessionScope.tv ==''}"> selected </c:if>></option>
											<option value="01"
												<c:if test="${sessionScope.tv =='01'}"> selected </c:if>>1
												Hour a day</option>
											<option value="02"
												<c:if test="${sessionScope.tv =='02'}"> selected </c:if>>5
												Hours a Day</option>
											<option value="03"
												<c:if test="${sessionScope.tv =='03'}"> selected </c:if>>10
												Hours a Day</option>
											<option value="04"
												<c:if test="${sessionScope.tv =='04'}"> selected </c:if>>All
												day Long</option>
									</select></td>
								</tr>
								<tr>
									<td>Hours playing Video Games?</td>
									<td><select name="video" id="profileLoud" onchange=""
										size="1">
											<option value=""
												<c:if test="${sessionScope.maxNum ==''}"> selected </c:if>></option>
											<option value="01"
												<c:if test="${sessionScope.maxNum =='01'}"> selected </c:if>>1
												- 4 hours a day.</option>
											<option value="02"
												<c:if test="${sessionScope.maxNum =='02'}"> selected </c:if>>4
												- 8 hours a day</option>
											<option value="03"
												<c:if test="${sessionScope.maxNum =='03'}"> selected </c:if>>All
												day long!</option>
									</select></td>
								</tr>
								<tr>
									<td>Cooking Skills:</td>
									<td><select name="cook" id="profileLoud" onchange=""
										size="1">
											<option value=""
												<c:if test="${sessionScope.cook ==''}"> selected </c:if>></option>
											<option value="01"
												<c:if test="${sessionScope.cook =='01'}"> selected </c:if>>ha,
												yeah right. Barley Boil Water</option>
											<option value="02"
												<c:if test="${sessionScope.cook =='02'}"> selected </c:if>>Pasta,
												No Problem</option>
											<option value="03"
												<c:if test="${sessionScope.cook =='03'}"> selected </c:if>>I
												Got this.</option>
											<option value="04"
												<c:if test="${sessionScope.cook =='04'}"> selected </c:if>>5
												star Quality</option>
									</select></td>
								</tr>
								<tr>
									<td>Home Time:</td>
									<td><select name="homeTime" id="profileLoud" onchange=""
										size="1">
											<option value=""
												<c:if test="${sessionScope.homeTime ==''}"> selected </c:if>></option>
											<option value="01"
												<c:if test="${sessionScope.homeTime =='01'}"> selected </c:if>>Close
												to Never</option>
											<option value="02"
												<c:if test="${sessionScope.homeTime =='02'}"> selected </c:if>>Few
												Hours</option>
											<option value="03"
												<c:if test="${sessionScope.homeTime =='03'}"> selected </c:if>>Half
												of the Day</option>
											<option value="04"
												<c:if test="${sessionScope.homeTime =='04'}"> selected </c:if>>In
												and Out</option>
									</select></td>
								</tr>
								<tr>
									<td>Home Most Often in:</td>
									<td><select name="homeAmount" id="profileLoud" onchange=""
										size="1">
											<option value=""
												<c:if test="${sessionScope.homeAmount ==''}"> selected </c:if>></option>
											<option value="01"
												<c:if test="${sessionScope.homeAmount =='01'}"> selected </c:if>>Morning</option>
											<option value="02"
												<c:if test="${sessionScope.homeAmount =='02'}"> selected </c:if>>Afternoon</option>
											<option value="03"
												<c:if test="${sessionScope.homeAmount =='03'}"> selected </c:if>>Evenings</option>
											<option value="04"
												<c:if test="${sessionScope.homeAmount =='04'}"> selected </c:if>>Night</option>
											<option value="05"
												<c:if test="${sessionScope.homeAmount =='05'}"> selected </c:if>>All
												day Long</option>
									</select></td>
								<tr>
									<td>Preferred room mate Gender:</td>
									<td><select name="roomGen" id="profileLoud" onchange=""
										size="1">
											<option value=""
												<c:if test="${sessionScope.roomGen ==''}"> selected </c:if>></option>
											<option value="01"
												<c:if test="${sessionScope.roomGen =='01'}"> selected </c:if>>Male(s)
												only</option>
											<option value="02"
												<c:if test="${sessionScope.roomGen =='02'}"> selected </c:if>>Female(s)
												only</option>
											<option value="03"
												<c:if test="${sessionScope.roomGen =='03'}"> selected </c:if>>Doesn't
												Matter</option>
									</select></td>
								</tr>
								<tr>
									<td>Max number of Room mates</td>
									<td><select name="maxRoomates" id="profileLoud"
										onchange="" size="1">
											<option value=""
												<c:if test="${sessionScope.maxNum ==''}"> selected </c:if>></option>
											<option value="01"
												<c:if test="${sessionScope.maxNum =='01'}"> selected </c:if>>1</option>
											<option value="02"
												<c:if test="${sessionScope.maxNum =='02'}"> selected </c:if>>2-3</option>
											<option value="03"
												<c:if test="${sessionScope.maxNum =='03'}"> selected </c:if>>Who
												cares, Lets Party</option>
									</select></td>
								</tr>
								<tr>
									<td>Education Level</td>
									<td><select name="edu" id="profileLoud" onchange=""
										size="1">
											<option value=""
												<c:if test="${sessionScope.edu ==''}"> selected </c:if>></option>
											<option value="01"
												<c:if test="${sessionScope.edu =='01'}"> selected </c:if>>k
												- 11</option>
											<option value="02"
												<c:if test="${sessionScope.edu =='02'}"> selected </c:if>>Graduated
												H.S.</option>
											<option value="03"
												<c:if test="${sessionScope.edu =='03'}"> selected </c:if>>Associates
												degree</option>
											<option value="04"
												<c:if test="${sessionScope.edu =='04'}"> selected </c:if>>Bachelor's
												degree</option>
											<option value="05"
												<c:if test="${sessionScope.edu =='05'}"> selected </c:if>>Masters
												degree</option>
											<option value="06"
												<c:if test="${sessionScope.edu =='06'}"> selected </c:if>>PhD
												degree</option>
									</select></td>
								</tr>
								<tr>
								<tr>
									<td>Max Rent Share</td>
									<td><select name="maxRent" id="profileLoud" onchange=""
										size="1">
											<option value=""
												<c:if test="${sessionScope.maxRent ==''}"> selected </c:if>></option>
											<option value="01"
												<c:if test="${sessionScope.maxRent =='01'}"> selected </c:if>>$0
												- $100</option>
											<option value="02"
												<c:if test="${sessionScope.maxRent =='02'}"> selected </c:if>>$100
												- $150</option>
											<option value="03"
												<c:if test="${sessionScope.maxRent =='03'}"> selected </c:if>>$150
												- $200</option>
											<option value="04"
												<c:if test="${sessionScope.maxRent =='04'}"> selected </c:if>>$200
												- $250</option>
											<option value="05"
												<c:if test="${sessionScope.maxRent =='05'}"> selected </c:if>>$250
												- $300</option>
											<option value="06"
												<c:if test="${sessionScope.maxRent =='06'}"> selected </c:if>>$300
												- $350</option>
											<option value="07"
												<c:if test="${sessionScope.maxRent =='07'}"> selected </c:if>>$350+</option>

									</select></td>
								</tr>
								<tr>
							</table>
						</div>

						<input type="file" accept="image/*" id="file"><br>
						<button type="submit" id="profileBtn" value="upload">Save
							Profile</button>
						<br> <br> <br>
					</div>
				</div>
			</div>

		</div>
	</form>


	<%
		}
	%>

	<br>
	<br>
	<br>
	<br>
	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>
