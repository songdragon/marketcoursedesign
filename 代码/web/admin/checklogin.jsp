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

if(username.equals("")){
	response.sendRedirect("index.jsp?info=4");     //用户名为空
}
if(password.equals("")){
	info="5";
	//response.sendRedirect("index.jsp");    //密码为空  
}
ManagerOperator mo=new ManagerOperator();
boolean id=mo.getManagerInfo(username);
boolean pwd;
String actor;
if(id){
	pwd=mo.checkPassword(password);
	if(pwd){
		actor=mo.getActor();
		if(actor.equals("0"))         /*0表示为系统管理员*/
			response.sendRedirect("main1.jsp");
		else if(actor.equals("1"))    /*1表示为后台管理员*/
			response.sendRedirect("main2.jsp");
		else
			//out.print("No this actor");
			response.sendRedirect("index.jsp?info=3");
	}
	else{
		//out.print("密码错误！");
		response.sendRedirect("index.jsp?info=2");
	}
}
else{
	//out.print("用户名不存在！");
	response.sendRedirect("index.jsp?info=1");
}

%>
<body>

</body>
</html>