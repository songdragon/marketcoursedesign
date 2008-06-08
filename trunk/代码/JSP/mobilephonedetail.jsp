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
        <td><table width="300" border="0">
          <tr>
            <td>屏幕大小</td>
            <td>&nbsp;<%=screen%></td>
          </tr>
        </table></td>
        <td><table width="300" border="0">
          <tr>
            <td>网络制式</td>
            <td>&nbsp;<%=nettype%></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="300" border="0">
          <tr>
            <td>外观样式</td>
            <td>&nbsp;<%=appearance%></td>
          </tr>
        </table></td>
        <td><table width="300" border="0">
          <tr>
            <td>主屏</td>
            <td>&nbsp;<%=screencolor%></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="300" border="0">
          <tr>
            <td>数据传输</td>
            <td>&nbsp;<%=datatransport%></td>
          </tr>
        </table></td>
        <td><table width="300" border="0">
          <tr>
            <td>摄像头</td>
            <td>&nbsp;<%=camera%></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="300" border="0">
          <tr>
            <td>上市时间</td>
            <td>&nbsp;<%=ontime%></td>
          </tr>
        </table></td>
        <td><table width="200" border="0">
          <tr>
            <td>型号</td>
            <td>&nbsp;<%=mptype%></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="300" border="0">
          <tr>
            <td>存储功能 </td>
            <td>&nbsp;<%=storage%></td>
          </tr>
        </table></td>
        <td><table width="200" border="0">
          <tr>
            <td>颜色</td>
            <td>&nbsp;<%=color%></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="300" border="0">
          <tr>
            <td>屏幕种类</td>
            <td>&nbsp;<%=screentype%></td>
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
