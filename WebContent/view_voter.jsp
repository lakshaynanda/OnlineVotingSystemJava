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
.style14 {font-family: "Courier New", Courier, monospace; font-size: 18px;}
</style>
</head>
<%@ include file="conn.jsp"%>
<body>
<form id="form1" name="form1" method="post" action="">
<table width="701" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td height="92" colspan="2" valign="top" bgcolor="#FDCB50"><img src="images/header1.jpg" width="1074" height="92" /></td>
    </tr>
  <tr>
    <td width="219" valign="top" bgcolor="#EEEEEE"><ul id="MenuBar1" class="MenuBarVertical">
      <li><a href="voter_reg.jsp">ADD NEW VOTER</a>        </li>
      <li><a href="new_cand.jsp">ADD NEW CANDIDATE</a></li>
      <li><a href="view_voter.jsp">VIEW VOTER LIST</a>        </li>
      <li><a href="view_cand.jsp">VIEW CANDIDATE LIST</a></li>
      <li><a href="#">VIEW RESULT</a></li>
    </ul></td>
    <td width="855" height="498" align="left" valign="top" bgcolor="#546577"><p>&nbsp;</p>
      <table width="852" border="1" cellpadding="5" cellspacing="5">
        <tr>
        <td width="34" height="36" bgcolor="#EEEEEE"><div align="center" class="style14">Votername</div></td>
        <td width="100" bgcolor="#EEEEEE"><div align="center" class="style14">Fathername</div></td>
        <td width="96" bgcolor="#EEEEEE"><div align="center" class="style14">Password</div></td>
        <td width="31" bgcolor="#EEEEEE"><div align="center" class="style14">Dob </div></td>
        <td width="36" bgcolor="#EEEEEE"><div align="center" class="style14">Age</div></td>
        <td width="89" bgcolor="#EEEEEE"><div align="center" class="style14">Address</div></td>
        <td width="104" bgcolor="#EEEEEE"><div align="center"><span class="style14">Phoneno</span></div></td>
        <td width="104" bgcolor="#EEEEEE" class="style14"><div align="center">Emailid</div></td>
        <td width="104" bgcolor="#EEEEEE" class="style14"><div align="center">Voterid</div></td>
      </tr>
      <tr>
        <%



	
ResultSet rs=st.executeQuery("select * from voter_reg" );

while(rs.next())
{

%>
        <td><div align="center"><%= rs.getString(1) %></div></td>
        <td><div align="center"><%= rs.getString(2) %></div></td>
        <td><div align="center"><%= rs.getString(3) %></div></td>
        <td><div align="center"><%= rs.getString(4) %></div></td>
        <td><div align="center"><%= rs.getString(5) %></div></td>
        <td><div align="center"><%= rs.getString(6) %></div></td>
        <td><div align="center"><%= rs.getString(7) %></div></td>
        <td><div align="center"><%= rs.getString(8) %></div></td>
        <td><div align="center"><%= rs.getString(9) %></div></td>
      </tr>
      <%
	  }
	  %>
  </table>      <p>&nbsp;</p>    
  <p class="style13">&nbsp;</p></td>
  </tr>
</table>
</form>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
