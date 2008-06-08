<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="shop.*" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="shop.BookOperator;"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<LINK href="css/book.css" type=text/css 
rel=stylesheet>
<title>无标题文档</title>
</head>

<body>
<%
String productsname="";
long clickrate=0;
float price=0;
String brand="";
String nettype="";
String appearance="";
String screencolor="";
String datatransport="";
String camera="";
String ontime="";
String mptype="";
String color="";
String storage="";
String screen="";
String screentype="";
String description="";


%>
<%

 MobileOperator mobileoperator=new MobileOperator();
  Iterator iterator=mobileoperator.getInformation("7");
  while(iterator.hasNext()){
	  MobileOperator mobile=(MobileOperator)iterator.next();
	  productsname=mobile.getProductsname();
	  clickrate=mobile.getClickrate();
	  price=mobile.getPrice();
	  brand=mobile.getBrand();
	 nettype=mobile.getNettype();
	  appearance=mobile.getAppearance();
	  screencolor=mobile.getScreencolor();
	  datatransport=mobile.getDatatransport();
	  screen=mobile.getScreen();
	  storage=mobile.getStorage();
	  camera=mobile.getCamera();
	  description=mobile.getDiscription();
	  mptype=mobile.getMptype();
	  color=mobile.getColor();
	  screentype=mobile.getScreentype();
	  ontime=mobile.getOntime();
	  
	 
	  
  }
%>

<DIV class=right>
<DIV class=shuming_left><SPAN class=black000></A><B><%=productsname%></B> 
</SPAN></DIV>
<DIV class=empty_box style="HEIGHT: 20px"></DIV>
<DIV class=book_left><IMG id=img_show_prd 
src="" width=150  />
</DIV>
<Div class=book_right>
<DIV id=author_>商品名称： <%=productsname%></DIV>
<DIV id=publisher_>品牌：<%=brand %></DIV>
<UL class=nostyle>
  <LI>点击率：<%=clickrate %> </LI>
  <LI>售价： <%=price %> </LI>
  <LI>网络制式： <%=nettype%> </LI>
  <LI>外观样式： <%=appearance%> </LI>
  <LI> 主屏： <%=screencolor%> </LI>
  <LI>数据传输：<%=datatransport%></LI>
  <LI>屏幕大小：<%=screen%></LI>
  <LI>摄像头 ：<%=camera%></LI>
  <LI>上市时间 ：<%=ontime%></LI>
  <LI>型号 ：<%=mptype%></LI>
  <LI>存储功能 ：<%=storage%></LI>
  <LI>颜色 ：<%=color%></LI>
  <LI>屏幕种类 ：<%=screentype%></LI></UL></DIV>
  <DIV class=goumai><A title=购买 href="" 
name=purchase_bk><IMG src="images/book/booksale.gif"></A>
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
