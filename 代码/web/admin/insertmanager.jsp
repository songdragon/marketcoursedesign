<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>��ӹ���Ա</title>
</head>
<script type=text/javascript>

function checkform(){
if(document.form.user_name.value==""||!(document.form.user_name.value).indexOf("/")>>!
(document.form.user_name.value).indexOf(".")){
	alert("�û���Ϊ��,���зǷ��ַ���");
}
else if(document.form.user_relname.value==""){
	alert("����Ϊ�գ�");
}else if(document.form.user_pwd.value==""||(document.form.user_pwd.value).length<6){
	alert("����Ϊ�ջ�̫�̣�Ϊ�˰�ȫ��������д��");
	document.form.user_pwd.focus();
}else if(document.form.user_ckpwd.value==""||document.form.user_ckpwd.value
!=document.form.user_pwd.value==){
	alert("��������Ϊ�գ�������벻һ�£�");
	document.form.user_ckpwd.focus();
}else if(document.form.actor.value==2){
	alert("��ѡ�����Ա��ɫ��");
}
else 
	document.form.submit();
}
 
</script>
<%
String info=request.getParameter("info");
if(("1").equals(info))
	out.println("<font sizes=4 color='red'>�û����Ѵ��ڣ����������룡</font><br><br>");
info="";
%>


<br>
<h3 align="center">��ӹ���Ա</h3>
<hr width="95%" color="#CCCCCC" size="1px">
<body>
<form method=post action="do_insert.jsp" name="form" id="form">
<table align=center width=300px>
<tr>
	<td align=right>&nbsp;<label>�û�����</label></td>
	<TD>
	<input name="user_name" type="text" class=input id="user_name" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<td align=right>&nbsp;<label>����Ա������</label></td>
	<TD>
	<input name="user_relname" type="text" class=input id="user_relname" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<Td align=right>&nbsp;<label>�� �룺</label></Td>
	<TD>
	<input name="user_pwd" type="password" class=input id="user_pwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<Td align=right>&nbsp;<label>ȷ�����룺</label></Td>
	<TD>
	<input name="user_ckpwd" type="ckpassword" class=input id="user_ckpwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
	</TD>
</tr>
<tr>
	<Td align=right>&nbsp;<label>����Ա��ɫ��</label></Td>
	<TD>
	<select name="actor">
		<option value=2>��ѡ��..</option>
		<option value=0>ϵͳ����Ա</option>
		<option value=1>��̨����Ա</option>
	</select>
	</TD>
</tr>

<tr>
<Td colspan="2" align="center" valign="middle">

<br>&nbsp;&nbsp;
  <input type=button name="" onClick="checkform()" value="�ύ">&nbsp;&nbsp;&nbsp;
  <input type="reset" name="resetB" value="����" onClick=""></Td>
</tr>
</table>

</form>
</body>
</html>