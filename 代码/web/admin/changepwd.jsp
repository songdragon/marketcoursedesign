<!--
 *作者：耿兴欢 
-->
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*"%>
<%@ page import="manager.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<br>
<h3 align="center">修改密码</h3>
<hr width="95%" color="#CCCCCC" size="1px">
<script type=text/javascript>
function checkform(){
	if(document.form1.user_pwd.value==""||(document.form1.user_pwd.value).length<6){
		alert("密码为空或太短，为了安全请重新填写！");
		document.form1.user_pwd.focus();
	}
	else if(document.form1.user_ckpwd.value==""||(document.form1.user_ckpwd.value!=document.form1.user_pwd.value)){
		alert("重置密码为空，或和密码不一致！");
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
<label>用户名:</label>
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
<label>密 码</label></Td>
<TD>
<input name="user_pwd" type="password" id="user_pwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
</TD>
</TR>

<TR>
<Td>
<label>确认密码</label></Td>
<TD>
<input name="user_ckpwd" type="password" id="user_ckpwd" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
</TD>
</TR>
<TR>
<Td colspan="2" align="center" valign="middle">
<input type=button name="" onClick="checkform()" value="修改">&nbsp;&nbsp;&nbsp;
<input type="reset" name="resetB" value="重填" ></Td>
</TR>
</TR>
</table>
</form>
