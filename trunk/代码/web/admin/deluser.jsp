<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*"%>
<%@ page import="manager.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META HTTP-EQUIV="Refresh" CONTENT="3; URL=allmanager.jsp">

<title>删除管理员信息</title>
</head>
<br>
<hr width="95%" color="#CCCCCC" size="1px">
<%
String username=request.getParameter("username");

ManagerOperator mo=new ManagerOperator();
if(mo.deleteManager(username))
	out.println(username+"删除成功！");
else
	out.println(username+"删除失败！");

response.setHeader("Refresh", "3; URL=allmanager.jsp");
//response.sendRedirect("alluser.jsp");
//session.setAttribute("chenggong",username);
%>

<body>

</body>
</html>