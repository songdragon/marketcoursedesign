<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>添加管理员</title>
</head>
<script type=text/javascript>

function checkform(){
if(document.form.user_name.value==""||!(document.form.user_name.value).indexOf("/")>>!
(document.form.user_name.value).indexOf(".")){
	alert("用户名为空,或有非法字符！");
}
else if(document.form.user_relname.value==""){
	alert("密码为空！");
}else if(document.form.user_pwd.value==""||(document.form.user_pwd.value).length<6){
	alert("密码为空或太短，为了安全请重新填写！");
	document.form.user_pwd.focus();
}else if(document.form.user_ckpwd.value==""||document.form.user_ckpwd.value
!=document.form.user_pwd.value==){
	alert("重置密码为空，或和密码不一致！");
	document.form.user_ckpwd.focus();
}else if(document.form.actor.value==2){
	alert("请选择管理员角色！");
}
else 
	document.form.submit();
}
 
</script>
<%
String info=request.getParameter("info");
if(("1").equals(info))
	out.println("<font sizes=4 color='red'>用户名已存在，请重新输入！</font><br><br>");
info="";
%>


<br>
<h3 align="center">添加管理员</h3>
<hr width="95%" color="#CCCCCC" size="1px">
<body>
<form method=post action="do_insert.jsp" name="form" id="form">
<table align=center width=300px>
<tr>
	<td align=right>&nbsp;<label>用户名：</label></td>
	<TD>
	<input name="user_name" type="text" class=input id="user_name" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<td align=right>&nbsp;<label>管理员姓名：</label></td>
	<TD>
	<input name="user_relname" type="text" class=input id="user_relname" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<Td align=right>&nbsp;<label>密 码：</label></Td>
	<TD>
	<input name="user_pwd" type="password" class=input id="user_pwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<Td align=right>&nbsp;<label>确认密码：</label></Td>
	<TD>
	<input name="user_ckpwd" type="ckpassword" class=input id="user_ckpwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<Td align=right>&nbsp;<label>管理员角色：</label></Td>
	<TD>
	<select name="actor">
		<option value=2>请选择..</option>
		<option value=0>系统管理员</option>
		<option value=1>后台管理员</option>
	</select>
	</TD>
</tr>

<tr>
<Td colspan="2" align="center" valign="middle">

<br>&nbsp;&nbsp;
  <input type=button name="" onClick="checkform()" value="提交">&nbsp;&nbsp;&nbsp;
  <input type="reset" name="resetB" value="重填" onClick=""></Td>
</tr>
</table>

</form>
</body>
</html>