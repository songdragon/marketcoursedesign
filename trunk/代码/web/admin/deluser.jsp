<!--
 *×÷Õß£º¹¢ÐË»¶ 
-->
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*"%>
<%@ page import="manager.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META HTTP-EQUIV="Pragma" CONNECT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONNECT="no-cache">
<META HTTP-EQUIV="Expires" CONNECT="0">

<META HTTP-EQUIV="Refresh" CONTENT="2; URL=allmanager.jsp">

<title>É¾³ý¹ÜÀíÔ±ÐÅÏ¢</title>
</head>
<!-- check È¨ÏÞ -->
<%
String admin=null;
admin=request.getParameter("admin");
if(admin!=null)
	session.setAttribute("admin",admin);
if(session.getAttribute("admin")==null)
	response.sendRedirect("no_right.jsp");	
%>


<div id=oDiv>2Ãëºó×Ô¶¯·µ»Ø</div>
<script language="javascript">
var i=2;
function timeReload(){
  
     oDiv.innerText="2Ãëºó×Ô¶¯·µ»Ø£¬»¹Ê£"+i+"Ãë";
     i--;
 
}
setInterval("timeReload()",1000);
</script>

<br>
<hr width="95%" color="#CCCCCC" size="1px">
<%
String username=null;
username=request.getParameter("username");
if(username==null)
	username="";
if(username.equals("admin")){
	out.println("<h3 align='center'>¸ÃÕË»§²»ÔÊÐíÉ¾³ý£¡</h3>");
}
else{
	ManagerOperator mo=new ManagerOperator();
	if(mo.deleteManager(username))
		out.println("<h3 align='center'>É¾³ý³É¹¦£¡</h3>");
	else
		out.println("<h3 align='center'>É¾³ýÊ§°Ü£¡</h3>");
}
response.setHeader("Refresh", "2; URL=allmanager.jsp");
//response.sendRedirect("alluser.jsp");
//session.setAttribute("chenggong",username);

%>

<body>

</body>
</html>