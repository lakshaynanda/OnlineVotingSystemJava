<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style7 {color: #000000}
.style9 {font-size: 12px}
.style10 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style11 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10;
}
.style12 {
	font-size: 10px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style13 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.style14 {
	font-family: "Courier New", Courier, monospace;
	color: #000000;
}
td {
	text-align: justify;
}
-->
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
</head>

<body>
<%
session.setAttribute("vt",".");

session.setAttribute("fr","1");
%>
<table  width="80%" border="0" align="center" cellpadding="7" cellspacing="9" rules="none" >
  <tr>
    <td height="94" colspan="2" align="center" valign="top" bgcolor="#11389F"><h1><img src="images/hd.jpg" width="1000" height="192" /></h1></td>
  </tr>
  <tr>
    <td height="25" colspan="2" align="right" valign="top"><a href="voting_panel.jsp"><marquee><img src="images/images.jpg" width="300" height="100" border="5" /></marquee></td>
  </tr>
  <tr>
    <td width="175" valign="top" bgcolor="#1FC8C5"><ul id="MenuBar1" class="MenuBarVertical">
<li><a href="welcome.jsp">Home</a></li>
<li><a href="view_cand.jsp">Party Candidate</a></li>
<li><a href="PartyWiner.jsp">Result</a></li>
<li><a href="ViewMenufestoDetails.jsp">Manifesto</a></li>
<li><a href="PartyInformation.jsp">Party Information</a></li>
<li><a href="logout.jsp">Logout</a></li>
    </ul></td>
    <td width="884" height="396" valign="top"><p class="style10"><br /></p>
      <h1>&#2350;&#2340;&#2342;&#2366;&#2344; &#2325;&#2379; &#2348;&#2344;&#2366;&#2351;&#2366; &#2332;&#2366;&#2319; &#2309;&#2344;&#2367;&#2357;&#2366;&#2352;&#2381;&#2351;</h1>
      <h2 itemprop="name">&nbsp;</h2>
      <p>&#2342;&#2375;&#2358; &#2350;&#2375;&#2306; &#2352;&#2366;&#2332;&#2344;&#2368;&#2340;&#2367; &#2325;&#2375; &#2346;&#2381;&#2352;&#2340;&#2367; &#2354;&#2379;&#2327;&#2379;&#2306; &#2325;&#2368; &#2313;&#2342;&#2366;&#2360;&#2368;&#2344;&#2340;&#2366; &#2325;&#2379; &#2342;&#2375;&#2326;&#2340;&#2375; &#2361;&#2369;&#2319; 25 &#2332;&#2344;&#2357;&#2352;&#2368; &#2325;&#2379; &#2342;&#2375;&#2358; &#2350;&#2375;&#2306; &#2350;&#2340;&#2342;&#2366;&#2340;&#2366;&#2323;&#2306; &#2325;&#2379; &#2332;&#2366;&#2327;&#2352;&#2370;&#2325; &#2325;&#2352;&#2344;&#2375; &#2325;&#2375; &#2354;&#2367;&#2319; &#2352;&#2366;&#2359;&#2381;&#2335;&#2381;&#2352;&#2368;&#2351; &#2350;&#2340;&#2342;&#2366;&#2340;&#2366; &#2342;&#2367;&#2357;&#2360; &#2350;&#2344;&#2366;&#2351;&#2375; &#2332;&#2366;&#2344;&#2375; &#2325;&#2366; &#2360;&#2306;&#2325;&#2354;&#2381;&#2346; &#2354;&#2367;&#2351;&#2366; &#2327;&#2351;&#2366; &#2361;&#2376; &#2346;&#2352; &#2325;&#2381;&#2351;&#2366; &#2350;&#2366;&#2340;&#2381;&#2352; &#2311;&#2360; &#2325;&#2342;&#2350; &#2360;&#2375; &#2342;&#2375;&#2358; &#2350;&#2375;&#2306; &#2350;&#2340;&#2342;&#2366;&#2340;&#2366;&#2323;&#2306; &#2350;&#2375;&#2306; &#2325;&#2379;&#2312; &#2332;&#2366;&#2327;&#2352;&#2370;&#2325;&#2340;&#2366; &#2310;&#2344;&#2375; &#2357;&#2366;&#2354;&#2368; &#2361;&#2376;? &#2358;&#2366;&#2351;&#2342; &#2344;&#2361;&#2368;&#2306; &#2325;&#2381;&#2351;&#2379;&#2306;&#2325;&#2367; &#2361;&#2350; &#2349;&#2366;&#2352;&#2340; &#2325;&#2375; &#2354;&#2379;&#2327; &#2325;&#2349;&#2368; &#2349;&#2368; &#2325;&#2367;&#2360;&#2368; &#2348;&#2366;&#2340; &#2325;&#2379; &#2360;&#2306;&#2332;&#2368;&#2342;&#2327;&#2368; &#2360;&#2375; &#2340;&#2348; &#2340;&#2325; &#2344;&#2361;&#2368;&#2306; &#2354;&#2375;&#2340;&#2375; &#2361;&#2376;&#2306; &#2332;&#2348; &#2340;&#2325; &#2346;&#2366;&#2344;&#2368; &#2360;&#2352; &#2360;&#2375; &#2314;&#2346;&#2352; &#2344;&#2361;&#2368;&#2306; &#2361;&#2379; &#2332;&#2366;&#2340;&#2366; &#2361;&#2376;. &#2342;&#2375;&#2358; &#2350;&#2375;&#2306; &#2327;&#2366;&#2305;&#2357;&#2379;&#2306; &#2310;&#2342;&#2367; &#2350;&#2375;&#2306; &#2340;&#2379; &#2347;&#2367;&#2352; &#2349;&#2368; &#2354;&#2379;&#2327; &#2357;&#2379;&#2335; &#2342;&#2375;&#2344;&#2375; &#2325;&#2375; &#2354;&#2367;&#2319; &#2330;&#2354;&#2375; &#2332;&#2366;&#2340;&#2375; &#2361;&#2376;&#2306; &#2346;&#2352; &#2361;&#2350;&#2366;&#2352;&#2375; &#2340;&#2341;&#2366;&#2325;&#2341;&#2367;&#2340; &#2346;&#2338;&#2364;&#2375; &#2354;&#2367;&#2326;&#2375; &#2360;&#2349;&#2368; &#2360;&#2350;&#2366;&#2332; &#2325;&#2368; &#2330;&#2369;&#2344;&#2366;&#2357;&#2379;&#2306; &#2350;&#2375;&#2306; &#2325;&#2381;&#2351;&#2366; &#2349;&#2370;&#2350;&#2367;&#2325;&#2366; &#2361;&#2379;&#2340;&#2368; &#2361;&#2376; &#2313;&#2360;&#2325;&#2379; &#2361;&#2350; &#2360;&#2349;&#2368; &#2332;&#2366;&#2344;&#2340;&#2375; &#2361;&#2376;&#2306;. &#2310;&#2332; &#2325;&#2375; &#2360;&#2350;&#2351; &#2350;&#2375;&#2306; &#2361;&#2352; &#2357;&#2381;&#2351;&#2325;&#2381;&#2340;&#2367; &#2360;&#2352;&#2325;&#2366;&#2352;&#2379;&#2306; &#2325;&#2379; &#2325;&#2379;&#2360;&#2340;&#2375; &#2361;&#2369;&#2319; &#2350;&#2367;&#2354; &#2332;&#2366;&#2351;&#2375;&#2327;&#2366; &#2346;&#2352; &#2332;&#2348; &#2360;&#2352;&#2325;&#2366;&#2352; &#2330;&#2369;&#2344;&#2344;&#2375; &#2325;&#2366; &#2360;&#2350;&#2351; &#2310;&#2340;&#2366; &#2361;&#2376; &#2340;&#2379; &#2361;&#2350; &#2328;&#2352;&#2379;&#2306; &#2350;&#2375;&#2306; &#2325;&#2364;&#2376;&#2342; &#2361;&#2379;&#2325;&#2352; &#2325;&#2367;&#2360;&#2368; &#2347;&#2367;&#2354;&#2381;&#2350; &#2325;&#2366; &#2354;&#2369;&#2340;&#2381;&#2347;&#2364; &#2313;&#2336;&#2366; &#2352;&#2361;&#2375; &#2361;&#2379;&#2340;&#2375; &#2361;&#2376;&#2306;. &#2325;&#2381;&#2351;&#2379;&#2306; &#2310;&#2326;&#2364;&#2367;&#2352; &#2342;&#2375;&#2358; &#2325;&#2379; &#2330;&#2354;&#2366;&#2344;&#2375; &#2325;&#2366; &#2332;&#2364;&#2367;&#2350;&#2381;&#2350;&#2366; &#2325;&#2375;&#2357;&#2354; &#2325;&#2369;&#2331; &#2354;&#2379;&#2327;&#2379;&#2306; &#2325;&#2375; &#2361;&#2366;&#2341; &#2350;&#2375;&#2306; &#2332;&#2366;&#2344;&#2375; &#2342;&#2375;&#2344;&#2366; &#2361;&#2350;&#2375;&#2306; &#2309;&#2330;&#2381;&#2331;&#2366; &#2354;&#2327;&#2340;&#2366; &#2361;&#2376;? &#2332;&#2348; &#2349;&#2368; &#2360;&#2350;&#2351; &#2310;&#2340;&#2366; &#2361;&#2376; &#2309;&#2330;&#2381;&#2331;&#2379;&#2306; &#2325;&#2379; &#2330;&#2369;&#2344;&#2344;&#2375; &#2325;&#2366; &#2340;&#2348; &#2361;&#2350; &#2325;&#2367;&#2360; &#2342;&#2337;&#2364;&#2348;&#2375; &#2350;&#2375;&#2306; &#2328;&#2369;&#2360; &#2332;&#2366;&#2340;&#2375; &#2361;&#2376;&#2306;.</p>
      <p>&#2342;&#2375;&#2358; &#2350;&#2375;&#2306; &#2330;&#2369;&#2344;&#2366;&#2357; &#2310;&#2351;&#2379;&#2327; &#2324;&#2352; &#2325;&#2379;&#2312; &#2349;&#2368; &#2360;&#2352;&#2325;&#2366;&#2352; &#2325;&#2375;&#2357;&#2354; &#2330;&#2369;&#2344;&#2366;&#2357; &#2325;&#2375; &#2310;&#2351;&#2379;&#2332;&#2344; &#2340;&#2325; &#2361;&#2368; &#2309;&#2346;&#2344;&#2368; &#2349;&#2370;&#2350;&#2367;&#2325;&#2366; &#2309;&#2342;&#2366; &#2325;&#2352; &#2360;&#2325;&#2340;&#2375; &#2361;&#2376;&#2306; &#2346;&#2352; &#2313;&#2360;&#2325;&#2366; &#2360;&#2342;&#2369;&#2346;&#2351;&#2379;&#2327; &#2325;&#2352;&#2344;&#2366; &#2361;&#2350;&#2366;&#2352;&#2366; &#2342;&#2366;&#2351;&#2367;&#2340;&#2381;&#2357; &#2361;&#2376;. &#2310;&#2332; &#2309;&#2327;&#2352; &#2325;&#2361;&#2368;&#2306; &#2346;&#2352; &#2325;&#2379;&#2312; &#2309;&#2344;&#2367;&#2351;&#2350;&#2367;&#2340;&#2340;&#2366; &#2361;&#2376; &#2340;&#2379; &#2357;&#2361; &#2325;&#2375;&#2357;&#2354; &#2311;&#2360;&#2354;&#2367;&#2319; &#2361;&#2376; &#2325;&#2367; &#2361;&#2350; &#2313;&#2360;&#2325;&#2375; &#2346;&#2381;&#2352;&#2340;&#2367; &#2313;&#2342;&#2366;&#2360;&#2368;&#2344; &#2361;&#2376;&#2306;. &#2309;&#2327;&#2352; &#2361;&#2350; &#2309;&#2346;&#2344;&#2375; &#2357;&#2379;&#2335; &#2325;&#2366; &#2346;&#2381;&#2352;&#2351;&#2379;&#2327; &#2325;&#2352;&#2344;&#2366; &#2360;&#2368;&#2326; &#2332;&#2366;&#2319;&#2305; &#2340;&#2379; &#2360;&#2350;&#2366;&#2332; &#2360;&#2375; &#2326;&#2364;&#2352;&#2366;&#2348; &#2354;&#2379;&#2327;&#2379;&#2306; &#2325;&#2366; &#2330;&#2369;&#2344; &#2325;&#2352; &#2310;&#2344;&#2366; &#2325;&#2366;&#2347;&#2368; &#2361;&#2342; &#2340;&#2325; &#2325;&#2350; &#2361;&#2379; &#2360;&#2325;&#2340;&#2366; &#2361;&#2376;? &#2310;&#2326;&#2364;&#2367;&#2352; &#2325;&#2381;&#2351;&#2366; &#2325;&#2366;&#2352;&#2339; &#2361;&#2376; &#2325;&#2367; &#2348;&#2367;&#2361;&#2366;&#2352; &#2350;&#2375;&#2306; &#2349;&#2368; &#2354;&#2379;&#2327; &#2313;&#2336; &#2326;&#2337;&#2364;&#2375; &#2361;&#2369;&#2319;? &#2360;&#2367;&#2352;&#2381;&#2347;&#2364; &#2311;&#2360;&#2354;&#2367;&#2319; &#2325;&#2381;&#2351;&#2379;&#2306;&#2325;&#2367; &#2357;&#2375; &#2352;&#2360;&#2366;&#2340;&#2354; &#2340;&#2325; &#2346;&#2361;&#2369;&#2305;&#2330; &#2330;&#2369;&#2325;&#2375; &#2341;&#2375; &#2324;&#2352; &#2313;&#2344;&#2381;&#2361;&#2379;&#2306;&#2344;&#2375; &#2309;&#2346;&#2344;&#2375; &#2350;&#2340;&#2366;&#2343;&#2367;&#2325;&#2366;&#2352; &#2325;&#2366; &#2346;&#2381;&#2352;&#2351;&#2379;&#2327; &#2325;&#2352;&#2325;&#2375; &#2309;&#2346;&#2344;&#2368; &#2360;&#2381;&#2341;&#2367;&#2340;&#2367; &#2325;&#2379; &#2360;&#2369;&#2343;&#2366;&#2352;&#2344;&#2375; &#2325;&#2366; &#2325;&#2366;&#2350; &#2326;&#2369;&#2342; &#2361;&#2368; &#2325;&#2367;&#2351;&#2366;. &#2310;&#2332; &#2342;&#2375;&#2358; &#2350;&#2375;&#2306; &#2350;&#2340;&#2366;&#2343;&#2367;&#2325;&#2366;&#2352; &#2325;&#2379; &#2349;&#2368; &#2309;&#2344;&#2367;&#2357;&#2366;&#2352;&#2381;&#2351; &#2325;&#2352; &#2342;&#2367;&#2351;&#2366; &#2332;&#2366;&#2344;&#2366; &#2330;&#2366;&#2361;&#2367;&#2319; &#2324;&#2352; &#2332;&#2379; &#2349;&#2368; &#2357;&#2379;&#2335; &#2337;&#2366;&#2354;&#2344;&#2366; &#2330;&#2366;&#2361;&#2375; &#2313;&#2360;&#2325;&#2379; &#2325;&#2312; &#2342;&#2367;&#2344; &#2350;&#2367;&#2354;&#2344;&#2375; &#2330;&#2366;&#2361;&#2367;&#2319;. &#2340;&#2325;&#2344;&#2368;&#2325;&#2368; &#2325;&#2375; &#2325;&#2381;&#2359;&#2375;&#2340;&#2381;&#2352; &#2350;&#2375;&#2306; &#2342;&#2375;&#2358; &#2325;&#2368; &#2350;&#2375;&#2343;&#2366; &#2325;&#2366; &#2313;&#2346;&#2351;&#2379;&#2327; &#2325;&#2352;&#2325;&#2375; &#2361;&#2350; &#2330;&#2369;&#2344;&#2366;&#2357;&#2379;&#2306; &#2325;&#2379; &#2324;&#2352; &#2309;&#2343;&#2367;&#2325; &#2360;&#2369;&#2352;&#2325;&#2381;&#2359;&#2367;&#2340; &#2324;&#2352; &#2310;&#2360;&#2366;&#2344; &#2348;&#2344;&#2366; &#2360;&#2325;&#2340;&#2375; &#2361;&#2376;&#2306;. &#2357;&#2379;&#2335; &#2344; &#2337;&#2366;&#2354;&#2344;&#2375; &#2357;&#2366;&#2354;&#2379;&#2306; &#2325;&#2375; &#2360;&#2349;&#2368; &#2344;&#2366;&#2327;&#2352;&#2367;&#2325; &#2309;&#2343;&#2367;&#2325;&#2366;&#2352; &#2309;&#2327;&#2354;&#2375; 5 &#2360;&#2366;&#2354; &#2340;&#2325; &#2357;&#2366;&#2346;&#2360; &#2354;&#2375; &#2354;&#2367;&#2319; &#2332;&#2366;&#2344;&#2375; &#2330;&#2366;&#2361;&#2367;&#2319; &#2332;&#2367;&#2360;&#2360;&#2375; &#2354;&#2379;&#2327;&#2379;&#2306; &#2325;&#2379; &#2351;&#2361; &#2360;&#2350;&#2333; &#2350;&#2375;&#2306; &#2310; &#2360;&#2325;&#2375; &#2325;&#2367; &#2357;&#2379;&#2335; &#2342;&#2375;&#2344;&#2366; &#2325;&#2367;&#2340;&#2344;&#2366; &#2310;&#2357;&#2358;&#2381;&#2351;&#2325; &#2361;&#2376;. &#2348;&#2367;&#2344;&#2366; &#2325;&#2367;&#2360;&#2368; &#2313;&#2330;&#2367;&#2340; &#2325;&#2366;&#2352;&#2339; &#2325;&#2375; &#2357;&#2379;&#2335; &#2344; &#2342;&#2375;&#2344;&#2375; &#2357;&#2366;&#2354;&#2379;&#2306; &#2346;&#2352; &#2332;&#2369;&#2352;&#2381;&#2350;&#2366;&#2344;&#2366; &#2349;&#2368; &#2354;&#2327;&#2366;&#2351;&#2366; &#2332;&#2366;&#2344;&#2366; &#2330;&#2366;&#2361;&#2367;&#2319;. &#2325;&#2375;&#2357;&#2354; &#2310;&#2343;&#2368; &#2310;&#2348;&#2366;&#2342;&#2368; &#2325;&#2375; &#2357;&#2379;&#2335;&#2379;&#2306; &#2360;&#2375; &#2330;&#2369;&#2344;&#2368; &#2327;&#2351;&#2368; &#2309;&#2343;&#2325;&#2330;&#2352;&#2368; &#2360;&#2352;&#2325;&#2366;&#2352;&#2375;&#2306; &#2310;&#2326;&#2364;&#2367;&#2352; &#2325;&#2376;&#2360;&#2375; &#2346;&#2370;&#2352;&#2375; &#2342;&#2375;&#2358; &#2325;&#2375; &#2348;&#2366;&#2352;&#2375; &#2350;&#2375;&#2306; &#2360;&#2379;&#2330; &#2360;&#2325;&#2340;&#2368; &#2361;&#2376;&#2306;?</p>
      <p>&#2311;&#2360; &#2342;&#2375;&#2358; &#2350;&#2375;&#2306; &#2348;&#2367;&#2344;&#2366; &#2342;&#2306;&#2337; &#2342;&#2367;&#2319; &#2325;&#2369;&#2331; &#2349;&#2368; &#2344;&#2361;&#2368;&#2306; &#2361;&#2379; &#2360;&#2325;&#2340;&#2366; &#2361;&#2376; &#2311;&#2360;&#2354;&#2367;&#2319; &#2357;&#2379;&#2335; &#2344; &#2342;&#2375;&#2344;&#2375; &#2357;&#2366;&#2354;&#2379;&#2306; &#2346;&#2352; &#2349;&#2368; &#2325;&#2369;&#2331; &#2360;&#2326;&#2381;&#2340;&#2368; &#2325;&#2368; &#2332;&#2366;&#2344;&#2368; &#2330;&#2366;&#2361;&#2367;&#2319; &#2324;&#2352; &#2360;&#2366;&#2341; &#2361;&#2368; &#2357;&#2379;&#2335; &#2342;&#2375;&#2344;&#2375; &#2325;&#2366; &#2325;&#2366;&#2350; &#2325;&#2375;&#2357;&#2354; &#2319;&#2325; &#2342;&#2367;&#2344; &#2325;&#2368; &#2332;&#2327;&#2361; &#2325;&#2312; &#2342;&#2367;&#2344;&#2379;&#2306; &#2350;&#2375;&#2306; &#2325;&#2352;&#2344;&#2366; &#2330;&#2366;&#2361;&#2367;&#2319; &#2324;&#2352; &#2309;&#2327;&#2352; &#2361;&#2379; &#2360;&#2325;&#2375; &#2340;&#2379; &#2346;&#2381;&#2352;&#2351;&#2379;&#2327; &#2325;&#2375; &#2340;&#2380;&#2352; &#2346;&#2352; &#2325;&#2369;&#2331; &#2332;&#2327;&#2361;&#2379;&#2306; &#2346;&#2352; &#2357;&#2376;&#2325;&#2354;&#2381;&#2346;&#2367;&#2325; &#2321;&#2344;&#2354;&#2366;&#2311;&#2344; &#2357;&#2379;&#2335; &#2342;&#2375;&#2344;&#2375; &#2325;&#2368; &#2357;&#2381;&#2351;&#2357;&#2360;&#2381;&#2341;&#2366; &#2349;&#2368; &#2325;&#2368; &#2332;&#2366;&#2344;&#2368; &#2330;&#2366;&#2361;&#2367;&#2319; &#2332;&#2348; &#2351;&#2361; &#2346;&#2381;&#2352;&#2351;&#2379;&#2327; &#2325;&#2369;&#2331; &#2361;&#2342; &#2340;&#2325; &#2360;&#2347;&#2354; &#2354;&#2327;&#2375; &#2340;&#2379; &#2332;&#2379; &#2354;&#2379;&#2327; &#2354;&#2366;&#2311;&#2344; &#2350;&#2375;&#2306; &#2354;&#2327;&#2325;&#2352; &#2357;&#2379;&#2335; &#2342;&#2375;&#2344;&#2375; &#2344;&#2361;&#2368;&#2306; &#2332;&#2366;&#2340;&#2375; &#2361;&#2376;&#2306; &#2313;&#2344;&#2325;&#2379; &#2311;&#2360; &#2340;&#2352;&#2361; &#2360;&#2375; &#2357;&#2379;&#2335; &#2342;&#2375;&#2344;&#2375; &#2325;&#2366; &#2309;&#2357;&#2360;&#2352; &#2342;&#2375;&#2344;&#2375; &#2325;&#2366; &#2346;&#2381;&#2352;&#2351;&#2366;&#2360; &#2349;&#2368; &#2325;&#2367;&#2351;&#2366; &#2332;&#2366;&#2344;&#2366; &#2330;&#2366;&#2361;&#2367;&#2319;. &#2342;&#2375;&#2358; &#2350;&#2375;&#2306; &#2348;&#2361;&#2369;&#2340; &#2360;&#2366;&#2352;&#2375; &#2350;&#2340;&#2342;&#2366;&#2340;&#2366; &#2325;&#2375;&#2306;&#2342;&#2381;&#2352; &#2325;&#2375; &#2360;&#2381;&#2341;&#2366;&#2344; &#2346;&#2352; &#2332;&#2361;&#2366;&#2305; &#2346;&#2352; &#2360;&#2306;&#2349;&#2357; &#2361;&#2379; &#2360;&#2330;&#2354; &#2350;&#2340;&#2342;&#2366;&#2340;&#2366; &#2325;&#2375;&#2306;&#2342;&#2381;&#2352; &#2348;&#2344;&#2366;&#2351;&#2375; &#2332;&#2366;&#2319; &#2324;&#2352; &#2352;&#2366;&#2359;&#2381;&#2335;&#2381;&#2352;&#2368;&#2351; &#2346;&#2361;&#2330;&#2366;&#2344; &#2360;&#2306;&#2326;&#2381;&#2351;&#2366; &#2310;&#2344;&#2375; &#2325;&#2375; &#2348;&#2366;&#2342; &#2325;&#2367;&#2360;&#2368; &#2349;&#2368; &#2357;&#2379;&#2335;&#2352; &#2325;&#2379; &#2357;&#2379;&#2335; &#2342;&#2375;&#2344;&#2375; &#2325;&#2375; &#2354;&#2367;&#2319; &#2357;&#2361;&#2366;&#2306; &#2346;&#2352; &#2348;&#2369;&#2354;&#2366;&#2351;&#2366; &#2332;&#2366;&#2319;. &#2358;&#2369;&#2352;&#2370; &#2350;&#2375;&#2306; &#2351;&#2361; &#2325;&#2366;&#2350; &#2325;&#2336;&#2367;&#2344; &#2354;&#2327;&#2375;&#2327;&#2366; &#2346;&#2352; &#2332;&#2348; &#2342;&#2375;&#2358; &#2325;&#2375; &#2360;&#2349;&#2368; &#2344;&#2366;&#2327;&#2352;&#2367;&#2325;&#2379;&#2306; &#2325;&#2366; &#2337;&#2366;&#2335;&#2366; &#2348;&#2344; &#2332;&#2366;&#2351;&#2375;&#2327;&#2366; &#2340;&#2379; &#2325;&#2379;&#2312; &#2349;&#2368; &#2325;&#2367;&#2360;&#2368; &#2349;&#2368; &#2340;&#2352;&#2361; &#2360;&#2375; &#2347;&#2352;&#2381;&#2332;&#2368; &#2357;&#2379;&#2335; &#2344;&#2361;&#2368;&#2306; &#2337;&#2366;&#2354; &#2346;&#2366;&#2351;&#2375;&#2327;&#2366;. &#2346;&#2352; &#2347;&#2367;&#2354;&#2361;&#2366;&#2354; &#2340;&#2379; &#2351;&#2361;&#2368; &#2325;&#2361;&#2366; &#2332;&#2366; &#2360;&#2325;&#2340;&#2366; &#2361;&#2376; &#2325;&#2367; &#2332;&#2366;&#2327;&#2379; &#2350;&#2340;&#2342;&#2366;&#2340;&#2366; &#2332;&#2366;&#2327;&#2379;.</p>
      <h2>&nbsp;</h2></td>
  </tr>
  <tr>
    <td height="36" colspan="2" valign="top" bgcolor="#123CA2">&nbsp;</td>
  </tr>
</table>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
