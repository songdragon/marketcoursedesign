﻿<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
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
String brand="";
String isbn="";
String dsize="";
String style="";
String material="";
String color="";
String season="";
String sex="";
String description="";


%>
<%

DressOperator dressoperator =new DressOperator();
  Iterator iterator=dressoperator.getInformation("1");
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
            <td>品牌</td>
            <td>&nbsp;<%=brand %></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="200" border="0">
          <tr>
            <td>大小</td>
            <td>&nbsp;<%=dsize %></td>
          </tr>
        </table></td>
        <td><table width="200" border="0">
          <tr>
            <td>款式</td>
            <td>&nbsp;<%=style%></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="300" border="0">
          <tr>
            <td>颜色</td>
            <td>&nbsp;<%=color%></td>
          </tr>
        </table></td>
        <td><table width="200" border="0">
          <tr>
            <td>适合性别</td>
            <td>&nbsp;<%=sex%></td>
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
            <td>面料</td>
            <td>&nbsp;<%=material%></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="300" border="0">
          <tr>
            <td>适合季节</td>
            <td>&nbsp;<%=season%></td>
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
