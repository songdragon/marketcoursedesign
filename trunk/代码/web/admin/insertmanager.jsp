<!--
 *×÷Õß£º¹¢ÐË»¶ 
-->
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*"%>
 
<%
String admin=null;
admin=request.getParameter("admin");
if(admin!=null)
	session.setAttribute("admin",admin);
if(session.getAttribute("admin")==null)
	response.sendRedirect("no_right.jsp");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Ìí¼Ó¹ÜÀíÔ±</title>
</head>

<script type="text/javascript">
function checkform1(){
if(document.form1.user_name.value==""||!(document.form1.user_name.value).indexOf("/")||!
(document.form1.user_name.value).indexOf(".")||ischinese(document.form1.user_name.value)){
	alert("ÓÃ»§ÃûÎª¿Õ,»òÓÐ·Ç·¨×Ö·û£¡");
}
else if(document.form1.user_relname.value==""){
	alert("ÃÜÂëÎª¿Õ£¡");
}else if(document.form1.user_pwd.value==""||(document.form1.user_pwd.value).length<6||(document.form1.user_pwd.value).length>18){
	alert("ÃÜÂëÎª¿Õ»òÌ«¶Ì£¬ÎªÁË°²È«ÇëÖØÐÂÌîÐ´£¡");
	document.form1.user_pwd.focus();
}else if(document.form1.user_ckpwd.value==""||document.form1.user_ckpwd.value
!=document.form1.user_pwd.value){
	alert("ÖØÖÃÃÜÂëÎª¿Õ£¬»òºÍÃÜÂë²»Ò»ÖÂ£¡");
	document.form1.user_ckpwd.focus();
}else if(document.form1.actor.value=="2"){
	alert("ÇëÑ¡Ôñ¹ÜÀíÔ±½ÇÉ«£¡");
}
else 
	document.form1.submit();
}
 
function ischinese(s){
var ret;
for(var i=0;i<s.length;i++)
{
	if(ret=(s.charCodeAt(i)>=10000))
		break;
}
return ret;
}
</script>
<%
String info=request.getParameter("info");
if(("1").equals(info))
	out.println("<font sizes=4 color='red'>ÓÃ»§ÃûÒÑ´æÔÚ£¬ÇëÖØÐÂÊäÈë£¡</font><br><br>");
info="";
%>


<br>
<h3 align="center">Ìí¼Ó¹ÜÀíÔ±</h3>
<hr width="95%" color="#CCCCCC" size="1px">
<body>
<form method=post action="do_insert.jsp" name="form1" id="form1">
<table align=center width=500px>
<tr>
	<td align=right width="150">&nbsp;<label>ÓÃ»§Ãû£º</label></td>
	<TD>
	<input name="user_name" type="text" class=input id="user_name" style="FONT-SIZE: 12px; WIDTH: 110px" size="20" maxlength="18">
	</TD>
	<td align=left>
	<font size=2 color='red'>ÓÃ»§Ãû²»ÄÜÎªÖÐÎÄºÍÌØÊâ×Ö·û</font>
	</td>
</tr>
<tr>
	<td align=right>&nbsp;<label>¹ÜÀíÔ±ÐÕÃû£º</label></td>
	<TD width="100">
	<input name="user_relname" type="text" class=input id="user_relname" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<Td align=right>&nbsp;<label>ÃÜ Âë£º</label></Td>
	<TD>
	<input name="user_pwd" type="password" class=input id="user_pwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
	<td>
	<font size=2 color='red'>ÃÜÂë³¤¶ÈÎª6-18¸ö×Ö·û</font>
	</td>
</tr>
<tr>
	<Td align=right>&nbsp;<label>È·ÈÏÃÜÂë£º</label></Td>
	<TD>
	<input name="user_ckpwd" type="password" class=input id="user_ckpwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<Td align=right>&nbsp;<label>¹ÜÀíÔ±½ÇÉ«£º</label></Td>
	<TD>
	<select width=20 name="actor" style="width:100%">
		<option value=2>ÇëÑ¡Ôñ..</option>
		<option value=0>ÏµÍ³¹ÜÀíÔ±</option>
		<option value=1>ºóÌ¨¹ÜÀíÔ±</option>
	</select>
	</TD>
</tr>
<tr>
<td colspan="3" >
<br>
</td>
</tr>
<TR>

<Td colspan="3" align="center" valign="middle">
  &nbsp;&nbsp;&nbsp;<input type=button name="" onClick="checkform1()" value="Ìá½»">&nbsp;&nbsp;&nbsp;
<input type="reset" name="resetB" value="ÖØÌî" onClick="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</Td>
</TR>
</table>

</form>
</body>
</html>