<!--
 *×÷Õß£º¹¢ÐË»¶ 
-->
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="manager.*" %>

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
		if(actor.equals("0")) /*0±íÊ¾ÎªÏµÍ³¹ÜÀíÔ±*/
		{
			session.setAttribute("actor",actor);
			session.setAttribute("admin",username);
			response.sendRedirect("main1.jsp");
		}
		else if(actor.equals("1"))    /*1±íÊ¾ÎªºóÌ¨¹ÜÀíÔ±*/
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
		//out.print("ÃÜÂë´íÎó£¡");
		session.setAttribute("info","2");
		response.sendRedirect("index.jsp");
	}
}
else{
	//out.print("ÓÃ»§Ãû²»´æÔÚ£¡");
	session.setAttribute("info","1");
	response.sendRedirect("index.jsp");
}

%>
<body>

</body>
</html>