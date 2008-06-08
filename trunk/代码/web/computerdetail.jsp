<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="shop.*" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="shop.BookOperator;"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<LINK href="css/book.css" type=text/css rel=stylesheet>
<title>无标题文档</title>
</head>

<body>
<%
String productsname="";
long clickrate=0;
float price=0;
String brand="";
String hard="";
String cpu="";
String ramtype="";
String ramsize="";
String screen="";
String weight="";
String speed="";
String color="";
String type="";
String description="";


%>
<%

ComputerOperator computeroperator =new ComputerOperator();
  Iterator iterator=computeroperator.getInformation("5");
  while(iterator.hasNext()){
	  ComputerOperator computer=(ComputerOperator)iterator.next();
	  productsname=computer.getProductsname();
	  clickrate=computer.getClickrate();
	  price=computer.getPrice();
	  brand=computer.getBrand();
	  cpu=computer.getCpu();
	  hard=computer.getHard();
	  ramtype=computer.getRamtype();
	  ramsize=computer.getRamsize();
	  screen=computer.getScreen();
	  weight=computer.getWeight();
	  speed=computer.getSpeed();
	  description=computer.getDiscription();
	  type=computer.getType();
	  color=computer.getColor();
	 
	  
  }
%>

<DIV class=right>
<DIV class=shuming_left><SPAN class=black000></A><B><%=productsname%></B> 
</SPAN></DIV>
<DIV class=empty_box style="HEIGHT: 20px"></DIV>
<DIV class=book_left><IMG id=img_show_prd 
src="" width=150  />
</DIV>
<div class="book_right">
<DIV id=author_>商品名称： <%=productsname%></DIV>
<DIV id=publisher_>品牌：<%=brand %></DIV>
<UL class=nostyle>
  <LI>点击率：<%=clickrate %> </LI>
  <LI>售价： <%=price %> </LI>
  <LI>CPU： <%=cpu%> </LI>
  <LI>硬盘容量： <%=hard%> </LI>
  <LI> 内存类型： <%=ramtype%> </LI>
  <LI>内存大小：<%=ramsize%></LI>
  <LI>屏幕大小：<%=screen%></LI>
  <LI>重量 ：<%=weight%></LI>
  <LI>颜色 ：<%=color%></LI>
  <LI>类型 ：<%=type%></LI>
  <LI>速度：<%=speed%></LI></UL>
  <DIV class=goumai><A title=购买 href="" 
name=purchase_bk><IMG src="images/book/booksale.gif"></A></DIV>
<DIV id=__zhinengbiaozhu_bk>
<DIV class=dashed></DIV>
<H2 class=right_title1> 商品描述</H2>
<DIV class=right_content>
<%=description %>
</DIV>
</DIV>
</DIV></DIV>

</body>
</html>
