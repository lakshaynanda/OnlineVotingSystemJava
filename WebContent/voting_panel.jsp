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
.style13 {font-family: "Courier New", Courier, monospace}
-->
</style>
</head>
<%@ include file="conn.jsp"%>
<body>
<form id="form1" name="form1" method="post" action="insert_vote.jsp">

<table width="100%" height="37" align="center" >
  <tr>
    <td width="990" height="31" align="center"><h1><img src="images/hd.jpg" width="962" height="192" /></h1></td>
  </tr>
</table>

<div align="center"></div>
<table rules="none" width="100%" height="172" border="1" align="center" cellpadding="9" cellspacing="8" bordercolor="#FF0000" >
  <tr>
    <th colspan="3" scope="col">&nbsp;</th>
    <th colspan="2" class="style13" scope="col"><strong>WELCOME <%= session.getAttribute("aadhr") %></strong></th>
  </tr>
  <tr>
    <th colspan="3" scope="col"><h1>&#2357;&#2379;&#2335; &#2342;&#2375;&#2344;&#2366; &#2309;&#2343;&#2367;&#2325;&#2366;&#2352; &#2361;&#2376;</h1></th>
    <th colspan="2" class="style13" scope="col">&#2350;&#2340;&#2342;&#2366;&#2344; &#2325;&#2352;&#2344;&#2375; &#2325;&#2366; &#2360;&#2306;&#2325;&#2354;&#2381;&#2346;</th>
    </tr>
  <tr>
      <th width="190" scope="col"><span class="style13">SYMBOL</span></th>
            <th width="123" scope="col"><span class="style13">NAME</span></th>
            <th width="125" scope="col"><span class="style13">ID</span></th>
            <th width="125" class="style13" scope="col">PARTY</th>
            <th width="129" scope="col"><span class="style13">VOTE</span></th>
    </tr>
	  <%


ResultSet rs;
	
rs=st.executeQuery("select * from candidate" );

while(rs.next())
{

%>
          <tr>
            <td><div align="center"><img src="cand_party_pic/<%= rs.getString(5)%>" width="100" height="100" border="2" /></div></td>
            <td><b><div align="center"><%= rs.getString(1) %></div></td>
            <td><div align="center"><%= rs.getString(2) %></div></td>
            <td><div align="center"><%= rs.getString(4) %></div></td>
            <td align="center"><p>
              <label>
                <input name="r1" on type="radio" value=<%= rs.getString(2)%> />
                Vote</label>
              <br />
              <label></label>
              <br />
            </p></td>
          </tr>
          
 <%
	}

%>
     

    <p>&nbsp;</p>
  
</table>

<table width="100%" border="0" align="center">
  <tr>
    <td width="919" align="center" scope="col"><%=session.getAttribute("mg")%>&nbsp; <a href="welcome.jsp">Go Back</a></td>
    <th width="82" scope="col"><input type="submit" name="Submit" value="Submit" /></th>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</form>
</body>
</html>
