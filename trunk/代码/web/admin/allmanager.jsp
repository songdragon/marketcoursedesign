<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
      "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>¹ÜÀíÔ±ÐÅÏ¢</title>
</head>

<%
	out.println("<table width='80%' border='1' cellpadding='0'"+
			"cellspacing='0' bordercolor='#CCC000' align='center'>");
	
	DBConnection conn=new DBConnection();
	String selectall="select * from manager";
	conn.excuteQuery(selectall);
	
	out.println("<table width='80%' border='1' bordercolor='#CCC000' align='center'>");
	out.println("<tr><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th>"+
	"<th>&nbsp;</th><th><a href='insertmanager.jsp'>Ìí¼Ó¹ÜÀíÔ±</a></th></tr>");
	
	out.println("<tr><th>ÓÃ»§Ãû</th>"+
			"<th>ÐÕÃû</th>"+
			"<th>½ÇÉ«</th>"+"<th>&nbsp;</th><th>&nbsp;</th></tr>");

	while(conn.next()){
		out.println("<tr>");
		out.println("<th>"+conn.getString(1)+"</th><th>"+conn.getString(2)+
				"</th><th>"+conn.getString(4)+"</th>&nbsp;"+
				"<th align='right'><a href='deluser.jsp?username="+    //É¾³ý
				conn.getString(1)+"'>É¾³ý</a>&nbsp;</th>"+
				"<th align='right'><a href='changepwd.jsp?username="+    //ÐÞ¸ÄÃÜÂë
						conn.getString(1)+"'>ÐÞ¸ÄÃÜÂë</a>&nbsp;</th>");
		out.println("</tr>");	
	}
	conn.Close();
	out.print("</table>");
%>

<body>

</body>
</html>