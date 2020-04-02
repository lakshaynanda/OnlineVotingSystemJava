<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*"%> 
<%@ page import="java.awt.Image"%>  
<%@ page import="java.awt.Toolkit"%>  
<%@ page import="java.awt.image.PixelGrabber"%> 
  <%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.style14 {	font-family: "Courier New", Courier, monospace;
	font-size: 18px;
	color: #FFF;
}
</style>
</head>

<body>

<p>
  <%

		

String user=request.getParameter("t1");
String pass=request.getParameter("t2");


try
{
//====================================================================================================================
ResultSet rs=st.executeQuery("select * from reg where usernm='"+user+"' and pass='"+pass+"'");
int f=0;

	while(rs.next())
			{
				f++;
			}


		if(f>=1)
		{
		session.setAttribute("aadhr",user);
		response.sendRedirect("voting_panel.jsp");
		}
		
//============================================================================================================================


}

 	catch (Exception e1) 
		{
		e1.printStackTrace();
		}

%>
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>