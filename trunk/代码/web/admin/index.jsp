<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>管理员登陆</title>
</head>
<script type=text/javascript>

function checkform(){
if(document.form1.user_name.value==""){
	alert("用户名不能为空！");
}
else if(document.form1.user_pwd.value==""){
	alert("密码不能为空！");
}
else 
	document.form1.submit();
}
 
</script>
<body>
<h1 align="center">网上购物管理系统</h1>
<h3 align="center">后台管理</h3>
<form method=post action="checklogin.jsp" name="form1" id="form1">

<table align=center width=200px>
<TR>
<%
String info=request.getParameter("info");
if(("1").equals(info))
	out.println("<font sizes=4 color='red'>用户名不存在，请重新登陆！</font><br><br>");
else if(("2").equals(info))
	out.println("<font sizes=4 color='red'>密码不正确，请重新登陆！</font><br><br>");

else if(("3").equals(info))
	out.println("<font sizes=4 color='red'>无此角色，请重新登陆！</font><br><br>");
info="";
%>
<TD>
<label>用户名</label></TD>
<TD>
<input name="user_name" type="text" class=input id="user_name" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
</TD>

</TR>
<TR>
<Td>
<label>密 码</label></Td>
<TD>
<input name="user_pwd" type="password" class=input id="user_pwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
</TD>
</TR>
<TR>
<Td colspan="2" align="center" valign="middle">
  <input type=button name="" onClick="checkform()" value="登录">
<input type="reset" name="resetB" value="重填" onClick=""></Td>
</TR>
</TR>
</table>
</form>
</body>
</html>