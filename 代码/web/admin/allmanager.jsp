<!--
 *���ߣ����˻� 
-->
<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@ page import="dbconnection.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
      "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>����Ա��Ϣ</title>
</head>

<%
	
	out.println("<h3 align='center'>����Ա��Ϣ�б�</h3>"+
		"<hr width='95%' color='#CCCCCC' size='px'>");
	out.println("<table width='80%' border='1' cellpadding='0'"+
			"cellspacing='0' bordercolor='#CCC000' align='center'>");
	
	DBConnection conn=new DBConnection();
	String selectall="select * from manager";
	conn.excuteQuery(selectall);
	
	out.println("<table width='80%' border='1' bordercolor='#CCC000' align='center'>");
	
	out.println("<tr><th>�û���</th>"+
			"<th>����</th>"+
			"<th>��ɫ</th>"+"<th>&nbsp;</th><th>&nbsp;</th></tr>");
	String actor=new String();
	while(conn.next()){
		out.println("<tr>");
		out.println("<th>"+conn.getString(1)+"</th><th>"+conn.getString(2));
		if(conn.getString(4).equals("0"))
			actor="ϵͳ����Ա";
		else if(conn.getString(4).equals("1"))
			actor="��̨����Ա";
		out.println("</th><th>"+actor+"</th>&nbsp;"+
				"<th align='center'><a href='deluser.jsp?username="+    //ɾ��
				conn.getString(1)+"'>ɾ��</a>&nbsp;</th>"+
				"<th align='center'><a href='changepwd.jsp?username="+    //�޸�����
						conn.getString(1)+"'>�޸�����</a>&nbsp;</th>");
		out.println("</tr>");	
	}
	conn.Close();
	out.print("</table>");
%>

</html>