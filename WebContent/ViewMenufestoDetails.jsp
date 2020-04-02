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
<style type="text/css">
.style14 {font-family: "Courier New", Courier, monospace; font-size: 18px;}
body {
	background-color: #000;
}
</style>
</head>
<%@ include file="conn.jsp"%>
<body>
<form id="form1" name="form1" method="post" action="">
<table width="80%" align="center" cellpadding="8" cellspacing="6" >
  <tr>
    <td height="92" valign="top" bgcolor="#11389F"><img src="images/hd.jpg" width="962" height="192" /></td>
    </tr>
  <tr>
    <td width="855" height="498" align="left" valign="top" bgcolor="#CCCCCC"><p>&nbsp;</p>
      <table  rules="rows" width="80%" border="1" align="center" cellpadding="4" cellspacing="4">
        <tr>
          <td width="221" align="center" bgcolor="#FF9326"><h1>Party Name &amp; Menufesto Details</h1></td>
          <%

ResultSet rs=st.executeQuery("select * from menufestodt" );

while(rs.next())
{
%>
        </tr>
        <tr>
          <td align="center" bgcolor="#FF0033"><h1><strong><%= rs.getString(1) %> </strong></h1></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#00CC66"><p>&nbsp;</p>
<%= rs.getString(2) %></td>
        </tr>
        <%
   }
	  %>
      </table>      </td>
  </tr>
</table>
</form>
</body>
</html>
