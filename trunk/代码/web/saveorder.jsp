<%@ page contentType="text/html; charset=gb2312" language="java"  errorPage="" %>
<%@ page import="shopcart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dbconnection.*" %>
<%@ page import="order.*" %>
<%@ page import="tools.*" %>
<% 
	request.setCharacterEncoding("gb2312");
//session.setAttribute("user_name","song1");
	String reciver=request.getParameter("txt_ship_name");
	String address=request.getParameter("txt_ship_address");
	String zip=request.getParameter("txt_ship_zip");
	String tel=request.getParameter("txt_ship_tel");
	//String point=request.getParameter("txt_ship_point");
	String total="";//总金额
	//String reciver="宋肇腾";
	//String address="adfkjer";
	//String zip="300401";
	//String tel="58590303";
	//String total="400";
	DateTime a=new DateTime();
	String ordate=a.getToday();
	//total="10000";
	 List shopList= (List) session.getAttribute("cart");
 float num=0;//总金额
 float cost=0;//享有优惠
 for (int i = 0; i < shopList.size(); i++) {
     BuyList shop = (BuyList) shopList.get(i);
	  num=num+shop.number*shop.price*shop.rate/10;
 }
 total=String.valueOf(num);
	OrderOperator myorder=new OrderOperator();
	myorder.setAddress(address);
	myorder.setCustomername((String)session.getAttribute("user_name"));
	myorder.setReceiver(reciver);
	myorder.setTel(tel);
	myorder.setTotal(total);
	myorder.setZipcode(zip);
	myorder.setOrderdate(ordate);
	//Calendar c=Calendar.getInstance();   
	//Date date=c.g 
	myorder.setOrderid();
	out.println((String)session.getAttribute("user_name"));
	out.println(((OrderAbstract)myorder).getReceiver());
	out.println(((OrderAbstract)myorder).getTotal());
	out.println(((OrderAbstract)myorder).getTel());
	out.println(((OrderAbstract)myorder).getZipcode());
	out.println(((OrderAbstract)myorder).getOrderdate());
	myorder.setOrderid();
	out.println(((OrderAbstract)myorder).getOrderid());
	
	
	//out.println(myorder.saveOrder((OrderAbstract)myorder));
	if(myorder.saveOrder((OrderAbstract)myorder)){
		out.println("saveorder");
		
	}

	
	shopList= (List) session.getAttribute("cart");
 	for (int i = 0; i < shopList.size(); i++) {
     	BuyList shop = (BuyList) shopList.get(i);
     	if(!OrderdetailOperator.savaOrderDetail(shop,myorder.getOrderid())){
     		out.println("error");
     		response.sendRedirect("error.jsp");
     		break;
    	}   	
 	}
 	response.sendRedirect("success_order.jsp");
 %>