
<%@ page language="java" pageEncoding="GB18030"%> 
<%@ page import="user.*"%>
<%@ page import="tools.*"%>
<%@ page import="java.util.*;" %>
<%
//���ߣ�������
//���ڣ�2008-6-7
//����������ʵ���û������޸Ĵ����jspҳ��
%>

<%
	String userid=(String)session.getAttribute("user_name");
	String oldpassword=request.getParameter("txtOldPassword");
	String newpassword=request.getParameter("txtRepeatPass");
	CustomerOperator user=new CustomerOperator();
	if(user.updateCustomer(userid,oldpassword,newpassword))
	{
		response.sendRedirect("index.jsp");
	}
	else
		response.sendRedirect("mypassword.jsp");
%>
