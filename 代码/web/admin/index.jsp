<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>����Ա��½</title>
</head>
<script type=text/javascript>

function checkform(){
if(document.form1.user_name.value==""){
	alert("�û�������Ϊ�գ�");
}
else if(document.form1.user_pwd.value==""){
	alert("���벻��Ϊ�գ�");
}
else 
	document.form1.submit();
}
 
</script>
<body>
<h1 align="center">���Ϲ������ϵͳ</h1>
<h3 align="center">��̨����</h3>
<form method=post action="checklogin.jsp" name="form1" id="form1">

<table align=center width=200px>
<TR>
<%
String info=request.getParameter("info");
if(("1").equals(info))
	out.println("<font sizes=4 color='red'>�û��������ڣ������µ�½��</font><br><br>");
else if(("2").equals(info))
	out.println("<font sizes=4 color='red'>���벻��ȷ�������µ�½��</font><br><br>");

else if(("3").equals(info))
	out.println("<font sizes=4 color='red'>�޴˽�ɫ�������µ�½��</font><br><br>");
info="";
%>
<TD>
<label>�û���</label></TD>
<TD>
<input name="user_name" type="text" class=input id="user_name" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
</TD>

</TR>
<TR>
<Td>
<label>�� ��</label></Td>
<TD>
<input name="user_pwd" type="password" class=input id="user_pwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
</TD>
</TR>
<TR>
<Td colspan="2" align="center" valign="middle">
  <input type=button name="" onClick="checkform()" value="��¼">
<input type="reset" name="resetB" value="����" onClick=""></Td>
</TR>
</TR>
</table>
</form>
</body>
</html>