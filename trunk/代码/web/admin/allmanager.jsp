<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@ page import="dbconnection.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
      "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>管理员信息</title>
</head>

<%
	
	out.println("<h3 align='center'>管理员信息列表</h3>"+
		"<hr width='95%' color='#CCCCCC' size='px'>");
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
	String actor=new String();
	while(conn.next()){
		out.println("<tr>");
		out.println("<th>"+conn.getString(1)+"</th><th>"+conn.getString(2));
		if(conn.getString(4).equals("0"))
			actor="系统管理员";
		else if(conn.getString(4).equals("1"))
			actor="后台管理员";
		out.println("</th><th>"+actor+"</th>&nbsp;"+
				"<th align='center'><a href='deluser.jsp?username="+    //删除
				conn.getString(1)+"'>删除</a>&nbsp;</th>"+
				"<th align='center'><a href='changepwd.jsp?username="+    //修改密码
						conn.getString(1)+"'>修改密码</a>&nbsp;</th>");
		out.println("</tr>");	
	}
	conn.Close();
	out.print("</table>");
%>

</html>