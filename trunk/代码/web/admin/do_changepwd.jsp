<%@ page language="java" contentType="text/html; charset=gb2312"%>

<%@ page import="manager.*"%>

<div id=oDiv>3����Զ�����</div>
<script language="javascript">
var i=3;
function timeReload(){
  
     oDiv.innerText="3����Զ����أ���ʣ"+i+"��";
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
	out.println("<h3 align='center'>�޸ĳɹ���</h3>");
	session.removeAttribute("adminpwdchg");
	response.setHeader("Refresh", "3; URL=allmanager.jsp");
}
else{
	out.println("<h3 align='center'>�޸�ʧ�ܣ�</h3>");
	response.setHeader("Refresh", "3; URL=changepwd.jsp");
}

//response.sendRedirect("alluser.jsp");
//session.setAttribute("chenggong",username);
%>

