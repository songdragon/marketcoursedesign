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
<title>�ޱ����ĵ�</title>
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
<DIV id=author_>��Ʒ���ƣ� <%=productsname%></DIV>
<DIV id=publisher_>Ʒ�ƣ�<%=brand %></DIV>
<UL class=nostyle>
  <LI>����ʣ�<%=clickrate %> </LI>
  <LI>�ۼۣ� <%=price %> </LI>
  <LI>������ʽ�� <%=nettype%> </LI>
  <LI>�����ʽ�� <%=appearance%> </LI>
  <LI> ������ <%=screencolor%> </LI>
  <LI>���ݴ��䣺<%=datatransport%></LI>
  <LI>��Ļ��С��<%=screen%></LI>
  <LI>����ͷ ��<%=camera%></LI>
  <LI>����ʱ�� ��<%=ontime%></LI>
  <LI>�ͺ� ��<%=mptype%></LI>
  <LI>�洢���� ��<%=storage%></LI>
  <LI>��ɫ ��<%=color%></LI>
  <LI>��Ļ���� ��<%=screentype%></LI></UL></DIV>
  <DIV class=goumai><A title=���� href="" 
name=purchase_bk><IMG src="images/book/booksale.gif"></A>
<DIV id=__zhinengbiaozhu_bk>
<DIV class=dashed></DIV>
<H2 class=right_title1> ��Ʒ����</H2>
<DIV class=right_content>
<%=description %>
</DIV>
</DIV>
</DIV></DIV>





</body>
</html>
