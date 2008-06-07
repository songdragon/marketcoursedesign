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
	response.sendRedirect("index.jsp?info=4");     //ÓÃ»§ÃûÎª¿Õ
}
if(password.equals("")){
	info="5";
	//response.sendRedirect("index.jsp");    //ÃÜÂëÎª¿Õ  
}
ManagerOperator mo=new ManagerOperator();
boolean id=mo.getManagerInfo(username);
boolean pwd;
String actor;
if(id){
	pwd=mo.checkPassword(password);
	if(pwd){
		actor=mo.getActor();
		if(actor.equals("0"))         /*0±íÊ¾ÎªÏµÍ³¹ÜÀíÔ±*/
			response.sendRedirect("main1.jsp");
		else if(actor.equals("1"))    /*1±íÊ¾ÎªºóÌ¨¹ÜÀíÔ±*/
			response.sendRedirect("main2.jsp");
		else
			//out.print("No this actor");
			response.sendRedirect("index.jsp?info=3");
	}
	else{
		//out.print("ÃÜÂë´íÎó£¡");
		response.sendRedirect("index.jsp?info=2");
	}
}
else{
	//out.print("ÓÃ»§Ãû²»´æÔÚ£¡");
	response.sendRedirect("index.jsp?info=1");
}

%>
<body>

</body>
</html>