<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="shop.*" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="shop.BookOperator;"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
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
  }
%>

<table width="503" height="501" border="0">
 <tr>
    <td rowspan="2" width="300">&nbsp;</td>
    <td width="100">商品名称</td>
  <td>&nbsp;<%=productsname%></td>
  <tr>
    <td width=100>点击率</td>
    <td width=81>&nbsp;<%=clickrate %></td>
  </tr>
  <tr>
    <td colspan="3"><table width="499" height="300" border="0">
      <tr>
        <td><table width="200" border="0">
          <tr>
            <td>售价</td>
            <td>&nbsp;<%=price %></td>
          </tr>
        </table></td>
        <td><table width="200" border="0">
          <tr>
            <td>作者</td>
            <td>&nbsp;<%=author %></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="200" border="0">
          <tr>
            <td>序列号</td>
            <td>&nbsp;<%=isbn %></td>
          </tr>
        </table></td>
        <td><table width="200" border="0">
          <tr>
            <td>出版社</td>
            <td>&nbsp;<%=publisher %></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="200" border="0">
          <tr>
            <td>开本</td>
            <td>&nbsp;<%=booksize %></td>
          </tr>
        </table></td>
        <td>放入购物车</td>
      </tr>
      <tr>
        <td colspan="2"><table width="499" border="0">
          <caption>
            商品描述
            </caption>
          <tr>
            <th scope="col">&nbsp;<%=description %></th>
          </tr>
        </table></td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
