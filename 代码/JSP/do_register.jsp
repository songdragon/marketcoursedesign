<%@ page import="user.*;"%>
<%
	CustomerOperator user=new CustomerOperator();
	String username=request.getParameter("txtNickName");
	String email=request.getParameter("txtEmail");
	String password=request.getParameter("txtPassword");
	//out.println(username);
	user.setUserId(username);
	user.setPassword(password);
	user.setEmail(email);
	//out.println(user.getUserId());
	//out.println(user.getPassword());
	//out.println(user.getEmail());
	//out.println(CustomerOperator.saveUser((CustomerAbstract)user));
	if(CustomerOperator.saveUser((CustomerAbstract)user)){
		response.sendRedirect("success_register.jsp");
		session.setAttribute("username",username);
	}
		
	
	else
		out.println("error");
%>		