<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="shop.*" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="shop.BookOperator;"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<LINK href="css/book.css" type=text/css rel=stylesheet>
<title>�ޱ����ĵ�</title>
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
<DIV id=author_>��Ʒ���ƣ� <%=productsname%></DIV>
<DIV id=publisher_>Ʒ�ƣ�<%=brand %></DIV>
<UL class=nostyle>
  <LI>����ʣ�<%=clickrate %> </LI>
  <LI>�ۼۣ� <%=price %> </LI>
  <LI>CPU�� <%=cpu%> </LI>
  <LI>Ӳ�������� <%=hard%> </LI>
  <LI> �ڴ����ͣ� <%=ramtype%> </LI>
  <LI>�ڴ��С��<%=ramsize%></LI>
  <LI>��Ļ��С��<%=screen%></LI>
  <LI>���� ��<%=weight%></LI>
  <LI>��ɫ ��<%=color%></LI>
  <LI>���� ��<%=type%></LI>
  <LI>�ٶȣ�<%=speed%></LI></UL>
  <DIV class=goumai><A title=���� href="" 
name=purchase_bk><IMG src="images/book/booksale.gif"></A></DIV>
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
