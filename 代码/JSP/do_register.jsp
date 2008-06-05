<%@ page import="user.*;"%>
<%
	CustomerOperator user=new CustomerOperator();
	String username=request.getParameter("txtNickName");
	String email=request.getParameter("txtEmail");
	String password=request.getParameter("txtPassword");
	out.println(username);
	user.setUserId(username);
	user.setPassword(password);
	user.setEmail(email);
	if(CustomerOperator.saveUser((CustomerAbstract)user))
		response.sendRedirect("success_register.jsp");
	else
		out.println("error");
%>		