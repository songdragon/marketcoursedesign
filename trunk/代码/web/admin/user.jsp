<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>管理员信息</title>
</head>

<%
	out.println("<table width='80%' border='1' bordercolor='#CCC000' align='center'>");
	out.println("<th>用户名</th>"+
			"<th>姓名</th>"+
			"<th>密码</th>"+
			"<th>角色</th>"+"<th>&nbsp;</th>");
	int x=5;
	while(x>0){
		out.println("<tr>");
		out.println("<th>geng</th>"+
				"<th>gengxinghuan</th>"+
				"<th>niehaidie</th>"+
				"<th>管理员</th>&nbsp;"+
				"<th align='right'><a href='deluser.jsp?username=delete success!"+"'>删除</a>&nbsp;</th>");
		out.println("</tr>");
		x--;
	}
	out.print("</table>");
%>

<body>
</body>
</html>