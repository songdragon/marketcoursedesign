
<%@ page language="java" pageEncoding="GB18030"%> %>
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
	String oldpassword=request.getParameter("oldpassword");
	String newpassword=request.getParameter("newpassword");
	CustomerOperator user=new CustomerOperator();
	boolean index=user.updateCustomer(userid,oldpassword,newpassword);
	session.setAttribute("index",index);
%>
