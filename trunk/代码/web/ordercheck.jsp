<%@ page contentType="text/html; charset=gb2312" language="java"  errorPage="" %>
<%@page import="java.util.*"%>
<%@page import="shopcart.*" %>
<%@page import="tools.float2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>shopping������--��������</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="css/order_form1.css" type=text/css rel=stylesheet></Link>
<LINK href="css/shopping_vehicle.css" type=text/css rel=stylesheet></LINK>

<META content="MSHTML 6.00.6000.16640" name=GENERATOR></HEAD>
<BODY>
<DIV class=login_top><IMG width="87" height="70"class=logo title=logo src="images/logo.jpg"> 
<DIV class=new_help><B>[��������]</B>��<A 
href="" 
target=_blank>����</A></DIV></DIV>
<DIV 
class=order_step>���㲽�裺����<SPAN 
class=red_bold><B>1.��д�˶Զ�����Ϣ</B></SPAN>&gt;&gt;��2.�ɹ��ύ����</DIV>

  <DIV class="order_content" >
  
  <% List shopList= (List) session.getAttribute("cart");
 float num=0;//�ܽ��
 float cost=0;//�����Ż�

 %>
 <%if (shopList==null ){%>
<DIV class=no_select>����û����ѡ��Ʒ</DIV>
<% }else{
	if(session.getAttribute("logged")!=null){
		if(session.getAttribute("logged").equals("1")){
	%>
  
  <div class="border">
  <form id="order" action="saveorder.jsp" method="post" name="order">
    <H3>�ջ�����Ϣ </H3>
    <DIV class="account_name">���ջ��ˣ�
        <INPUT name="txt_ship_name" id="txt_ship_name" maxLength="40">
    </DIV>
    
    <DIV >��ϸ��ַ��
        <INPUT name="txt_ship_address" id="txt_ship_address" maxLength="100">
      <SPAN id="ship_address_valid_msg"></SPAN></DIV>
    <DIV >�������룺
      <INPUT name="txt_ship_zip" id="txt_ship_zip" maxLength="20">
      <SPAN id="ship_zip_valid_msg"></SPAN>�������ȷ��д�����ʱ࣬��ȷ������˳���ʹ</DIV>
    <DIV>&nbsp;&nbsp;&nbsp;&nbsp;�绰��
        <INPUT name="txt_ship_tel" id="txt_ship_mb" maxLength="20">
    </DIV>
	<div>
	<%if(session.getAttribute("point")!=(Integer)0) {%>
	�û���֧��:<INPUT name="Input3" id="txt_ship_point" maxLength="10"> &nbsp;
	<%} %>
	���û��֣�<%=session.getAttribute("point")%>
	</div>
    <INPUT name="submit" type="submit" id="btn_consignee_save" value="ȷ���ջ�����Ϣ">
    <div>
  <H3>�������� </H3>
  </form>
  </div>
  <div>
  <table width="850" border="1" align="center" cellpadding="0" cellspacing="0">

      <tr align="center" bgcolor="#EFEFEF">
        <td width="98" height="22">���</td>
        <td width="120">��Ʒ����</td>
        <td width="80">�۸�</td>
        <td width="80">�ۿ�</td>
        <td width="80">����</td>
        <td width="80">�ܽ��</td>
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
		��δ��¼����������<a href="index.jsp">��ҳ</a>��¼
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
<SCRIPT src="������--��������_files/o_code.js" type=text/javascript></SCRIPT>

<SCRIPT type=text/javascript>gFo1K3();</SCRIPT>
</BODY></HTML>
