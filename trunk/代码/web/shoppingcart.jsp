<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>
<LINK href="css/shopping_vehicle.css" type=text/css rel=stylesheet>
<body>
<DIV class=shopping_top><IMG class=logo 
title=logo src=""></A> 
<DIV class=now_notice>[购物车]</DIV></DIV>
<DIV class=my_shopping><IMG class=pic_shop title=我的购物车 
src="images/cart/pic_myshopping.gif">



<DIV class="choice_merch reduc_t" id=div_choice>
<H2 class=objhide id=cart_tips>您已选购以下商品 <SPAN class=objhide>(，根据您登录后的<SPAN 
class=c_red></SPAN>身份，我们为您显示了商品的价格。)</SPAN></H2>
<DIV class=choice_bord>
<TABLE class=tabl_buy id=tbCartItemsNormal>
  <TBODY></TBODY></TABLE>
<DIV class="" id=div_no_choice>
<DIV class=choice_title></DIV>
<DIV class=no_select>您还没有挑选商品</DIV></DIV>
<DIV class=choice_balance>
<DIV class=select_merch><A onmouseover=link_hover(this) style="CURSOR: pointer" 
onclick=closeWindow() onmouseout=link_out(this) href="javascript:for_99click();" 
name=Continue>继续挑选商品&gt;&gt;</A></DIV>
<DIV class=total_balance>
<DIV class=save_total>您共节省：<SPAN class=c_red>￥<SPAN 
id=total_economy>0.00</SPAN></SPAN><SPAN class=objhide id=total_vip_economy>( 
其中享有优惠：<SPAN class=c_red>￥<SPAN id=span_vip_economy>0.00</SPAN></SPAN> )</SPAN> 
<SPAN style="FONT-SIZE: 14px">|</SPAN> <SPAN class=t_add>商品金额总计：</SPAN><SPAN 
class=c_red_b>￥<SPAN id=total_account>0.00</SPAN></SPAN></DIV>
<DIV class=total_balance id=balance><A ><IMG title=结算 alt=结算 
src="images/cart/butt_balance.gif" 
border=0></A></DIV></DIV></DIV></DIV></DIV>
<DIV id=divCartItemsRemoved></DIV>
<DIV class=objhide id=locListDiv></DIV>
<LINK href="当当网--购物车_files/page_bottom_new.css" type=text/css rel=stylesheet>
<CENTER>
<HR style="WIDTH: 972px; COLOR: #cfcfcf; HEIGHT: 1px">
</CENTER>

</body>
</html>
