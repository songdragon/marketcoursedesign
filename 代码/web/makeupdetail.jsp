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
String isbn="";
String mtype="";
String mfunction="";
String capacity="";
String maker="";
String outdate="";
String shelflife="";
String description="";
String productid="";
String picture="";

%>
<%
productid=request.getParameter("productid");
MakeupOperator makeupoperator=new MakeupOperator();
  Iterator iterator=makeupoperator.getInformation(productid);
  while(iterator.hasNext()){
	  MakeupOperator makeup=(MakeupOperator)iterator.next();
	  productsname=makeup.getProductsname();
	  clickrate=makeup.getClickrate();
	  price=makeup.getPrice();
	  brand=makeup.getBrand();
	  isbn=makeup.getIsbn();
	  mtype=makeup.getMtype();
	  mfunction=makeup.getMfunction();
	  description=makeup.getDiscription();
	  capacity=makeup.getCapacity();
	  maker=makeup.getMaker();
	  outdate=makeup.getOutdate();
	  shelflife=makeup.getShelflife();
	  picture=makeup.getImage();
  }
  String sql="update products_information set clickrate="+(clickrate+1)+"where products_id="+productid;
  makeupoperator.updatePro(sql);
%>

<DIV class=right>
<DIV class=shuming_left><SPAN class=black000></A><B><%=productsname%></B> 
</SPAN></DIV>
<DIV class=empty_box style="HEIGHT: 20px"></DIV>
<DIV class=book_left><IMG id=img_show_prd 
src="<%=picture %>" width=150  />
</DIV>
<Div class="book_right">
<DIV id=author_>商品名称： <%=productsname%></DIV>
<DIV id=publisher_>品牌：<%=brand %></DIV>
<UL class=nostyle>
  <LI>点击率：<%=clickrate+1 %> </LI>
  <LI>售价： <%=price %> </LI>
  <LI>容量： <%=capacity %> </LI>
  <LI>制造商： <%=maker%> </LI>
  <LI>出厂日期： <%=outdate%> </LI>
  <LI>保质期：<%=shelflife %> </LI>
  <LI>I S B N ：<%=isbn %></LI>
  <LI>材质：  <%=mtype %></LI>
  <LI>功能：<%=mfunction%></LI></UL>
  <DIV class=goumai><A title=购买 href="shopcart/addProduction.jsp?id=<%= productid %>" 
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
