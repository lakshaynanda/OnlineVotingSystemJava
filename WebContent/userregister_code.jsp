

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage=""  %>

//--------------------------------------------------encription-------------------------------------------------

<%@ page language="java" import="java.io.UnsupportedEncodingException"%>
<%@ page language="java" import ="java.security.InvalidAlgorithmParameterException"%>
<%@ page language="java" import ="java.security.InvalidKeyException"%>
<%@ page language="java" import ="java.security.NoSuchAlgorithmException"%>

<%@ page language="java" import ="javax.crypto.Cipher"%>
<%@ page language="java" import ="javax.crypto.NoSuchPaddingException"%>
<%@ page language="java" import ="javax.crypto.spec.IvParameterSpec"%>
<%@ page language="java" import ="javax.crypto.spec.SecretKeySpec"%>
<%@ page language="java" import ="sun.misc.BASE64Encoder"%>

//---------------------------------------------------------------------------------------------------------------
<%@ page import="java.sql.*" %> 
<%@ page import="org.apache.commons.fileupload.*"%> 
<%@ page import="org.apache.commons.io.output.*"%> 
<%@ page import="org.apache.commons.fileupload.servlet.*"%> 
<%@ page import="org.apache.commons.fileupload.disk.*"%> 
<%@ page import="java.io.*"%> 
<%@ page import="java.util.*"%> 
<%@ include file="conn.jsp"%>

<% 
try
{

 String a,b,c,d,e,f;
 
	 a=request.getParameter("text1");
	 b=request.getParameter("text2"); 
	 c=request.getParameter("text3");
	 d=request.getParameter("text4");
	 e=request.getParameter("text5");
	 f=request.getParameter("text6");
	
//==============================================================================================================================

String u;
byte[] userBytes=null;
byte[] raw = null;
u=c;
  String key="1111111111111111";
     try
     {

SecretKeySpec keySpec = new SecretKeySpec(key.getBytes(), "AES");
IvParameterSpec ivSpec = new IvParameterSpec(key.getBytes());
Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
cipher.init(Cipher.ENCRYPT_MODE, keySpec, ivSpec);
userBytes = u.getBytes("UTF8");
raw = cipher.doFinal(userBytes);
} 
catch (Exception e1)
{
	e1.printStackTrace();
}

BASE64Encoder encoder = new BASE64Encoder();
String base64u = encoder.encode(raw);



//==============================================================================================================================

FileInputStream fis; 
File image = new File("D:/AdvanceJavaWorkSpace/AdvanceOnLineVoatingMachineSystemUsingWebcam/WebContent/img/reg/register.jpg"); 



 PreparedStatement psImageInsertDatabase=null; 
    
  fis = new FileInputStream(image); 
 
      String sqlImageInsertDatabase="insert into reg values(?,?,?,?,?,?,?)"; 
	 
	 
      psImageInsertDatabase=con.prepareStatement(sqlImageInsertDatabase); 
    
	 psImageInsertDatabase.setString(1,a);	
	psImageInsertDatabase.setString(2,b);
	 psImageInsertDatabase.setString(3,base64u);
	// psImageInsertDatabase.setString(3,base64p);
   psImageInsertDatabase.setString(4,d);
	 psImageInsertDatabase.setString(5,e);
	 psImageInsertDatabase.setString(6,f);
	
	  // psImageInsertDatabase.setString(9,base64u);
psImageInsertDatabase.setBinaryStream(7, (InputStream)fis, (int)(image.length())); 

      psImageInsertDatabase.executeUpdate(); 
	  response.sendRedirect("welcome.jsp");
	 session.setAttribute("st",a);
	 
   } 
   catch(Exception ee) 
   { 
   
    out.print(ee.getMessage());
  
   } 


%> 
