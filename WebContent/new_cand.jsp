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
.style13 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12;
}
.style15 {font-size: 10; }
.style16 {color: #000000; font-size: 12px; }
.style17 {color: #000000; font-weight: bold; font-size: 12px; }
.style18 {
	font-size: large;
	font-weight: bold;
	color: #FF0000;
}
.style19 {color: #FF0000}
-->
</style>
<style type="text/css">
.style191 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 36px;
	color: #FFF;
}
#form1 table tr td table tr td div strong {
	color: #FFF;
	text-align: left;
}
</style>
<style type="text/css">
.style151 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 36px; }
</style>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-color: #000;
}
</style>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form id="form1" name="form1" method="post" action="new_cand_code.jsp">

<table width="90%" border="0" align="center">
      <tr>
        <td bgcolor="#1A42A2"><img src="images/hd.jpg" width="962" height="192" /></td>
        </tr>
      <tr>
        <td height="33" bgcolor="#EEEEEE"><ul id="MenuBar2" class="MenuBarHorizontal">
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
        <td bgcolor="#FFFFFF"><p>&nbsp;</p>
          <table  width="61%" height="313" border="1" align="center" cellpadding="6" cellspacing="6" bordercolor="#FDCB50" rules="none">
            <tr>
              <td colspan="2" align="center"><h1>New Candidate</h1></td>
              </tr>
            <tr>
              <td width="178" height="38">Candidate Name</td>
              <td width="264"><span id="sprytextfield9">
                <input name="t1" type="text" id="t1" size="44" />
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
  </tr>
            <tr>
              <td height="43">Email Id</td>
              <td><span id="sprytextfield10">
                <input name="t2" type="text" id="t2" size="44" />
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
  </tr>
            <tr>
              <td height="46">Party Name</td>
              <td><span id="sprytextfield11">
                <input name="t3" type="text" id="t3" size="44" />
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
  </tr>
            <tr>
              <td height="36">Party Symbol </td>
              <td><input name="f1" type="file" id="f1" /></td>
              </tr>
            <tr>
              <td height="35">&nbsp;</td>
              <td><input type="submit" name="Submit" value="Submit" /></td>
              </tr>
            <tr>
              <td height="35" colspan="2" align="center"><%=session.getAttribute("msg")%>&nbsp;&nbsp;<a href="index.jsp">Back</a></td>
            </tr>
            </table>
        <p>&nbsp;</p></td>
      </tr>
      <tr>
        <td height="33" bgcolor="#FF9326">&nbsp;</td>
        </tr>
    </table>
    
  </form>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4");
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5");
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6");
var sprytextfield7 = new Spry.Widget.ValidationTextField("sprytextfield7");
var sprytextfield8 = new Spry.Widget.ValidationTextField("sprytextfield8");
var sprytextfield11 = new Spry.Widget.ValidationTextField("sprytextfield11");
var sprytextfield9 = new Spry.Widget.ValidationTextField("sprytextfield9");
var sprytextfield10 = new Spry.Widget.ValidationTextField("sprytextfield10");
var MenuBar2 = new Spry.Widget.MenuBar("MenuBar2", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
