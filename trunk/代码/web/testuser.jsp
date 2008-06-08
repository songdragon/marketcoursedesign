<%@ page language="java" pageEncoding="GB18030"%> 

<%@ page import="user.*"%>
<%@ page import="java.util.*" %>
<%@ page import="tools.*;" %>
<%
//作者：陈乔乔
//日期：2008-6-7
//功能描述：测试CustomerOperator.java的getCustomerInfor(String customrId)方法。
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
