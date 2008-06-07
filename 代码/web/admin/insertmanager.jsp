<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Ìí¼Ó¹ÜÀíÔ±</title>
</head>
<script type=text/javascript>

function checkform(){
if(document.form.user_name.value==""||!(document.form.user_name.value).indexOf("/")>>!
(document.form.user_name.value).indexOf(".")){
	alert("ÓÃ»§ÃûÎª¿Õ,»òÓÐ·Ç·¨×Ö·û£¡");
}
else if(document.form.user_relname.value==""){
	alert("ÃÜÂëÎª¿Õ£¡");
}else if(document.form.user_pwd.value==""||(document.form.user_pwd.value).length<6){
	alert("ÃÜÂëÎª¿Õ»òÌ«¶Ì£¬ÎªÁË°²È«ÇëÖØÐÂÌîÐ´£¡");
	document.form.user_pwd.focus();
}else if(document.form.user_ckpwd.value==""||document.form.user_ckpwd.value
!=document.form.user_pwd.value==){
	alert("ÖØÖÃÃÜÂëÎª¿Õ£¬»òºÍÃÜÂë²»Ò»ÖÂ£¡");
	document.form.user_ckpwd.focus();
}else if(document.form.actor.value==2){
	alert("ÇëÑ¡Ôñ¹ÜÀíÔ±½ÇÉ«£¡");
}
else 
	document.form.submit();
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
<form method=post action="do_insert.jsp" name="form" id="form">
<table align=center width=300px>
<tr>
	<td align=right>&nbsp;<label>ÓÃ»§Ãû£º</label></td>
	<TD>
	<input name="user_name" type="text" class=input id="user_name" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<td align=right>&nbsp;<label>¹ÜÀíÔ±ÐÕÃû£º</label></td>
	<TD>
	<input name="user_relname" type="text" class=input id="user_relname" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<Td align=right>&nbsp;<label>ÃÜ Âë£º</label></Td>
	<TD>
	<input name="user_pwd" type="password" class=input id="user_pwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<Td align=right>&nbsp;<label>È·ÈÏÃÜÂë£º</label></Td>
	<TD>
	<input name="user_ckpwd" type="ckpassword" class=input id="user_ckpwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<Td align=right>&nbsp;<label>¹ÜÀíÔ±½ÇÉ«£º</label></Td>
	<TD>
	<select name="actor">
		<option value=2>ÇëÑ¡Ôñ..</option>
		<option value=0>ÏµÍ³¹ÜÀíÔ±</option>
		<option value=1>ºóÌ¨¹ÜÀíÔ±</option>
	</select>
	</TD>
</tr>

<tr>
<Td colspan="2" align="center" valign="middle">

<br>&nbsp;&nbsp;
  <input type=button name="" onClick="checkform()" value="Ìá½»">&nbsp;&nbsp;&nbsp;
  <input type="reset" name="resetB" value="ÖØÌî" onClick=""></Td>
</tr>
</table>

</form>
</body>
</html>