<%@ page language="java" contentType="text/html; charset=gb2312"%>

<%@ page import="manager.*"%>

<div id=oDiv>3秒后自动返回</div>
<script language="javascript">
var i=3;
function timeReload(){
  
     oDiv.innerText="3秒后自动返回，还剩"+i+"秒";
     i--;
}
setInterval("timeReload()",1000);
</script>

<br>
<hr width="95%" color="#CCCCCC" size="1px">
<%
String username=(String)session.getAttribute("adminpwdchg");
String password=request.getParameter("user_pwd");
ManagerOperator mo=new ManagerOperator();
if(mo.updateManagerpassword(username,password))
{
	out.println("<h3 align='center'>修改成功！</h3>");
	session.removeAttribute("adminpwdchg");
	response.setHeader("Refresh", "3; URL=allmanager.jsp");
}
else{
	out.println("<h3 align='center'>修改失败！</h3>");
	response.setHeader("Refresh", "3; URL=changepwd.jsp");
}

//response.sendRedirect("alluser.jsp");
//session.setAttribute("chenggong",username);
%>

