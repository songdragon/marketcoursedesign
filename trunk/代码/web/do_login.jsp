<%@ page language="java" pageEncoding="GB2312"%> 

<%@ page import="user.*"%>
<%@ page import="tools.*" %>
<%@ page import="java.util.*;" %>
<%
//���ߣ�������
//���ڣ�2006-6-7
//����������ʵ���û���¼����
%>
<%
	request.setCharacterEncoding("gb2312");
	String userid=request.getParameter("user_name");
	String userpass=request.getParameter("user_pass");
	CustomerOperator user=new CustomerOperator();
	int index=user.login(userid,userpass);
	String logged;                      //��¼�Ƿ�ɹ���ʶ��
	if(index==0){ 
		logged="0";         //�������
	}
	else if(index==1){
		logged="1";         //��¼�ɹ�
	}
	else{
		logged="0";         //�û�������
	}
	if(logged.equals("1")){    //��¼�ɹ�
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
	else                    //��¼���ɹ�
		session.setAttribute("logged",logged);
	response.sendRedirect("index.jsp");
	
	
	
%>