<p>&nbsp;</p>

<p>&nbsp;</p>
<%@ page import="java.sql.*" %> 
   <%@ page language="java" import="java.util.*"%>
     <%@ page language="java" import="java.util.UUID"%>
       <%@ page language="java" import="java.security.SecureRandom"%>
<%@ page import="java.io.*"%> 
<%@ page import="java.util.*"%> 
<%@ include file="conn.jsp"%>
<% 

String a,b,c,d;

a=request.getParameter("t1");
b=request.getParameter("t2");
c=request.getParameter("t3");
d=request.getParameter("f1");


 int cdid= (int) (Math.random() * 90000000);
  
session.setAttribute("pass",cdid);
session.setAttribute("to11",b);


try
{
String query="insert into candidate(candname,candid,emailid,partyname,partysymbol)values('"+a+"','"+cdid+"','"+b+"','"+c+"','"+d+"')";

int in=st.executeUpdate(query);

//////////////////////////////////////////insert voat cast/////////////////////////////////////
st.executeUpdate("insert into vote_cast (cand_id,partyname) values('"+cdid+"','"+c+"')");

session.setAttribute("msg","Registered Successfully : Your Id Is: "+cdid);
response.sendRedirect("new_cand.jsp");



} 
   catch(Exception ee) 
   { 
   
   out.print(ee.getMessage());
  
   } 

%> 
