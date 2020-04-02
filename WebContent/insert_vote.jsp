<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.math.*,java.security.*,java.security.spec.*,javax.crypto.*,java.util.Date  " errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%@ include file="conn.jsp"%>
<body>
<%

String cid=request.getParameter("r1");

String adh=session.getAttribute("aadhr").toString();
try
{
ResultSet rs=st.executeQuery("select * from voteradharno where adharno='"+adh+"'");
int i=0;
while(rs.next())
{
i++;
}
if(i>0)
{
session.setAttribute("mg","You Have allready Voated..");
response.sendRedirect("voting_panel.jsp");

}
else
{
st.executeUpdate("insert into voteradharno (adharno) values('"+adh+"')");
//=======================================================insert voter cast=========================================================
ResultSet rs1=st.executeQuery("select * from vote_cast where cand_id='"+cid+"'");
int i1=0,vtno=0;
while(rs1.next())
{
i1++;
vtno=Integer.parseInt(rs1.getString(2));
}
vtno++;
st.executeUpdate("update  vote_cast set vote_no="+vtno+" where cand_id='"+cid+"'");

session.setAttribute("mg","Thank For Sucessfully Voated..");
response.sendRedirect("voting_panel.jsp");
}
}
catch(Exception rt)
{
	out.print(rt);
}

%>
</body>
</html>
