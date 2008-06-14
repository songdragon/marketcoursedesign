<%@ page contentType="text/html; charset=gb2312" language="java"  errorPage="" %>
<%@page import="java.util.*"%>
<%@page import="shopcart.*" %>
<%@page import="tools.float2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>shopping购物网--订单结算</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="css/order_form1.css" type=text/css rel=stylesheet></Link>
<LINK href="css/shopping_vehicle.css" type=text/css rel=stylesheet></LINK>

<META content="MSHTML 6.00.6000.16640" name=GENERATOR></HEAD>
<BODY>
<DIV class=login_top><IMG width="87" height="70"class=logo title=logo src="images/logo.jpg"> 
<DIV class=new_help><B>[订单结算]</B>│<A 
href="" 
target=_blank>帮助</A></DIV></DIV>
<DIV 
class=order_step>结算步骤：　　<SPAN 
class=red_bold><B>1.填写核对订单信息</B></SPAN>&gt;&gt;　2.成功提交订单</DIV>

  <DIV class="order_content" >
  
  <% List shopList= (List) session.getAttribute("cart");
 float num=0;//总金额
 float cost=0;//享有优惠

 %>
 <%if (shopList==null ){%>
<DIV class=no_select>您还没有挑选商品</DIV>
<% }else{
	if(session.getAttribute("logged")!=null){
		if(session.getAttribute("logged").equals("1")){
	%>
  
  <div class="border">
  <form id="order" action="saveorder.jsp" method="post" name="order">
    <H3>收货人信息 </H3>
    <DIV class="account_name">　收货人：
        <INPUT name="txt_ship_name" id="txt_ship_name" maxLength="40">
    </DIV>
    
    <DIV >详细地址：
        <INPUT name="txt_ship_address" id="txt_ship_address" maxLength="100">
      <SPAN id="ship_address_valid_msg"></SPAN></DIV>
    <DIV >邮政编码：
      <INPUT name="txt_ship_zip" id="txt_ship_zip" maxLength="20">
      <SPAN id="ship_zip_valid_msg"></SPAN>请务必正确填写您的邮编，以确保订单顺利送达。</DIV>
    <DIV>&nbsp;&nbsp;&nbsp;&nbsp;电话：
        <INPUT name="txt_ship_tel" id="txt_ship_mb" maxLength="20">
    </DIV>
	<div>
	<%if(session.getAttribute("point")!=(Integer)0) {%>
	用积分支付:<INPUT name="Input3" id="txt_ship_point" maxLength="10"> &nbsp;
	<%} %>
	可用积分：<%=session.getAttribute("point")%>
	</div>
    <INPUT name="submit" type="submit" id="btn_consignee_save" value="确认收货人信息">
    <div>
  <H3>订单详情 </H3>
  </form>
  </div>
  <div>
  <table width="850" border="1" align="center" cellpadding="0" cellspacing="0">

      <tr align="center" bgcolor="#EFEFEF">
        <td width="98" height="22">序号</td>
        <td width="120">商品名称</td>
        <td width="80">价格</td>
        <td width="80">折扣</td>
        <td width="80">数量</td>
        <td width="80">总金额</td>
      </tr>

 		   <%
 
        
        for (int i = 0; i < shopList.size(); i++) {
          BuyList shop = (BuyList) shopList.get(i);
		  num=num+shop.number*shop.price*shop.rate/10;
		  cost=(1-shop.rate/10)*shop.price*shop.number;
    %>
	<tr align="center" bgcolor="#EFEFEF">
        <td height="21" width="98"><%=i+1%></td>
        <td width="120"><%=shop.warename%></td>
        <td width="80"><%=shop.price%></td>
        <td width="80"><%=shop.rate %></td>
        <td width="80"><%=shop.number%></td>
        <td width="80"><%=shop.number*shop.price*shop.rate/10%></td>
      </tr>
 <%}
		}
        }
	else
		{%>
		您未登录，单击返回<a href="index.jsp">首页</a>登录
		<% }
	}%>
		
 </table>
  </div>

	
</DIV>

<DIV id=div_ajax_canvas>
<DIV class=order_content>
<DIV class=border>
<DIV id=div_consignee></DIV>
<DIV id=div_shipment></DIV>
<DIV id=div_payment></DIV>
<DIV id=div_cartItems></DIV></DIV>
<DIV class="shadow_b add_shadow_b"></DIV>
<DIV id=div_shadow></DIV></DIV></DIV><LINK 
href="css/page_bottom_new.css" type=text/css rel=stylesheet>
<CENTER>
<HR style="WIDTH: 972px; COLOR: #cfcfcf; HEIGHT: 1px">
</CENTER>
<SCRIPT src="js/trace.js" type=text/javascript></SCRIPT>

<DIV id=div_order_flow_submit></DIV>
<DIV id=div_shield></DIV>
<SCRIPT src="当当网--订单结算_files/o_code.js" type=text/javascript></SCRIPT>

<SCRIPT type=text/javascript>gFo1K3();</SCRIPT>
</BODY></HTML>
