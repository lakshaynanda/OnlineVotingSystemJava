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
</head>

<body>
<form id="form1" name="form1" method="post" action="admin_login_code.jsp">
<table  width="80%" border="1" align="center" cellpadding="8" cellspacing="8" rules="none" >
  <tr>
    <td height="94" colspan="2" align="center" valign="top" bgcolor="#123CA2"><h1><img src="images/hd.jpg" width="962" height="192" /></h1></td>
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
    <td width="245" valign="top"><img src="images/compass.jpg" width="250" height="250" /><br />      <img src="images/political-party-elections.jpg" width="250" height="168" /><br /></td>
    <td width="768" height="718" align="left" valign="top">    <table width="769" border="0" align="center" cellpadding="5" cellspacing="5">
      <tr>
        <td width="176"><img src="images/gal/photo-71s.jpg" width="150" height="150" /></td>
        <td width="176"><img src="images/gal/photo-03s.jpg" width="150" height="150" /></td>
        <td width="179"><img src="images/gal/photo-05s.jpg" width="150" height="150" /></td>
        <td width="150"><img src="images/gal/photo-58s.jpg" width="150" height="150" /></td>
        <td width="54"><img src="images/gal/photo-07s.jpg" width="150" height="150" /></td>
      </tr>
      <tr>
        <td><img src="images/gal/photo-11s.jpg" width="150" height="150" /></td>
        <td><img src="images/gal/photo-12s.jpg" width="150" height="150" /></td>
        <td><img src="images/gal/photo-13s.jpg" width="150" height="150" /></td>
        <td><img src="images/gal/photo-14s.jpg" width="150" height="150" /></td>
        <td><img src="images/gal/photo-15s.jpg" width="150" height="150" /></td>
      </tr>
      <tr>
        <td><img src="images/gal/photo-16s.jpg" width="150" height="150" /></td>
        <td><img src="images/gal/photo-17s.jpg" width="150" height="150" /></td>
        <td><img src="images/gal/photo-18s.jpg" width="150" height="150" /></td>
        <td><img src="images/gal/photo-19s.jpg" width="150" height="150" /></td>
        <td><img src="images/gal/photo-24s.jpg" width="150" height="150" /></td>
      </tr>
      <tr>
        <td><img src="images/gal/photo-25s.jpg" width="150" height="150" /></td>
        <td><img src="images/gal/photo-26s.jpg" width="150" height="150" /></td>
        <td><img src="images/gal/photo-29s.jpg" width="150" height="150" /></td>
        <td><img src="images/gal/photo-43s.jpg" width="150" height="150" /></td>
        <td><img src="images/gal/photo-74s.jpg" width="150" height="150" /></td>
      </tr>
    </table>
      <pre>&nbsp;</pre></td>
  </tr>
  <tr>
    <td height="36" colspan="2" align="center" valign="top" bgcolor="#FF9326">Copyright &copy; 2019 Simply Voting Inc.&nbsp;<a target="_blank" rel="nofollow" href="http://concept9.ca/"></a></td>
  </tr>
</table>
</form>
<script type="text/javascript">
var MenuBar2 = new Spry.Widget.MenuBar("MenuBar2", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
