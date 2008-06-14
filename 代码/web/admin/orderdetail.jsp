<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@ page import="order.*"%>
<%@ page import="java.util.*" %>
<%@ page import="tools.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<table width="100%">
<tr width="100%" align="center">
<td width="10%">订单号</td>
<td width="10%">商品编号</td>
<td width="20%">商品名</td>
<td width="10%">售价</td>
<td width="10%">折扣</td>
<td width="20%">折后价</td>
<td width="10%">数量</td>
</tr>
<%
	String order_id=request.getParameter("order_id");
	Iterator arraylist=null;
	InterfaceOrderdetail interfaceorderdetail=null;
	String productsid=null;
	String productsname=null;
	String price=null;
	String discount=null;
	String discountprice=null;
	int quantity=0;
	int k=0;
	
	OrderdetailOperator orderdetail=Factory.getInstance().initOrderdetailOperator();
	//InterfaceOrderdetail interfaceorderdetail=Factory.getInstance().initOrderdetail();
	arraylist=orderdetail.getOrderdetail(order_id);
	String bgcolor="#ccccff";
	while(arraylist.hasNext()){
	interfaceorderdetail=(InterfaceOrderdetail)arraylist.next();
		productsid=interfaceorderdetail.getproductsid();
		productsname=interfaceorderdetail.getproductsname();
		price=float2.f2f2(interfaceorderdetail.getprice());
		discount=float2.f2f2(interfaceorderdetail.getdiscount());
		discountprice=float2.f2f2(interfaceorderdetail.getdiscountprice());
		quantity=interfaceorderdetail.getquantity();
	%>
		<tr align="center"  bgcolor=<%=bgcolor%>>
			<td><%=order_id %></td>
			<td><%=productsid %></td>
			<td><%=productsname %></td>
			<td><%=price %></td>
			<td><%=discount %></td>
			<td><%=discountprice %></td>
			<td><%=quantity %></td>
		</tr>
		
<%	
		 k++;
		 if(k%2!=0)
		{bgcolor="#ccccff";}
		else
		{bgcolor="#ffffff";}
}
%>
</table>