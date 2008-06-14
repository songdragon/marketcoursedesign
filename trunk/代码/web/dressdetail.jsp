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
<title>服饰商品详细信息</title>
</head>

<body>
<%
String productsname="";
long clickrate=0;
float price=0;
String brand="";
String isbn="";
String dsize="";
String style="";
String material="";
String color="";
String season="";
String sex="";
String description="";
String productid="";
String picture="";

%>
<%
productid=request.getParameter("productid");
DressOperator dressoperator =new DressOperator();
  Iterator iterator=dressoperator.getInformation(productid);
  while(iterator.hasNext()){
	  DressOperator dress=(DressOperator)iterator.next();
	  productsname=dress.getProductsname();
	  clickrate=dress.getClickrate();
	  price=dress.getPrice();
	  brand=dress.getBrand();
	  isbn=dress.getIsbn();
	  dsize=dress.getDsize();
	  style=dress.getStyle();
	  description=dress.getDiscription();
	  material=dress.getMaterial();
	  color=dress.getColor();
	  season=dress.getSeason();
	  sex=dress.getSex();
	  picture=dress.getImage();
	  
  }
  String sql="update products_information set clickrate="+(clickrate+1)+"where products_id="+productid;
  dressoperator.updatePro(sql);
%>

<DIV class=right>
<DIV class=shuming_left><SPAN class=black000></A><B><%=productsname%></B> 
</SPAN></DIV>
<DIV class=empty_box style="HEIGHT: 20px"></DIV>
<DIV class=book_left><IMG id=img_show_prd 
src="<%=picture %>" width=150  height="200"/>
</DIV>
<div class="book_right">
<DIV id=author_>商品名称： <%=productsname%></DIV>
<DIV >品牌：<%=brand %></DIV>
<UL class=nostyle style="padding-top:2px">
  <LI>点击率：<%=clickrate+1 %> </LI>
  <LI>售价： <%=price %> </LI>
  <LI>大小： <%=dsize %> </LI>
  <LI>款式： <%=style%> </LI>
  <LI>颜色： <%=color%> </LI>
  <LI>适合性别：<%=sex%> </LI>
  <LI>I S B N ：<%=isbn %></LI>
  <LI>适合季节：<%=season%></LI></UL>
  <DIV class=goumai><A title=购买 href="shopcart/addProduction.jsp?id=<%= productid %>" 
name=purchase_bk><IMG src="images/book/booksale.gif"></A></DIV>
<DIV id=__zhinengbiaozhu_bk>
<DIV class=dashed></DIV>
<H2 class=right_title1> 商品描述</H2>
<DIV class=right_content>
<%=description %>
</DIV>
</DIV>
</DIV></DIV></DIV>

</body>
</html>
