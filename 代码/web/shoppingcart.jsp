<%@ page contentType="text/html; charset=gb2312" language="java"  errorPage="" %>
<%@page import="java.util.*"%>
<%@page import="shopcart.*" %>
<%@page import="tools.float2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ҵĹ��ﳵ</title>
</head>
<LINK href="css/shopping_vehicle.css" type=text/css rel=stylesheet></LINK>
<body>
<DIV class=shopping_top><IMG class=logo 
title=logo src="images/logo.jpg" width=87 height=70></IMG>
<DIV class=now_notice>[���ﳵ]</DIV></DIV>
<DIV class=my_shopping><IMG class=pic_shop title=�ҵĹ��ﳵ 
src="images/cart/pic_myshopping.gif"></IMG>



<DIV class=choice_bord>
<TABLE class=tabl_buy id=tbCartItemsNormal>
  <TBODY></TBODY></TABLE>
<DIV class="" id=div_no_choice>
<DIV class=choice_title></DIV>
<% List shopList= (List) session.getAttribute("cart");
 float num=0;
 float cost=0;
 %>
<%if (shopList==null ){%>
<DIV class=no_select>����û����ѡ��Ʒ</DIV></DIV>
<%}
else { %>
<DIV class="choice_merch reduc_t" id=div_choice>
<H2  id=cart_tips>����ѡ��������Ʒ (��������<SPAN 
class=c_red></SPAN><span>��Ա�ȼ�������Ϊ����ʾ����Ʒ�ļ۸�)</SPAN></H2></DIV>
<form name="form" method="post" action="shopcart/addProductionNumber.jsp">
<table width="910" border="1" align="center" cellpadding="0" cellspacing="0">

      <tr align="center" bgcolor="#EFEFEF">
        <td width="100" height="22">���</td>
        <td width="300">��Ʒ����</td>
        <td width="140">�۸�</td>
        <td width="140">�ۿ�</td>
        <td width="140">����</td>
        <td width="140">�ܽ��</td>
      </tr>

 		   <%
 
        int pric=0;
        for (int i = 0; i < shopList.size(); i++) {
          BuyList shop = (BuyList) shopList.get(i);
		  num=num+shop.number*shop.price*shop.rate/10;
		  cost=(1-shop.rate/10)*shop.price*shop.number;
    %>
<script language="javascript" type="text/javascript">
function check(){
if(isNaN(form.number<%=i%>.value)){
alert("�벻Ҫ����Ƿ��ַ�");
return false;
history.back();
}
if(form.number<%=i%>.value==""){
alert("�������޸ĵ�����");
return false;
history.back();
}
}
</script>

      <tr align="center" bgcolor="#EFEFEF">
        <td height="21" width="100"><%=i+1%></td>
        <td width="300"><%=shop.warename%></td>
        <td width="140"><%=shop.price%><input name="id<%=i%>" type="hidden" size="10" value="<%=shop.id%>"></td>
        <td width="140"><%=shop.rate %></td>
        <td width="140"><input name="number<%=i%>" type="text" size="10" value="<%=shop.number%>"></td>
        <td width="140"><%=shop.number*shop.price%></td>
      </tr>
 <%}%>
 <DIV class=select_clear>
<input type="submit" name="Submit" value="�޸�����" onClick="return check()"> </DIV>
<%
} %>
 </table>
<DIV class=choice_balance>
<DIV class=select_merch><A href="index.jsp">������ѡ��Ʒ&gt;&gt;</A></DIV>

<DIV class=select_clear><a href="shopcart/putin.jsp">��չ��ﳵ&gt;&gt;</a></DIV>

<DIV class=total_balance>

<DIV class=save_total>������ʡ��<SPAN class=c_red>��<SPAN 
id=total_economy><%=float2.f2f2(cost) %></SPAN></SPAN><SPAN id=total_vip_economy>( 
���������Żݣ�<SPAN class=c_red>��<SPAN id=span_vip_economy><%=float2.f2f2(cost)%></SPAN></SPAN> )</SPAN> 
<SPAN style="FONT-SIZE: 14px">|</SPAN> <SPAN class=t_add>��Ʒ����ܼƣ�</SPAN><SPAN 
class=c_red_b>��<SPAN id=total_account><%=num%></SPAN></SPAN></DIV>
<DIV class=balance id=balance><A href="ordercheck.jsp?num=<%=num %>"><IMG title=���� alt=���� 
src="images/cart/butt_balance.gif" 
border=0></A></DIV></DIV></DIV>

</form>
<DIV id=divCartItemsRemoved></DIV>
<DIV class=objhide id=locListDiv></DIV>

<CENTER>
<HR style="WIDTH: 972px; COLOR: #cfcfcf; HEIGHT: 1px">
</CENTER>

</body>
</html>
