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
            <td>CPU</td>
            <td>&nbsp;<%=cpu%></td>
          </tr>
        </table></td>
        <td><table width="300" border="0">
          <tr>
            <td>硬盘容量</td>
            <td>&nbsp;<%=hard%></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="300" border="0">
          <tr>
            <td>内存类型</td>
            <td>&nbsp;<%=ramtype%></td>
          </tr>
        </table></td>
        <td><table width="300" border="0">
          <tr>
            <td>内存大小</td>
            <td>&nbsp;<%=ramsize%></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="300" border="0">
          <tr>
            <td>屏幕大小</td>
            <td>&nbsp;<%=screen%></td>
          </tr>
        </table></td>
        <td><table width="200" border="0">
          <tr>
            <td>重量</td>
            <td>&nbsp;<%=weight%></td>
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
            <td>类型</td>
            <td>&nbsp;<%=type%></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="300" border="0">
          <tr>
            <td>速度</td>
            <td>&nbsp;<%=speed%></td>
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
