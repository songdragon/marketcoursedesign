<%@ page language="java" contentType="text/html; charset=gb2312"
    %>
<%@ page import="manager.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META HTTP-EQUIV="Pragma" CONNECT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONNECT="no-cache">
<META HTTP-EQUIV="Expires" CONNECT="0">
<title>checklogin</title>
</head>
<%
String info="0";
String username=request.getParameter("user_name");
String password=request.getParameter("user_pwd");


ManagerOperator mo=new ManagerOperator();
boolean id=mo.getManagerInfo(username);
boolean pwd;
String actor;
if(id){
	pwd=mo.checkPassword(password);
	if(pwd){
		actor=mo.getActor();
		if(actor.equals("0")) /*0表示为系统管理员*/
		{
			session.setAttribute("actor",actor);
			session.setAttribute("admin",username);
			response.sendRedirect("main1.jsp");
		}
		else if(actor.equals("1"))    /*1表示为后台管理员*/
		{
			session.setAttribute("actor",actor);
			session.setAttribute("admin",username);
			response.sendRedirect("main2.jsp");
		}
			
		else{
			//out.print("No this actor");
			session.setAttribute("info","3");
			response.sendRedirect("index.jsp");
		}
	}
	else{
		//out.print("密码错误！");
		session.setAttribute("info","2");
		response.sendRedirect("index.jsp");
	}
}
else{
	//out.print("用户名不存在！");
	session.setAttribute("info","1");
	response.sendRedirect("index.jsp");
}

%>
<body>

</body>
</html>