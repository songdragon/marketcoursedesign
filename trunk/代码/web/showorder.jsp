
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@page import="dbconnection.*"%> 
<%
//���ߣ����� 
//���ڣ�2008-6-8
//����������ʵ���ڶ��������������ʾ���ܡ�
%>

<html>
<body>
<%
DBConnection dbconnection =new DBConnection();
String sql="select * from order1";
dbconnection.excuteQuery(sql);
out.print("<table>");
out.println("<tr align=center>"+
		"<td>������</td>"+
		"<td>�ܽ��</td>"+
		"<td>�û���</td>"+
		"<td>�ռ���</td>"+
		"<td>��ַ</td>"+
		"<td>�ʱ�</td>"+
		"<td>�绰</td>"+
		"<td>״̬</td>"+
		"<td>��������</td>"+
		"<td>��������</td>"+
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