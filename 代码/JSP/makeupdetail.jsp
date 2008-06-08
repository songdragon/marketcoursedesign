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
String brand="";
String isbn="";
String mtype="";
String mfunction="";
String capacity="";
String maker="";
String outdate="";
String shelflife="";
String description="";


%>
<%

MakeupOperator makeupoperator=new MakeupOperator();
  Iterator iterator=makeupoperator.getInformation("11");
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
            <td>容量</td>
            <td>&nbsp;<%=capacity %></td>
          </tr>
        </table></td>
        <td><table width="200" border="0">
          <tr>
            <td>制造商</td>
            <td>&nbsp;<%=maker%></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="300" border="0">
          <tr>
            <td>出厂日期</td>
            <td>&nbsp;<%=outdate%></td>
          </tr>
        </table></td>
        <td><table width="200" border="0">
          <tr>
            <td>保质期</td>
            <td>&nbsp;<%=shelflife %></td>
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
            <td>材质</td>
            <td>&nbsp;<%=mtype %></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="300" border="0">
          <tr>
            <td>功能</td>
            <td>&nbsp;<%=mfunction%></td>
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
