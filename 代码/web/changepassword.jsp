
<%@ page language="java" pageEncoding="GB18030"%> 
<%@ page import="user.*"%>
<%@ page import="tools.*"%>
<%@ page import="java.util.*;" %>
<%
//作者：陈乔乔
//日期：2008-6-7
//功能描述：实现用户密码修改处理的jsp页面
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
