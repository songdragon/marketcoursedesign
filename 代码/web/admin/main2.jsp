<%@ page contentType="text/html;charset=gb2312" language="java"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>网上购物管理系统（后台管理）</title>
</head>
<!-- check 权限 -->
<%
String admin=null;
admin=request.getParameter("admin");
if(admin!=null)
	session.setAttribute("admin",admin);
if(session.getAttribute("admin")==null)
	response.sendRedirect("no_right.jsp");	
%>

<link href="../css.css" rel="stylesheet" type="text/css">
<frameset rows="363*" cols="184,*" framespacing="1" frameborder="yes" border="1" bordercolor="#999999">
  <frame src="left2.jsp" name="leftFrame" scrolling="NO" >
  <frame src="welcome.jsp" name="mainFrame">
</frameset>
<noframes>
<body>
</body>
</noframes>
</html>
