
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@page import="dbconnection.*"%> 
<%
//作者：江军 
//日期：2008-6-8
//功能描述：实现在订单搜索结果的显示功能。
%>

<html>
<body>
<%
DBConnection dbconnection =new DBConnection();
String sql="select * from order1";
dbconnection.excuteQuery(sql);
out.print("<table>");
out.println("<tr align=center>"+
		"<td>订单号</td>"+
		"<td>总金额</td>"+
		"<td>用户名</td>"+
		"<td>收件人</td>"+
		"<td>地址</td>"+
		"<td>邮编</td>"+
		"<td>电话</td>"+
		"<td>状态</td>"+
		"<td>订货日期</td>"+
		"<td>发货日期</td>"+
		"</tr>");



while(dbconnection.next()){
	out.println("<tr align=center>"+
			"<td>"+dbconnection.getString(1)+"</td>"+
			"<td>"+dbconnection.getString(2)+"</td>"+
			"<td>"+dbconnection.getString(3)+"</td>"+
			"<td>"+dbconnection.getString(4)+"</td>"+
			"<td>"+dbconnection.getString(5)+"</td>"+
			"<td>"+dbconnection.getString(6)+"</td>"+
			"<td>"+dbconnection.getString(7)+"</td>"+
			"<td>"+dbconnection.getString(8)+"</td>"+
			"<td>"+dbconnection.getString(9)+"</td>"+
			"<td>"+dbconnection.getString(10)+"</td>"+
			"</tr>");
}
out.print("</table>");
%>
</body>
</html>