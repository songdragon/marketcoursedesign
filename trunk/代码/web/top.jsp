<link href="css/page_top.css" rel="stylesheet" type="text/css">
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<SCRIPT language=JavaScript1.2 src="http://localhost:8080/web/js/boot.js" 
type=text/javascript></SCRIPT>

<SCRIPT language=javascript src="js/comm.js" 
type=text/javascript></SCRIPT>
<DIV class=public_navi>
<DIV class=logo><IMG height=40  src="images/logo.jpg" width=87></DIV>
<DIV class=navi_part>
<DIV class=part_top>
<UL class=n_main>
  <LI class="m_left"><A href="index.jsp">��ҳ</A> </LI>
  <LI class="m_right"><A href="book/book.jsp">ͼ��</A> 
  </LI>
  <LI class="m_right"><A href="elctr/electron.jsp">����</A> 
  </LI>
  <LI class="m_right"><A href="cloth/clothes.jsp">����</A> 
  </LI>
  <LI class="m_right"><A href="cosmetic/cosmetic.jsp" >��ױƷ</A> 
  </LI></UL>
<UL class=n_help>
  <LI><A href="shoppingcart.jsp" target="_blank">���ﳵ</A> </LI>
  <LI class=help_r><A href="register.jsp" 
  target=_blank>���û�ע��</A> </LI></UL></DIV>
</DIV></DIV>
<!--ҳͷ��������-->
<SCRIPT src="js/search20070319.js" 
type=text/javascript></SCRIPT>
<INPUT id=catalognew type=hidden name=catalognew> 
<TABLE class=public_search>
  <TBODY>
  <TR>
    <TD class=search_left></TD>
    <TD>
      <TABLE class=search_middle>
        <TBODY>
        <TR>
          <TD vAlign=top><!--�ؼ����ʼ-->
            <TABLE class=search_m_top>
              <TBODY>
              <TR>
                <TD align=center width="52%">
                  <DIV class=choice_sort>
                  <H2>��ѡ����ࣺ</H2>
                  <UL>
                    <LI id=li_sort><A id=a_sort onClick="sortselect('',this);" 
                    href="#" name=link_all>������Ʒ</A> 
</LI>
                    <LI id=li_sort01><A id=a_sort01 
                    onclick="sortselect('01',this);" 
                    href="#" name=link_book>ͼ��</A> </LI>
                    <LI id=li_sort03><A id=a_sort03 
                    onclick="sortselect('03',this);" 
                    href="#" name=link_music>����</A> 
</LI>
                    <LI id=li_sort05><A id=a_sort05 
                    onclick="sortselect('05',this);" 
                    href="#" name=link_movie>����</A> 
</LI>
                    <LI id=li_sort07><A id=a_sort07 
                    onclick="sortselect('07',this);" 
                    href="#" name=link_gift>��ױƷ</A> </LI>
                    <LI id=li_sortmall><A id=a_sortmall 
                    onclick="sortselect('mall',this);" 
                    href="#" name=link_mall></A> 
                  </LI></UL></DIV></TD>
                
                </TR></TBODY></TABLE><!--�ؼ�������--></TD></TR>
        <FORM name=searchform 
        action="searchresult.jsp" method=post>
        <TR>
          <TD align=middle>
            <DIV class=search_main>
            <DIV class=main_left>
            <H1>��Ʒ����</H1><INPUT class=search_text name=key> 
            <DIV id=div01 style="DISPLAY: none">
            <UL>
              <LI class=reduce_l_w><INPUT id=selbook1 type=radio CHECKED value=1 
              name=selbook><SPAN onclick=selectradio(this)> ����</SPAN> </LI>
              <LI><INPUT id=selbook2 type=radio value=2 name=selbook><SPAN 
              onclick=selectradio(this)> ����</SPAN> </LI>
              <LI><INPUT id=selbook3 type=radio value=3 name=selbook><SPAN 
              onclick=selectradio(this)> ������</SPAN> </LI>
              <LI><INPUT id=selbook0 type=radio  value=0 
              name=selbook><SPAN onclick=selectradio(this)>���</SPAN> 
            </LI></UL></DIV>
            <DIV id=div03 style="DISPLAY: none">
            <UL>
              <LI class=reduce_l_w><INPUT id=selmusic0 type=radio  CHECKED value=0
              name=selmusic><SPAN onclick=selectradio(this)> ��Ʒ��</SPAN> </LI>
              <LI><INPUT id=selmusic1 type=radio value=1 name=selmusic><SPAN 
              onclick=selectradio(this)> Ʒ��</SPAN> </LI>
              <LI><INPUT id=selmusic2 type=radio value=2 name=selmusic><SPAN 
              onclick=selectradio(this)> �۸�</SPAN> </LI>
              <!--<LI><INPUT id=selmusic4 type=radio value=4 name=selmusic><SPAN 
              onclick=selectradio(this)> ��Ŀ</SPAN> </LI>
              <LI><INPUT id=selmusic0 type=radio CHECKED value=0 
              name=selmusic><SPAN onclick=selectradio(this)> ȫ��</SPAN> -->
            </LI></UL></DIV>
            <DIV id=div05 style="DISPLAY: none">
            <UL>
              <LI class=reduce_l_w><INPUT id=selcloth0 type=radio CHECKED value=0 
              name=selcloth><SPAN onclick=selectradio(this)> ��Ʒ��</SPAN> </LI>
              <LI><INPUT id=selcloth1 type=radio value=1 name=selcloth><SPAN 
              onclick=selectradio(this)> Ʒ��</SPAN> </LI>
              <LI><INPUT id=selcloth2 type=radio value=2 name=selcloth><SPAN 
              onclick=selectradio(this)> �۸�</SPAN> </LI>
              <!--<LI><INPUT id=selmovie0 type=radio CHECKED value=0 
              name=selmovie><SPAN onclick=selectradio(this)> ȫ��</SPAN> -->
            </LI></UL></DIV>
            <DIV id=div07 style="DISPLAY: none">
            <UL>
              <LI class=reduce_l_w><INPUT id=selmovie0 type=radio CHECKED value=0
              name=selmovie><SPAN onclick=selectradio(this)> ��Ʒ��</SPAN> </LI>
              <LI><INPUT id=selmovie1 type=radio value=1 name=selmovie><SPAN 
              onclick=selectradio(this)> Ʒ��</SPAN> </LI>
              <LI><INPUT id=selmovie2 type=radio value=2 name=selmovie><SPAN 
              onclick=selectradio(this)> �۸�</SPAN> </LI>
              <!--<LI><INPUT id=selmovie0 type=radio CHECKED value=0 
              name=selmovie><SPAN onclick=selectradio(this)> ȫ��</SPAN> -->
            </LI></UL></DIV>
	    <INPUT class=search_button id=search_btn_top type=submit value=��������Ʒ����> 
            </DIV>
            <DIV class=main_right><A 
            href="" 
            name=link_ad_search>�߼�����</A></DIV></DIV></TD></TR><INPUT id=key1 
        type=hidden name=key1> <INPUT id=key2 type=hidden name=key2> <INPUT 
        id=key3 type=hidden name=key3> <INPUT id=key4 type=hidden name=key4> 
        <INPUT id=key5 type=hidden name=key5> <INPUT id=catalog type=hidden 
        name=catalog> <INPUT id=SearchFromTop type=hidden value=1 
        name=SearchFromTop> </FORM></TBODY></TABLE></TD>
<SCRIPT type=text/javascript>
    showpage('','','');
</SCRIPT>