<!--
 *���ߣ����˻� 
-->
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*"%>
<%@ page import="manager.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<br>
<h3 align="center">�޸�����</h3>
<hr width="95%" color="#CCCCCC" size="1px">
<script type=text/javascript>
function checkform(){
	if(document.form1.user_pwd.value==""||(document.form1.user_pwd.value).length<6){
		alert("����Ϊ�ջ�̫�̣�Ϊ�˰�ȫ��������д��");
		document.form1.user_pwd.focus();
	}
	else if(document.form1.user_ckpwd.value==""||(document.form1.user_ckpwd.value!=document.form1.user_pwd.value)){
		alert("��������Ϊ�գ�������벻һ�£�");
		document.form1.user_ckpwd.focus();
	}
	else{
		document.form1.submit();
	}	
}
</script>




<form method=post action="do_changepwd.jsp" name="form1" id="form1">

<table align=center width=200px>

<TR>
<TD>
<label>�û���:</label>
</TD>
<td>
<%out.println(request.getParameter("username"));
	if(session.getAttribute("adminpwdchg")==null)
		session.setAttribute("adminpwdchg",request.getParameter("username"));
	%>

</td>
</TR>

<TR>
<Td>
<label>�� ��</label></Td>
<TD>
<input name="user_pwd" type="password" id="user_pwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
</TD>
</TR>

<TR>
<Td>
<label>ȷ������</label></Td>
<TD>
<input name="user_ckpwd" type="password" id="user_ckpwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
</TD>
</TR>
<TR>
<Td colspan="2" align="center" valign="middle">
<input type=button name="" onClick="checkform()" value="�޸�">&nbsp;&nbsp;&nbsp;
<input type="reset" name="resetB" value="����" ></Td>
</TR>
</TR>
</table>
</form>
