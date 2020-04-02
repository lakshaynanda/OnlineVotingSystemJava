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
.style15 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 36px; }
-->
</style>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-image: url(images/association-elections.jpg);
}
</style>
</head>
<script>
function refreshPage()
{
    window.location.reload();
} 
</script>
 <%@ include file="conn.jsp"%>
<body>
  <form  action="voterlogin_code.jsp" method="post" name="form1" id="form1">
<p>&nbsp;</p>
<p>&nbsp;</p>
<table  rules="none" width="70%" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td height="294" valign="top"><p><a href="welcome.jsp" class="style14"></a>
      
      </p>
      <table width="600" border="6" align="center" cellpadding="7" cellspacing="7"  rules="rows">
        <tr>
          <td colspan="2" align="center" bgcolor="#FFFFFF"><h1>Voter  Login</h1></td>
          </tr>
        <tr>
          <td width="181" height="38" align="left" bgcolor="#FFFFFF">Voter Id</td>
          <td width="354" bgcolor="#FFFFFF"><span id="sprytextfield1">
            <input name="t1" type="text" id="t1" size="44" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
        <tr>
          <td height="46" bgcolor="#FFFFFF">Password</td>
          <td bgcolor="#FFFFFF"><span id="sprytextfield3">
            <input name="t2" type="text" id="t2" size="44" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        
        <tr>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF"><input type="submit" name="Submit" value="Submit" />
            <a href="voter_reg.jsp" class="style9"></a></td>
        </tr>
        </table>
      <p>&nbsp;</p>
      <p class="style10"></p>
      
      <p class="style10"><br />
      </p></td>
  </tr>
</table>
<p>&nbsp;</p>
  </form>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
</script>
</body>
</html>
