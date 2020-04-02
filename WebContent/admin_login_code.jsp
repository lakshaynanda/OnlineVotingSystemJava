<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%@ include file="conn.jsp"%>
<body>
<%
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");




ResultSet rs=st.executeQuery("select * from admin where admin_name='"+s1+"' and password='"+s2+"' ");

int i=0;

while(rs.next())
{ 
i++;
}

if(i>0)
response.sendRedirect("admin_panel.jsp");
else
{
response.sendRedirect("admin_login.jsp");
String str="You are not Admin";
session.setAttribute("ch",str);
}
%>

</body>
</html>
