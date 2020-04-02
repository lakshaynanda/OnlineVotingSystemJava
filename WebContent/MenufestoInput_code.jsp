<p>&nbsp;</p>

<p>&nbsp;</p>
<%@ page import="java.sql.*" %> 

<%@ page import="java.io.*"%> 
<%@ page import="java.util.*"%> 
<%@ include file="conn.jsp"%>
<% 

String a;

a=request.getParameter("t1");


String un=session.getAttribute("cadid").toString();


try
{
String query="insert into menufestodt values('"+un+"','"+a+"')";

int in=st.executeUpdate(query);



response.sendRedirect("CadidatePanel.jsp");


} 
   catch(Exception ee) 
   { 
   
   out.print(ee.getMessage());
  
   } 

%> 
