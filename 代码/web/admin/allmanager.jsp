<!--
 *作者：耿兴欢 
-->
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*" %>
<!-- check 权限 -->
<%
String admin=null;
admin=request.getParameter("admin");
if(admin!=null)
	session.setAttribute("admin",admin);
if(session.getAttribute("admin")==null)
	response.sendRedirect("no_right.jsp");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
      "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

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
	
	out.println("<tr><th>用户名</th>"+
			"<th>姓名</th>"+
			"<th>角色</th>"+"<th>&nbsp;</th><th>&nbsp;</th></tr>");
	String actor="";
	while(conn.next()){
		out.println("<tr>");
		out.println("<th>"+conn.getString(1)+"</th><th>"+conn.getString(2));
		if(conn.getString(4).equals("0"))
			actor="系统管理员";
		else if(conn.getString(4).equals("1"))
			actor="后台管理员";
		out.println("</th><th>"+actor+"</th>"+
				"<th align='center'><a href='deluser.jsp?username="+    //删除
				conn.getString(1)+"'>删除</a></th>"+
				"<th align='center'><a href='changepwd.jsp?username="+    //修改密码
						conn.getString(1)+"'>修改密码</a>&nbsp;</th>");
		out.println("</tr>");	
	}
	conn.Close();
	out.print("</table>");
%>

</html>