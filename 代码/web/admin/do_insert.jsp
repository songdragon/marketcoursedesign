<!--
 *作者：耿兴欢 
-->
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="manager.*" %>
<%
String admin=null;
admin=request.getParameter("admin");
if(admin!=null)
	session.setAttribute("admin",admin);
if(session.getAttribute("admin")==null)
	response.sendRedirect("no_right.jsp");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META HTTP-EQUIV="Pragma" CONNECT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONNECT="no-cache">
<META HTTP-EQUIV="Expires" CONNECT="0">

<META HTTP-EQUIV="Refresh" CONTENT="2; URL=insertmanager.jsp">
<META HTTP-EQUIV="Refresh" CONTENT="2; URL=allmanager.jsp">
<title>checklogin</title>
</head>
<div id=oDiv>2秒后自动返回</div>
<script language="javascript">
var i=2;
function timeReload(){
  
     oDiv.innerText="2秒后自动返回，还剩"+i+"秒";
     i--;
}
setInterval("timeReload()",1000);
</script>
<%
String info="0";
String username=request.getParameter("user_name");
String managerrelname=request.getParameter("user_relname");
String password=request.getParameter("user_pwd");
String actor=request.getParameter("actor");


ManagerOperator mo=new ManagerOperator();
boolean bool=mo.getManagerInfo(username);

if(bool){                      //用户名已存在
	out.println("<tr>用户名已存在！</tr>");
	response.sendRedirect("insertmanager.jsp?info=1");

}
else{

	bool=mo.insertManager(username,managerrelname,password,actor);
	if(bool){
		out.println("<h3 align='center'>添加成功！</h3>");
		//response.sendRedirect("allmanager.jsp");
		response.setHeader("Refresh", "2; URL=allmanager.jsp");
	}
	else{
		out.println("<h3 align='center'>添加失败！</h3>");
		response.setHeader("Refresh", "2; URL=insertmanager.jsp");
	}
}

%>

<body>

</body>
</html>