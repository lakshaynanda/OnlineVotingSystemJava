<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
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
.style13 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.style14 {
	font-family: "Courier New", Courier, monospace;
	color: #000000;
}
td {
}
-->
</style>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
</head>

<body>
  <form id="form1" name="form1" method="post" action="userregister_code.jsp">
<table  width="90%" border="1" align="center" cellpadding="8" cellspacing="8" rules="none" >
  <tr>
    <td height="94" align="center" valign="top" bgcolor="#12389B"><h1><img src="images/hd.jpg" width="962" height="192" /></h1></td>
  </tr>
  <tr>
    <td height="25" valign="top" bgcolor="#EEEEEE"><ul id="MenuBar2" class="MenuBarHorizontal">
      <li><a href="index.jsp">Home</a></li>
      <li><a href="About.jsp">About ElectionsOnline</a></li>
      <li><a href="index_login.html">User Login</a></li>
      <li><a href="index.html">New Register</a></li>
      <li><a href="candicatelogin.jsp">Candidate Login</a></li>
      <li><a href="admin_login.jsp">Administrator</a></li>
      <li><a href="Gallery.jsp">Gallary</a></li>
    </ul></td>
  </tr>
  <tr>
    <td width="768" height="396" valign="top"><p>&nbsp;</p>
      
      
      <table width="885" height="565" border="1" align="center" cellpadding="5" cellspacing="5"  rules="none">
        <tr>
          <td colspan="2" bgcolor="#FF9326"><h1>Voter Register</h1></td>
          </tr>
        <tr>
          <td width="233" height="34">Aadhaar Number</td>
          <td width="611"><span id="sprytextfield1">
            <input name="text1" type="text" id="text1" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
  </tr>
        <tr>
          <td height="34">Name</td>
          <td><span id="sprytextfield2">
            <input name="text2" type="text" id="text2" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
  </tr>
        <tr>
          <td height="34">Password</td>
          <td><span id="sprytextfield3">
            <input name="text3" type="password" id="text3" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
  </tr>
        <tr>
          <td height="34">Email Id</td>
          <td><span id="sprytextfield4">
            <input name="text4" type="text" id="text4" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
  </tr>
        <tr>
          <td height="34">Mobile Number</td>
          <td><span id="sprytextfield5">
            <input name="text5" type="text" id="text5" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
        <tr>
          <td height="191">Address</td>
          <td><span id="sprytextfield6">
            <textarea name="text6" cols="99" rows="11" id="text6"></textarea>
            <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
          </tr>
        <tr>
          <td height="36">&nbsp;</td>
          <td><input type="submit" name="button" id="button" value="Submit" /></td>
          </tr>
        <tr>
          <td colspan="2" align="center" bgcolor="#FF9326"><%=session.getAttribute("msg")%></td>
          </tr>
        <tr> </tr>
        <tr> </tr>
        <tr> </tr>
        <tr> </tr>
        <tr> </tr>
        <tr> </tr>
        <tr> </tr>
        <tr> </tr>
      </table>      <h2 itemprop="name">&nbsp;</h2></td>
  </tr>
  <tr>
    <td height="36" align="center" valign="top">Voting Inc.&nbsp;<a target="_blank" rel="nofollow" href="http://concept9.ca/"></a></td>
  </tr>
</table>
 </form>
<script type="text/javascript">
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "none");
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "none");
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5", "none");
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6", "email");
var MenuBar2 = new Spry.Widget.MenuBar("MenuBar2", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
