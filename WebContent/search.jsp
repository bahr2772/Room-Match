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

<title>Search</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">


</head>

<body>

	<%@include file="header.jsp"%>

            <form action="SearchServlet" method="post">
                <div class="profilegroup">
                    <div id=userProfile>
                        <div class="profileForm">
                            <div id="profileText">
                                <div id="inputText">


                                    <h3>Search</h3>
                                    <p>Enter a Range for each area that is important to you.</p>
                                    <table id="profileTable">
                                            <tr><td colspan="3"> Have a name or email that you would like to search?</td></tr>
                                        <tr><td colspan="3"> <input type="text" name="searchName" id="nameSearch"></td></tr>

                                        <tr>
                                            <td>Age: </td>
                                            <td colspan="1">Min:  
                                                <select name="minAge" id="minAge">
                                                    <option value="16">16</option>
                                                    <option value="17">17</option>
                                                    <option value="18">18</option>
                                                    <option value="19">19</option>
                                                    <option value="20">20</option>
                                                    <option value="21">21</option>
                                                    <option value="22">22</option>
                                                    <option value="23">23</option>
                                                    <option value="24">24</option>
                                                    <option value="25">25</option>
                                                    <option value="26">26</option>
                                                    <option value="27">27</option>
                                                    <option value="28">28</option>
                                                    <option value="29">29</option>
                                                    <option value="30">30</option>
                                                    <option value="31">31</option>
                                                    <option value="32">32</option>
                                                    <option value="33">33</option>
                                                    <option value="34">34</option>
                                                    <option value="35">35</option>
                                                    <option value="36">36</option>
                                                    <option value="37">37</option>
                                                    <option value="38">38</option>
                                                    <option value="39">39</option>
                                                    <option value="40">40</option>
                                                    <option value="41">41</option>
                                                    <option value="42">42</option>
                                                    <option value="43">43</option>
                                                    <option value="44">44</option>
                                                    <option value="45">45</option>
                                                    <option value="46">46</option>
                                                    <option value="47">47</option>
                                                    <option value="48">48</option>
                                                    <option value="49">49</option>
                                                    <option value="50">50</option>
                                                    <option value="51">51</option>
                                                    <option value="52">52</option>
                                                    <option value="53">53</option>
                                                    <option value="54">54</option>
                                                    <option value="55">55</option>
                                                    <option value="56">56</option>
                                                    <option value="57">57</option>
                                                    <option value="58">58</option>
                                                    <option value="59">59</option>
                                                    <option value="60">60</option>
                                                    <option value="61">61</option>
                                                    <option value="62">62</option>
                                                    <option value="63">63</option>
                                                    <option value="64">64</option>
                                                    <option value="65">65</option>
                                                    <option value="66">66</option>
                                                    <option value="67">67</option>
                                                    <option value="68">68</option>
                                                    <option value="69">69</option>
                                                    <option value="70">70</option>
                                                    <option value="71">71</option>
                                                    <option value="72">72</option>
                                                    <option value="73">73</option>
                                                    <option value="74">74</option>
                                                    <option value="75">75</option>
                                                    <option value="76">76</option>
                                                    <option value="77">77</option>
                                                    <option value="78">78</option>
                                                    <option value="79">79</option>
                                                    <option value="80">80</option>
                                                    <option value="81">81</option>
                                                    <option value="82">82</option>
                                                    <option value="83">83</option>
                                                    <option value="84">84</option>
                                                    <option value="85">85</option>
                                                    <option value="86">86</option>
                                                    <option value="87">87</option>
                                                    <option value="88">88</option>
                                                    <option value="89">89</option>
                                                    <option value="90">90</option>
                                                    <option value="91">91</option>
                                                    <option value="92">92</option>
                                                    <option value="93">93</option>
                                                    <option value="94">94</option>
                                                    <option value="95">95</option>
                                                    <option value="96">96</option>
                                                    <option value="97">97</option>
                                                    <option value="98">98</option>
                                                    <option value="99">99</option>
                                                    <option value="100">100</option>
                                                </select>
                                                Max:
                                                <select name="maxAge" id="maxAge">
                                                    <option value="16">16</option>                                            
                                                    <option value="17">17</option>
                                                    <option value="18">18</option>
                                                    <option value="19">19</option>
                                                    <option value="20">20</option>
                                                    <option value="21">21</option>
                                                    <option value="22">22</option>
                                                    <option value="23">23</option>
                                                    <option value="24">24</option>
                                                    <option value="25">25</option>
                                                    <option value="26">26</option>
                                                    <option value="27">27</option>
                                                    <option value="28">28</option>
                                                    <option value="29">29</option>
                                                    <option value="30">30</option>
                                                    <option value="31">31</option>
                                                    <option value="32">32</option>
                                                    <option value="33">33</option>
                                                    <option value="34">34</option>
                                                    <option value="35">35</option>
                                                    <option value="36">36</option>
                                                    <option value="37">37</option>
                                                    <option value="38">38</option>
                                                    <option value="39">39</option>
                                                    <option value="40">40</option>
                                                    <option value="41">41</option>
                                                    <option value="42">42</option>
                                                    <option value="43">43</option>
                                                    <option value="44">44</option>
                                                    <option value="45">45</option>
                                                    <option value="46">46</option>
                                                    <option value="47">47</option>
                                                    <option value="48">48</option>
                                                    <option value="49">49</option>
                                                    <option value="50">50</option>
                                                    <option value="51">51</option>
                                                    <option value="52">52</option>
                                                    <option value="53">53</option>
                                                    <option value="54">54</option>
                                                    <option value="55">55</option>
                                                    <option value="56">56</option>
                                                    <option value="57">57</option>
                                                    <option value="58">58</option>
                                                    <option value="59">59</option>
                                                    <option value="60">60</option>
                                                    <option value="61">61</option>
                                                    <option value="62">62</option>
                                                    <option value="63">63</option>
                                                    <option value="64">64</option>
                                                    <option value="65">65</option>
                                                    <option value="66">66</option>
                                                    <option value="67">67</option>
                                                    <option value="68">68</option>
                                                    <option value="69">69</option>
                                                    <option value="70">70</option>
                                                    <option value="71">71</option>
                                                    <option value="72">72</option>
                                                    <option value="73">73</option>
                                                    <option value="74">74</option>
                                                    <option value="75">75</option>
                                                    <option value="76">76</option>
                                                    <option value="77">77</option>
                                                    <option value="78">78</option>
                                                    <option value="79">79</option>
                                                    <option value="80">80</option>
                                                    <option value="81">81</option>
                                                    <option value="82">82</option>
                                                    <option value="83">83</option>
                                                    <option value="84">84</option>
                                                    <option value="85">85</option>
                                                    <option value="86">86</option>
                                                    <option value="87">87</option>
                                                    <option value="88">88</option>
                                                    <option value="89">89</option>
                                                    <option value="90">90</option>
                                                    <option value="91">91</option>
                                                    <option value="92">92</option>
                                                    <option value="93">93</option>
                                                    <option value="94">94</option>
                                                    <option value="95">95</option>
                                                    <option value="96">96</option>
                                                    <option value="97">97</option>
                                                    <option value="98">98</option>
                                                    <option value="99">99</option>
                                                    <option value="100">100</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Tv Time:</td>
                                            <td>
                                                <select name="tv" id="profileLoud" onchange="" size="1">
                                                    <option value="00"></option>
                                                    <option value="01">1 Hour a day</option>
                                                    <option value="02">5 Hours a Day</option>
                                                    <option value="03">10 Hours a Day</option>
                                                    <option value="04">All day Long</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
									<td>Loudness:</td>
									<td><select name="loud" id="profileLoud" onchange=""
										size="1">
											<option value="00"></option>
											<option value="01">Very	Very Quite</option>
											<option value="02">Quite</option>
											<option value="03">Normal</option>
											<option value="04">Loud</option>
											<option value="05">Very	Very Loud</option>
									</select></td>
								</tr>
								<tr>
									<td>Cleanliness:</td>
									<td><select name="clean" id="profileLoud" onchange=""
										size="1">
											<option value="00"></option>
											<option value="01">Total Slob</option>
											<option value="02">Slob</option>
											<option value="03">Normal</option>
											<option value="04">Clean</option>
											<option value="05">Clean Freak</option>
									</select></td>
								</tr>
                                        <tr>
                                            <td>Cooking Skills:</td>
                                            <td>
                                                <select name="cook" id="profileLoud" onchange="" size="1">
                                                    <option value="00"></option>
                                                    <option value="01">ha, yeah right. Barley Boil Water</option>
                                                    <option value="02">Pasta, No Problem</option>
                                                    <option value="03">I Got this.</option>
                                                    <option value="04">5 star Quality</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Home Time:</td>
                                            <td>
                                                <select name="home" id="profileLoud" onchange="" size="1">
                                                    <option value="00"> </option>
                                                    <option value="01">Close to Never</option>
                                                    <option value="02">Few Hours</option>
                                                    <option value="03">Half of the Day</option>
                                                    <option value="04">In and Out</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Home Most Often in:</td>
                                            <td>
                                                <select name="homeTime" id="profileLoud" onchange="" size="1">
                                                    <option value="00"></option>
                                                    <option value="01">Morning</option>
                                                    <option value="02">Afternoon</option>
                                                    <option value="03">Evenings</option>
                                                    <option value="04">Night</option>
                                                    <option value="04">All day Long</option>
                                                </select>
                                            </td>
                                           <tr>
                                                <td>Preferred room mate Gender:</td>
                                                <td>
                                                    <select name="roomGen" id="profileLoud" onchange="" size="1">
                                                        <option value="00"></option>
                                                        <option value="01">Male(s) only</option>
                                                        <option value="02">Female(s) only</option>
                                                        <option value="03">Doesn't Matter</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td>Hours playing Video Games?</td>
                                                <td>
                                                    <select name="roomGen" id="profileLoud" onchange="" size="1">
                                                        <option value="00"></option>
                                                        <option value="01">1 - 4 hours a day.</option>
                                                        <option value="02">4 - 8 hours a day</option>
                                                        <option value="03">All day long!</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Max number of Room mates</td>
                                                <td>
                                                    <select name="maxRoomates" id="profileLoud" onchange="" size="1">
                                                        <option value="00"></option>
                                                        <option value="01">1</option>
                                                        <option value="02">2-3</option>
                                                        <option value="03">Who cares, Lets Party</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Education Level</td>
                                                <td>
                                                    <select name="edu" id="profileLoud" onchange="" size="1">
                                                        <option value="00"></option>
                                                        <option value="01">k - 11</option>
                                                        <option value="02">Graduated H.S.</option>
                                                        <option value="03">Associates degree</option>
                                                        <option value="04">Bachelor's degree</option>
                                                        <option value="05">Masters degree</option>
                                                        <option value="06">PhD degree</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <tr>
                                                    <td>Max Rent Share</td>
                                                    <td>
                                                        <select name="maxRent" id="profileLoud" onchange="" size="1">
                                                            <option value="00"></option>
                                                            <option value="01">$0 - $100</option>
                                                            <option value="02">$100 - $150</option>
                                                            <option value="03">$150 - $200</option>
                                                            <option value="04">$200 - $250</option>
                                                            <option value="05">$250 - $300</option>
                                                            <option value="06">$300 - $350</option>
                                                            <option value="07">$350+</option>

                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                    </table>
                                </div>

                             
                                <br>
                                <button type="submit" id="profileBtn" value="upload">Search
                                </button>
                                <br>
                                <br>
                                <br>
                            </div>
                        </div>
                    </div>

                </div>
            </form>

           
	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>
