<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style6 {color: #000000; font-weight: bold; }
.style7 {color: #000000}
.style9 {font-size: 12px}
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
	font-size: 12;
}
.style15 {font-size: 10; }
.style16 {color: #000000; font-size: 12px; }
.style17 {color: #000000; font-weight: bold; font-size: 12px; }
.style18 {
	font-size: large;
	font-weight: bold;
	color: #FF0000;
}
.style19 {color: #FF0000}
-->
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-color: #000;
}
</style>
</head>

<body>
<form id="form1" name="form1" method="post" action="">

<table width="80%" border="0" align="center" cellpadding="7" cellspacing="7" >
  <tr>
    <td height="92" colspan="2" align="left" valign="top" bgcolor="#1540A8"><h1><img src="images/hd.jpg" width="962" height="192" /></h1></td>
  </tr>
  <tr>
    <td width="146" valign="top" bgcolor="#EEEEEE"><ul id="MenuBar1" class="MenuBarVertical">
<li><a href="view_cand_admn.jsp">View Candidate Details</a></li>
<li><a href="PartyWiner_admin.jsp">Result View</a></li>
      <li><a href="jspbarchart_admin.jsp">Graph</a></li>
      <li><a href="logout.jsp">Logout</a></li>
      </ul></td>
    <td width="880" height="443" align="center" valign="top" bgcolor="#FCCC50"><p class="style13"><img src="images/header.jpg" width="719" height="376" /></p></td>
  </tr>
  </table>
</form>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
