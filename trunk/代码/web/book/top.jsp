<link href="page_top.css" rel="stylesheet" type="text/css">
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<SCRIPT language=JavaScript1.2 src="../js/boot.js" 
type=text/javascript></SCRIPT>

<SCRIPT language=javascript src="../js/comm.js" 
type=text/javascript></SCRIPT>
<DIV class=public_navi>
<DIV class=logo><IMG height=80  src="../images/logo.jpg" width=87></DIV>
<DIV class=navi_part>
<DIV class=part_top>
<UL class=n_main>
  <LI class="m_left"><A href="../index.jsp">首页</A> </LI>
  <LI class="m_right"><A href="../book.jsp">图书</A> 
  </LI>
  <LI class="m_right"><A href="../elctr/electron.jsp">电子</A> 
  </LI>
  <LI class="m_right"><A href="../cloth/clothes.jsp">服饰</A> 
  </LI>
  <LI class="m_right"><A href="../cosmetic/cosmetic.jsp" >化妆品</A> 
  </LI>
</UL>
<UL class=n_help>
  <LI><A href="../shoppingcart.jsp" target="_blank">购物车</A> </LI>
  <LI class=help_r><A href="register.jsp" 
  target=_blank>新用户注册</A> </LI></UL></DIV>
</DIV></DIV>
<!--页头搜索部分-->
<SCRIPT src="js/search20070319.js" 
type=text/javascript></SCRIPT>
<INPUT id=catalognew type=hidden name=catalognew> 
<TABLE class=public_search>
  <TR>
    <TD class=search_left></TD>
    <TD>
      <TABLE class=search_middle>
        <TBODY>
         <FORM name=searchform  action= method=post>
          <script type="text/javascript">
        var key="";
        function checksearch(){
        	key=document.getElementById("searchkey").value;
        	if(key=="")
        		alert("请填写搜索关键词");
        	else
        		document.searchform.submit();
        }
        </script>
        <TR>
          <TD align=middle>
            <DIV class=search_main>
            <DIV class=main_left>
            <H1>商品搜索</H1><INPUT class=search_text name=key id=searchkey> 
            <DIV id=div01 >
            <UL>
              <LI class=reduce_l_w><INPUT id=selbook1 type=radio CHECKED value=1 
              name=selbook> 书名</LI>
              <LI><INPUT id=selbook2 type=radio value=2 name=selbook>作者 </LI>
              <LI><INPUT id=selbook3 type=radio value=3 name=selbook>出版社 </LI>
              <LI><INPUT id=selbook0 type=radio  value=0 
              name=selbook>简介
            </LI>
            </UL></DIV>
            
	    <INPUT class=search_button id=search_btn_top type=button value=在图书商品中搜 onclick="checksearch()"> 
            </DIV>
            <DIV class=main_right><A 
            href="" 
            name=link_ad_search>高级搜索</A></DIV></DIV></TD></TR> </FORM></TABLE></TD>
<SCRIPT type=text/javascript>
    showpage('','','');
</SCRIPT>