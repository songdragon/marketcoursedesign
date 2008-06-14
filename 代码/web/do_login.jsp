<%@ page language="java" pageEncoding="GB2312"%> 

<%@ page import="user.*"%>
<%@ page import="tools.*" %>
<%@ page import="java.util.*;" %>
<%
//作者：陈乔乔
//日期：2006-6-7
//功能描述：实现用户登录处理。
%>
<%
	request.setCharacterEncoding("gb2312");
	String userid=request.getParameter("user_name");
	String userpass=request.getParameter("user_pass");
	CustomerOperator user=new CustomerOperator();
	int index=user.login(userid,userpass);
	String logged;                      //登录是否成功标识符
	if(index==0){ 
		logged="0";         //密码错误
	}
	else if(index==1){
		logged="1";         //登录成功
	}
	else{
		logged="0";         //用户不存在
	}
	if(logged.equals("1")){    //登录成功
		CustomerInterface userinterface=null;
		CustomerOperator user1=Factory.getInstance().initCustomerOperator();
		Iterator it=user1.getCustomerInfor(userid);
		while(it.hasNext()){	
			userinterface=(CustomerInterface)it.next();
			String username=userinterface.getUserId();
			String usertype=userinterface.getCustomType();
			Integer point=userinterface.getPoint();
		session.setAttribute("logged",logged);
		session.setAttribute("point",point);
		session.setAttribute("user_name",username);
		session.setAttribute("user_type",usertype);
		
		}
	}
	else                    //登录不成功
		session.setAttribute("logged",logged);
	response.sendRedirect("index.jsp");
	
	
	
%>