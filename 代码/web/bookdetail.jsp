<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="shop.*" %>
<%@ page import="java.util.Iterator" %>
<%@page import="shop.BookOperator;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<LINK href="css/book.css" type=text/css 
rel=stylesheet>
<title>书籍商品信息</title>
</head>

<body>
<%
String productsname="";
long clickrate=0;
float price=0;
String author="";
String isbn="";
String publisher="";
String booksize="";
String description="";
String productid=(String)session.getAttribute("productid");
%>
<%

BookOperator bookoperator=new BookOperator();
  Iterator iterator=bookoperator.getInformation("15");
  while(iterator.hasNext()){
	  BookOperator book=(BookOperator)iterator.next();
	  productsname=book.getProductsname();
	  clickrate=book.getClickrate();
	  price=book.getPrice();
	  author=book.getAuthor();
	  isbn=book.getIsbn();
	  publisher=book.getPublisher();
	  booksize=book.getBooksize();
	  description=book.getDiscription();
	  productid=book.getProducts_id();
  }
%>

<DIV class=right>
<DIV class=shuming_left><SPAN class=black000></A><B><%=productsname%></B> 
</SPAN></DIV>
<DIV class=empty_box style="HEIGHT: 20px"></DIV>
<DIV class=book_left><IMG id=img_show_prd 
src="" width=150  />
</DIV>
<DIV class="book_right">
<DIV id=author_>作　　者： <%=author%> 著</DIV>
<DIV id=publisher_>出 版 社：<%=publisher %></DIV>
<UL class=nostyle>
  <LI>商品名称:<%=productsname%></LI>
  <LI>点击率:<%=clickrate %> </LI>
  <LI>售价: <%=price %> </LI>
  <LI>I S B N:<%=isbn %></LI>
  <LI>开本:<%=booksize %></LI></UL>
  <DIV class=goumai ><A title=购买 href="shopcart/addProduction.jsp?id=<%= productid %>" >
  <IMG src="images/book/booksale.gif"></A></DIV>
<DIV id=__zhinengbiaozhu_bk>
<DIV class=dashed></DIV>
<H2 class=right_title1> 商品描述</H2>
<DIV class=right_content>
<%=description %>
</DIV>
</DIV></DIV></DIV></</DIV></DIV></DIV></DIV>