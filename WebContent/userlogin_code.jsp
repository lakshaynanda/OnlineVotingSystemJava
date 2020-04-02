<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@page import="java.io.*"%>
<%@ page language="java" import ="javax.crypto.Cipher"%>
<%@ page language="java" import ="javax.crypto.spec.IvParameterSpec"%>
<%@ page language="java" import ="javax.crypto.NoSuchPaddingException"%>
<%@ page language="java" import ="javax.crypto.spec.SecretKeySpec"%>
<%@ page language="java" import ="sun.misc.BASE64Encoder"%>
<%@ page language="java" import ="javax.crypto.Cipher"%>
<%@ page language="java" import ="javax.crypto.NoSuchPaddingException"%>
<%@ page language="java" import ="javax.crypto.spec.IvParameterSpec"%>
<%@ page language="java" import ="javax.crypto.spec.SecretKeySpec"%>
<%@ page language="java" import ="sun.misc.BASE64Encoder"%>	
<%@ page language="java" import ="sun.misc.BASE64Decoder"%>	
<%@ include file="conn.jsp"%>
<%@ page  import="java.util.*"%>
<%@ page import="comp.Compa"%>

<%
String a,b,c1;


a=request.getParameter("t1");
session.setAttribute("aadhr",a);
b=request.getParameter("t2");


try
{
	String u1,u=null,ivx="1111111111111111";
	byte[] userBytes=null;
	byte[] raw = null;
	
	


//==============================================password and voter id generator===========================================================================
ResultSet rs=st.executeQuery("select * from reg where adno='"+a+"'");

  
while(rs.next())
{
	
	u=rs.getString(3);
}




//---------------------------------------------------------------------------------------------------
SecretKeySpec keySpec = new SecretKeySpec(ivx.getBytes(), "AES");
		IvParameterSpec ivSpec = new IvParameterSpec(ivx.getBytes());
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);
		
		BASE64Decoder decoder = new BASE64Decoder();
        	raw = decoder.decodeBuffer(u);
		userBytes = cipher.doFinal(raw);
	  u1= new String(userBytes, "UTF8");
          
 //-----------------------------------------------------------------------------------------------------

	if(u1.equals(b))
	{
		out.print(u);
		InputStream sImage=null;
		ResultSet rs1=st.executeQuery("select * from reg where adno='"+a+"'");
		int c,i=0; 
		
		while(rs1.next())
		{
		sImage = rs1.getBinaryStream(7);
		i++;
		}
//-----------------------------------------------------------------------------------------------------------------------------------------
OutputStream f = new FileOutputStream("D:/AdvanceJavaWorkSpace/AdvanceOnLineVoatingMachineSystemUsingWebcam/WebContent/img/databaseimage/databaseimg.jpg");

		while ((c=sImage.read())>-1) 
			{
		        f.write(c);
		    }
		f.close();

		if(i==0)
		{
		response.sendRedirect("welcome.jsp");
		}
		else
		{

	
		Compa obj=new Compa();
		int dif=obj.doPost1();
		//====================================matching value=================================================
			if(dif>=0 && dif<=100000)
			        {
			        	
					response.sendRedirect("welcome.jsp");
			        	
			        }
			        else
			        {
			        	session.setAttribute("mg","Your Photo Not Match..Please Try Again");
			        	response.sendRedirect("userlogin.jsp");
			        }
					
		//========================================================================================================
			
		}
//-------------------------------------------------------------------------------------------------------------------------------------
		
	
	
	}
	else
	{
		session.setAttribute("mg","Your Login Data is worng..Please Try Again");
		//response.sendRedirect("login_voter.jsp");	
	}
 
//-------------------------------------------------------------------------------------------------------




}
catch(Exception ex)
{
out.println("error :"+ex);
}
		


%>