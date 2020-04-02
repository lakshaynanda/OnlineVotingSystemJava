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
}
-->
</style>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-image: url();
	background-color: #000;
}
</style>
</head>

<body>
<%
session.setAttribute("msg",".");
%>
<table  width="80%" border="1" align="center" cellpadding="8" cellspacing="8" rules="none" >
  <tr>
    <td height="94" colspan="2" align="center" valign="top" bgcolor="#113BA1"><h1><img src="images/hd.jpg" width="962" height="192" /></h1></td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#EEEEEE"><ul id="MenuBar2" class="MenuBarHorizontal">
      <li><a href="index.jsp">Home</a></li>
      <li><a href="About.jsp">About ElectionsOnline</a></li>
      <li><a href="index_login.html">User Login</a></li>
      <li><a href="index.html">New Register</a></li>
      <li><a href="candicatelogin.jsp">Candidate Login</a></li>
<li><a href="admin_login.jsp">Administrator</a></li>
      <li><a href="Gallery.jsp">Gallary</a></li>
</ul></td>
  </tr>
  <tr>
    <td width="35" valign="top" bgcolor="#779BBD"><br />      <img src="images/Parliament-of-India.jpg" width="383" height="425" /><br /></td>
    <td width="999" height="396" valign="top" bgcolor="#FFFFFF"><h2 itemprop="name">Evote, Online Voting System</h2>      <p>The ElectionsOnline difference</p>
    <p>ElectionsOnline&nbsp;<a href="#">checks every box</a>&nbsp;when it comes to the basics, but three things&nbsp;<em>really</em>&nbsp;make it stand above the rest as the preferred choice for associations, schools, unions, homeowner associations and many more.</p>
    <h2>&nbsp;</h2>
    <h2>Integrations</h2>
    <p>The following select systems have off-the-shelf, ready-to-deploy integrations with ElectionsOnline. To learn more about integrating with ElectionsOnline&rsquo;s Evote into an external system
</p>
    <p>&nbsp;</p>
    <h2>Time-savers</h2>
    <p>Conducting an election should not be difficult, involve stress, or even take much time. ElectionsOnline's emphasis on innovating time-saving solutions make the job of the election manager as easy as possible</p>
    <p>&nbsp;</p></td>
  </tr>
  <tr>
    <td height="36" colspan="2" align="center" valign="top" bgcolor="#FF9326">Copyright &copy; 2020</td>
  </tr>
</table>
<script type="text/javascript">
var MenuBar2 = new Spry.Widget.MenuBar("MenuBar2", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
