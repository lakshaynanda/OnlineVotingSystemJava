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
</style>
</head>
<%@ include file="conn.jsp"%>
<body>
<form id="form1" name="form1" method="post" action="">
<table width="80%" align="center" cellpadding="8" cellspacing="6" >
  <tr>
    <td height="92" valign="top" bgcolor="#1238A3"><img src="images/hd.jpg" width="1050" height="192" /></td>
    </tr>
  <tr>
    <td width="878" height="498" align="left" valign="top" bgcolor="#95B7E4"><p>&nbsp;</p>
      <table rules="none" width="90%" border="1" align="center" cellpadding="4" cellspacing="4">
        <tr>
          <td width="221" align="center" bgcolor="#FFFFFF"><span class="style14">Candidate Name</span></td>
          <td width="202" align="center" bgcolor="#FFFFFF"><span class="style14">Candidate Id </span></td>
          <td width="210" align="center" bgcolor="#FFFFFF"><span class="style14">Party Name </span></td>
          <td width="144" align="center" bgcolor="#FFFFFF"><span class="style14">Party Symbol</span></td>
          </tr>
        <tr>
          <%

ResultSet rs=st.executeQuery("select * from candidate" );



while(rs.next())
{
%>
          <td align="center"><%= rs.getString(1) %></td>
          <td align="center"><%= rs.getString(2) %></td>
          <td align="center"><%= rs.getString(3) %></td>
          <td align="center"><img src="cand_party_pic/<%= rs.getString(5)%>" width="100" height="100" border="2" /></td>
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
