<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.style19 {font-size: 11px}
#form1 table tr td table tr td strong {
	text-align: center;
}
body {
	background-color: #000;
}
</style>
</head>
<%@ include file="conn.jsp"%>
<body>
<form id="form1" name="form1" method="post" action="">
  <table width="80%" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td bgcolor="#133AA1"><p><img src="images/hd.jpg" width="962" height="192" /></p>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td width="868" valign="top" bgcolor="#FFFFFF"><p>&nbsp;</p>
        <table width="967" align="center" cellpadding="8" cellspacing="8">
        <tr>
          <td colspan="4"><hr /></td>
        </tr>
        <tr>
          <td width="128" align="center"><strong>Candidate Name</strong></td>
          <td width="128" align="center"><strong>Candidate Id</strong></td>
          <td width="128" align="center"><strong> Party Name</strong></td>
          <td width="128" align="center"><strong>Party Symbol</strong></td>
          </tr>
        <tr>
          <td colspan="4"><hr /></td>
          </tr>
        <tr>
        
          <%
			String a=session.getAttribute("un").toString();	
			
					
String query="select * from candidate where candname='"+a+"'";
ResultSet rs=st.executeQuery(query);
				
            while(rs.next())
{
%>
  
          <td align="center" style="font-size:12px"><%=rs.getString(1)%></td>
          <td align="center" style="font-size:12px"><%=rs.getString(2)%></td>
          <td align="center" style="font-size:12px"><%=rs.getString(3)%></td>
           <td align="center"><img src="cand_party_pic/<%= rs.getString(5)%>" width="100" height="100" border="2" /></td>
         
          </tr>
        <%
				}
				%>
      </table>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td height="38" bgcolor="#FF9326">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>