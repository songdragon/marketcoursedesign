<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="dbconnection.*"%>
<%@ page import="manager.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META HTTP-EQUIV="Refresh" CONTENT="2; URL=allmanager.jsp">

<title>ɾ������Ա��Ϣ</title>
</head>

<div id=oDiv>2����Զ�����</div>
<script language="javascript">
var i=2;
function timeReload(){
  
     oDiv.innerText="2����Զ����أ���ʣ"+i+"��";
     i--;
 
}
setInterval("timeReload()",1000);
</script>

<br>
<hr width="95%" color="#CCCCCC" size="1px">
<%
String username=request.getParameter("username");
if(username.equals("admin")){
	out.println("<h3 align='center'>���˻�������ɾ����</h3>");
}
else{
	ManagerOperator mo=new ManagerOperator();
	if(mo.deleteManager(username))
		out.println("<h3 align='center'>ɾ���ɹ���</h3>");
	else
		out.println("<h3 align='center'>ɾ��ʧ�ܣ�</h3>");
}
response.setHeader("Refresh", "2; URL=allmanager.jsp");
//response.sendRedirect("alluser.jsp");
//session.setAttribute("chenggong",username);

%>

<body>

</body>
</html>