<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.io.*,java.sql.*"%> 


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
.style14 {
	font-family: "Courier New", Courier, monospace;
	font-size: 18px;
	color: #F00;
}
.style15 {font-family: "Courier New", Courier, monospace}
td {
	color: #FFF;
}
a {
	color: #F00;
}
td {
	color: #F00;
}
-->
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
</head>
<%@ include file="conn.jsp"%>
<body>
<table width="80%" border="0" align="center" cellpadding="5" cellspacing="5" >
  <tr>
    <td height="183" colspan="2" valign="top" bgcolor="#133DA3"><img src="images/hd.jpg" width="962" height="192" /></td>
  </tr>
  <tr>
    <td height="33" colspan="2" bgcolor="#FF9326">&nbsp;</td>
  </tr>
  <tr>
    <td width="178" valign="top" bgcolor="#EEEEEE"><ul id="MenuBar1" class="MenuBarVertical">
      <li><a href="welcome.jsp">Home</a></li>
      <li><a href="view_cand.jsp">Party Candidate</a></li>
      <li><a href="PartyWiner.jsp">Result</a></li>
      <li><a href="ViewMenufestoDetails.jsp">Manifesto</a></li>
      <li><a href="PartyInformation.jsp">Party Information</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul></td>
    <td width="778" height="396" valign="top"><p>&nbsp;</p>
      <table rules="none" width="684" border="1" align="center" cellpadding="8" cellspacing="5">
        <tr>
          <td colspan="2" align="center" valign="bottom" bgcolor="#FAFAFA"><h1>Winner&nbsp;&nbsp;&nbsp;Election<img src="images/aa.jpg" width="51" height="39" /></h1>
          <a href="jspbarchart.jsp"></a>
          <table width="111" border="0" cellpadding="3" cellspacing="3">
            <tr>
              <td align="center"><a href="jspbarchart.jsp"><img src="images/gt.jpg" width="99" height="106" border="2" /></a></td>
            </tr>
            <tr>
              <td align="center">Click On Graph</td>
            </tr>
          </table></td>
        </tr>
        <tr>
	
          <%
ResultSet rs1=st.executeQuery("SELECT cand_id ,vote_no FROM vote_cast WHERE vote_no = (SELECT MAX(vote_no) FROM vote_cast)" );
String idd=null;
int vtno=0;

while(rs1.next())
{
	idd=rs1.getString(1);
	
	vtno=Integer.parseInt(rs1.getString(2));
	
}



ResultSet rs=st.executeQuery("SELECT *  FROM candidate where candid='"+idd+"'" );



while(rs.next())
{
%>
          <td width="320"><span class="style14">Party Symbol </span></td>
          <td width="399"><img src="cand_party_pic/<%= rs.getString(5)%>" width="100" height="100" border="2" /></td>
        </tr>
        <tr>
          <td><span class="style14">Party Name </span></td>
          <td><%= rs.getString(4) %></td>
        </tr>
        <tr>
          <td><span class="style14">Candidate Id </span></td>
          <td><%= rs.getString(2) %></td>
        </tr>
        <tr>
          <td><span class="style14">Candidate Name</span></td>
          <td><%= rs.getString(1) %></td>
        </tr>
        <tr>
          <td><span class="style14">Total Voat</span></td>
          <td><%= vtno %></td>
        </tr>
        <%
   }

	  %>
      </table>
    <h2>&nbsp;</h2></td>
  </tr>
  <tr>
    <td height="33" colspan="2" valign="top" bgcolor="#FF9326">&nbsp;</td>
  </tr>
</table>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
