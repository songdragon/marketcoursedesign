<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
      "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>管理员信息</title>
</head>

<%
	out.println("<table width='80%' border='1' cellpadding='0'"+
			"cellspacing='0' bordercolor='#CCC000' align='center'>");
	
	DBConnection conn=new DBConnection();
	String selectall="select * from manager";
	conn.excuteQuery(selectall);
	
	out.println("<table width='80%' border='1' bordercolor='#CCC000' align='center'>");
	out.println("<tr><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>"+
	"<th>&nbsp;</th><th><a href='insertmanager.jsp'>添加管理员</a></th></tr>");
	
	out.println("<tr><th>用户名</th>"+
			"<th>姓名</th>"+
			"<th>角色</th>"+"<th>&nbsp;</th><th>&nbsp;</th></tr>");

	while(conn.next()){
		out.println("<tr>");
		out.println("<th>"+conn.getString(1)+"</th><th>"+conn.getString(2)+
				"</th><th>"+conn.getString(4)+"</th>&nbsp;"+
				"<th align='right'><a href='deluser.jsp?username="+    //删除
				conn.getString(1)+"'>删除</a>&nbsp;</th>"+
				"<th align='right'><a href='changepwd.jsp?username="+    //修改密码
						conn.getString(1)+"'>修改密码</a>&nbsp;</th>");
		out.println("</tr>");	
	}
	conn.Close();
	out.print("</table>");
%>

<body>

</body>
</html>