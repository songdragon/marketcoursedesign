<%@ page language="java" pageEncoding="GB2312"%>
<%@ page import="user.*;"%>
<%
	request.setCharacterEncoding("gb2312"); //设置编码格式
	
	CustomerOperator user=new CustomerOperator();
	String username=request.getParameter("txtNickName");//获许所需参数
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
	if(CustomerOperator.saveUser((CustomerAbstract)user)){ //注册成功，跳转到首页
		session.setAttribute("user_name",username);
		session.setAttribute("logged","1");
		response.sendRedirect("success_register.jsp");
	
		
	}
		
	
	else
		out.println("error");
%>		