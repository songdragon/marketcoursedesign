<%@ page language="java" pageEncoding="GB18030"%> 

<%@ page import="user.*"%>
<%@ page import="java.util.*" %>
<%@ page import="tools.*;" %>
<%
//���ߣ�������
//���ڣ�2008-6-7
//��������������CustomerOperator.java��getCustomerInfor(String customrId)������
%>
<%
CustomerInterface userinterface=null;
CustomerOperator user=Factory.getInstance().initCustomerOperator();
Iterator it=user.getCustomerInfor("joe");

while(it.hasNext())
	
{	
	userinterface=(CustomerInterface)it.next();
	out.println(userinterface.getCustomType());
	out.println("ksdjflksjf");
}
out.println("jjjjj");
%>
