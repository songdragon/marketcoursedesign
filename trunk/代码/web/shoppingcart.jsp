<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>
<LINK href="css/shopping_vehicle.css" type=text/css rel=stylesheet>
<body>
<DIV class=shopping_top><IMG class=logo 
title=logo src=""></A> 
<DIV class=now_notice>[���ﳵ]</DIV></DIV>
<DIV class=my_shopping><IMG class=pic_shop title=�ҵĹ��ﳵ 
src="images/cart/pic_myshopping.gif">



<DIV class="choice_merch reduc_t" id=div_choice>
<H2 class=objhide id=cart_tips>����ѡ��������Ʒ <SPAN class=objhide>(����������¼���<SPAN 
class=c_red></SPAN>��ݣ�����Ϊ����ʾ����Ʒ�ļ۸�)</SPAN></H2>
<DIV class=choice_bord>
<TABLE class=tabl_buy id=tbCartItemsNormal>
  <TBODY></TBODY></TABLE>
<DIV class="" id=div_no_choice>
<DIV class=choice_title></DIV>
<DIV class=no_select>����û����ѡ��Ʒ</DIV></DIV>
<DIV class=choice_balance>
<DIV class=select_merch><A onmouseover=link_hover(this) style="CURSOR: pointer" 
onclick=closeWindow() onmouseout=link_out(this) href="javascript:for_99click();" 
name=Continue>������ѡ��Ʒ&gt;&gt;</A></DIV>
<DIV class=total_balance>
<DIV class=save_total>������ʡ��<SPAN class=c_red>��<SPAN 
id=total_economy>0.00</SPAN></SPAN><SPAN class=objhide id=total_vip_economy>( 
���������Żݣ�<SPAN class=c_red>��<SPAN id=span_vip_economy>0.00</SPAN></SPAN> )</SPAN> 
<SPAN style="FONT-SIZE: 14px">|</SPAN> <SPAN class=t_add>��Ʒ����ܼƣ�</SPAN><SPAN 
class=c_red_b>��<SPAN id=total_account>0.00</SPAN></SPAN></DIV>
<DIV class=total_balance id=balance><A ><IMG title=���� alt=���� 
src="images/cart/butt_balance.gif" 
border=0></A></DIV></DIV></DIV></DIV></DIV>
<DIV id=divCartItemsRemoved></DIV>
<DIV class=objhide id=locListDiv></DIV>
<LINK href="������--���ﳵ_files/page_bottom_new.css" type=text/css rel=stylesheet>
<CENTER>
<HR style="WIDTH: 972px; COLOR: #cfcfcf; HEIGHT: 1px">
</CENTER>

</body>
</html>
