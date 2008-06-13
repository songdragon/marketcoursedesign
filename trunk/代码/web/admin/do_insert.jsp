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

<META HTTP-EQUIV="Refresh" CONTENT="2; URL=insertmanager.jsp">
<META HTTP-EQUIV="Refresh" CONTENT="2; URL=allmanager.jsp">
<title>checklogin</title>
</head>
<div id=oDiv>2Ãëºó×Ô¶¯·µ»Ø</div>
<script language="javascript">
var i=2;
function timeReload(){
  
     oDiv.innerText="2Ãëºó×Ô¶¯·µ»Ø£¬»¹Ê£"+i+"Ãë";
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

if(bool){                      //ÓÃ»§ÃûÒÑ´æÔÚ
	out.println("<tr>ÓÃ»§ÃûÒÑ´æÔÚ£¡</tr>");
	response.sendRedirect("insertmanager.jsp?info=1");

}
else{

	bool=mo.insertManager(username,managerrelname,password,actor);
	if(bool){
		out.println("<h1 align='center'>Ìí¼Ó³É¹¦£¡</h1>");
		//response.sendRedirect("allmanager.jsp");
		response.setHeader("Refresh", "2; URL=allmanager.jsp");
	}
	else{
		out.println("<h1 align='center'>Ìí¼ÓÊ§°Ü£¡</h1>");
		response.setHeader("Refresh", "2; URL=insertmanager.jsp");
	}
}

%>

<body>

</body>
</html>