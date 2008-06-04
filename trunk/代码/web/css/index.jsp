<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<LINK href="css/default.css" type=text/css rel=stylesheet>
</head>

<body>
<TABLE id=homepage_main>
  <TBODY>
  <TR>
<TD id=homepage_left>
<STYLE type=text/css>.aclass {
	COLOR: #9b9b9b
}
#Parent_d .liclass {
	PADDING-RIGHT: 4px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; WIDTH: auto; PADDING-TOP: 0px
}
#Parent_d .ulclassnew {
	PADDING-RIGHT: 0px; DISPLAY: block; PADDING-LEFT: 13px; PADDING-BOTTOM: 0px; MARGIN: 0px; WIDTH: 87%; PADDING-TOP: 0px; TEXT-ALIGN: left
}
#homepage_left LI {
	PADDING-RIGHT: 5px; DISPLAY: inline; PADDING-LEFT: 0px; FONT-WEIGHT: normal; BACKGROUND: url(http://images.dangdang.com/default/06default_0726_03_4.gif) no-repeat right 50%; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 2px 0px 3px 5px; COLOR: #069; WORD-BREAK: keep-all; PADDING-TOP: 0px; WHITE-SPACE: nowrap
}
#homepage_left .li1 {
	PADDING-RIGHT: 5px; DISPLAY: inline; PADDING-LEFT: 0px; FONT-WEIGHT: normal; BACKGROUND: no-repeat right 50%; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 2px 0px 3px 5px; COLOR: #069; WORD-BREAK: keep-all; PADDING-TOP: 0px; WHITE-SPACE: nowrap
}
#homepage_left .li2 {
	CLEAR: none; PADDING-RIGHT: 5px; DISPLAY: inline; PADDING-LEFT: 0px; FONT-WEIGHT: normal; BACKGROUND: no-repeat right 50%; FLOAT: none; PADDING-BOTTOM: 0px; MARGIN: 2px 0px 3px 5px; COLOR: #069; WORD-BREAK: keep-all; PADDING-TOP: 0px
}
#homepage_left .ulclass {
	PADDING-RIGHT: 0px; DISPLAY: block; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 5px 5px 0px 0px; WIDTH: 96%; PADDING-TOP: 0px; TEXT-ALIGN: left
}
#homepage_left TD {
	FONT-SIZE: 12px; LINE-HEIGHT: 17px
}
.classlistboarder {
	BORDER-RIGHT: #cfc7b2 1px solid; PADDING-RIGHT: 10px; BORDER-TOP: #cfc7b2 1px solid; DISPLAY: none; PADDING-LEFT: 10px; Z-INDEX: 1; BACKGROUND: #ffffff; PADDING-BOTTOM: 10px; BORDER-LEFT: #cfc7b2 1px solid; WIDTH: 52px; PADDING-TOP: 10px; BORDER-BOTTOM: #cfc7b2 1px solid; POSITION: absolute
}
.font14 {
	FONT-SIZE: 14px
}
</STYLE>
<div id=__shangpinfenlei>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width=6><IMG height=21 alt="" 
            src="images/left.gif" width=6></TD>
          <TD class=colorbai width="99%" 
          background=images/center.gif><SPAN 
            class=font14>商品分类</SPAN></TD>
          <TD width=7><IMG height=21 alt="" 
            src="images/right.gif" width=6></TD></TR></TBODY></TABLE>
			<TABLE id=Parent_t cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD class=boardlr style="PADDING-LEFT: 5px; PADDING-TOP: 5px" 
          colSpan=3>
            <UL class=ulclass><STRONG style="MARGIN-LEFT: 5px"><A 
              class=colortuhuang 
              style="BACKGROUND: url(http://images.dangdang.com/default/new.gif) no-repeat right 50%; WIDTH: 95px" 
              href="http://music.dangdang.com/"><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>音乐（CD）</FONT></FONT></A></STRONG> </UL></TD></TR>
        <TR>
          <TD class=boardlr style="PADDING-LEFT: 5px; PADDING-TOP: 5px" 
          colSpan=3>
            <UL class=ulclass><STRONG style="MARGIN-LEFT: 5px"><A 
              class=colortuhuang 
              style="BACKGROUND: url(http://images.dangdang.com/default/new.gif) no-repeat right 50%; WIDTH: 95px" 
              href="http://movie.dangdang.com/"><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>影视（DVD）</FONT></FONT></A></STRONG></UL></TD></TR>
        <TR>
          <TD class=boardlr style="PADDING-LEFT: 5px; PADDING-TOP: 5px" 
          colSpan=3>
            <UL class=ulclass><STRONG style="MARGIN-LEFT: 5px"><A 
              class=colortuhuang 
              href="http://static.dangdang.com/software/"><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>软件</FONT></FONT></A></STRONG> <STRONG 
              style="MARGIN-LEFT: 5px"><A class=colortuhuang 
              href="http://static.dangdang.com/game/"><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>游戏</FONT></FONT></A></STRONG></UL></TD></TR>
        <TR>
          <TD class=boardlr style="PADDING-LEFT: 5px; PADDING-TOP: 5px" 
          colSpan=3>
            <UL class=ulclass><STRONG style="MARGIN-LEFT: 5px"><A 
              class=colortuhuang href="http://list.dangdang.com/84.htm"><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>消费电子</FONT></FONT></A></STRONG> 
              <LI><A 
              href="http://static.dangdang.com/digital/phone.shtml">手机</A> </LI>
              <LI><A 
              href="http://static.dangdang.com/digital/index.shtml">数码/IT</A> 
              </LI>
              <LI><A href="http://list.dangdang.com/92.01.10.html">家电</A> 
            </LI></UL></TD></TR>
        <TR>
          <TD class=boardlr style="PADDING-LEFT: 5px; PADDING-TOP: 5px" 
          colSpan=3>
            <UL class=ulclass><STRONG style="MARGIN-LEFT: 5px"><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>百货</FONT></FONT></STRONG> 
              <LI><A 
              href="http://static.dangdang.com/gm/category/92.03.shtml">化妆</A> 
              </LI>
              <LI><A 
              href="http://static.dangdang.com/gm/category/92.11.shtml">母婴</A> 
              </LI>
              <LI><A 
              href="http://static.dangdang.com/gm/category/92.06.shtml">健康</A> 
              </LI>
              <LI><A 
              href="http://static.dangdang.com/gm/category/92.02.shtml">饰品/礼品</A> 
              </LI>
              <LI><A 
              href="http://static.dangdang.com/gm/category/92.09.shtml">手表</A> 
              </LI>
              <LI><A 
              href="http://static.dangdang.com/gm/category/92.04.shtml">箱包</A> 
              </LI>
              <LI><A 
              href="http://static.dangdang.com/gm/category/92.07.shtml">玩具</A> 
              </LI>
              <LI><A 
              href="http://static.dangdang.com/gm/category/92.10.shtml">办公/文体</A> 
              </LI>
              <LI><A 
              href="http://static.dangdang.com/gm/category/92.01.shtml">家居/家纺</A> 
              </LI>
              <LI><A 
              href="http://static.dangdang.com/gm/category/92.12.shtml">服装/鞋</A> 
              </LI>
              <LI><A 
              href="http://static.dangdang.com/gm/category/92.14.shtml">衬衫</A> 
              </LI>
              <LI><A 
              href="http://static.dangdang.com/gm/category/92.13.shtml">童装童鞋</A> 
              </LI>
              <LI><A class=colortuhuang 
              href="http://list.dangdang.com/92.htm">浏览更多详细分类</A> </LI></UL></TD></TR>
        <TR>
          <TD class=boardlr id=Parent_0 
          style="PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
          colSpan=3>
            <UL class=ulclass><A class=colortuhuang 
              href="http://book.dangdang.com/"><STRONG 
              style="MARGIN-LEFT: 5px"><FONT style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>图书</FONT></FONT></STRONG></A><A 
              class=colortuhuang><STRONG>/</STRONG></A><A class=colortuhuang 
              href="http://static.dangdang.com/magzine/"><STRONG><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>杂志</FONT></FONT></STRONG></A><BR>
              <LI><A href="http://book.dangdang.com/01.03.htm">小说</A> </LI>
              <LI><A href="http://book.dangdang.com/01.05.htm">文学</A> </LI>
              <LI><A href="http://book.dangdang.com/01.01.htm">青春</A> </LI>
              <LI><A href="http://book.dangdang.com/01.09.htm">动漫</A> </LI>
              <LI><A href="http://book.dangdang.com/01.07.htm">艺术</A> </LI>
              <LI><A href="http://book.dangdang.com/01.38.htm">传记</A> </LI>
              <LI><A href="http://book.dangdang.com/01.36.htm">历史</A> </LI>
              <LI><A href="http://book.dangdang.com/01.34.htm">文化</A> </LI>
              <LI><A href="http://book.dangdang.com/01.28.htm">哲学/宗教</A> </LI>
              <LI><A href="http://book.dangdang.com/01.26.htm">法律</A> </LI>
              <LI><A href="http://book.dangdang.com/01.32.htm">古籍</A> </LI>
              <LI><A href="http://book.dangdang.com/01.25.htm">经济</A> </LI>
              <LI><A href="http://book.dangdang.com/01.22.htm">管理</A> 
            </LI></UL><BR>
            <UL class=ulclass>
              <LI><A href="http://book.dangdang.com/01.17.htm">孕产妇/育儿</A> </LI>
              <LI><A href="http://book.dangdang.com/01.15.htm">家庭教育</A> </LI>
              <LI><A href="http://book.dangdang.com/01.41.htm">少儿</A> 
            </LI></UL><BR>
            <UL class=ulclass>
              <LI><A href="http://book.dangdang.com/01.24.htm">个人理财</A> </LI>
              <LI><A href="http://list.book.dangdang.com/01.24.01.html">炒股</A> 
              </LI>
              <LI><A href="http://list.book.dangdang.com/01.21.08.html">求职</A> 
              </LI>
              <LI><A href="http://list.book.dangdang.com/01.11.25.html">瑜伽</A> 
              </LI>
              <LI><A href="http://book.dangdang.com/01.18.htm">保健</A> </LI>
              <LI><A href="http://book.dangdang.com/01.12.htm">旅游</A> </LI>
              <LI><A href="http://book.dangdang.com/01.13.htm">地图</A> </LI>
              <LI><A href="http://book.dangdang.com/01.19.htm">体育</A> </LI>
              <LI><A href="http://list.book.dangdang.com/01.14.21.htm">游戏</A> 
              </LI>
              <LI><A href="http://book.dangdang.com/01.10.htm">美食</A> </LI>
              <LI><A href="http://book.dangdang.com/01.08.htm">收藏</A> </LI>
              <LI><A href="http://book.dangdang.com/01.11.htm">美丽装扮</A> </LI>
              <LI><A href="http://list.book.dangdang.com/01.14.08.html">装潢</A> 
              </LI>
              <LI><A href="http://list.book.dangdang.com/01.14.html">家居</A> 
</LI>
              <LI><A href="http://list.book.dangdang.com/01.14.13.htm">宠物</A> 
              </LI>
              <LI><A href="http://book.dangdang.com/01.16.htm">两性</A> </LI>
              <LI><A href="http://book.dangdang.com/01.21.htm">励志</A> 
            </LI></UL><BR>
            <UL class=ulclass>
              <LI><A href="http://book.dangdang.com/01.52.htm">科普</A> </LI>
              <LI><A href="http://book.dangdang.com/01.55.htm">建筑</A> </LI>
              <LI><A href="http://book.dangdang.com/01.56.htm">医学</A> </LI>
              <LI><A href="http://book.dangdang.com/01.54.htm">计算机</A> </LI>
              <LI><A href="http://list.book.dangdang.com/01.66.htm">农林</A> </LI>
              <LI><A href="http://list.book.dangdang.com/01.62.htm">自然科学</A> 
              </LI>
              <LI><A href="http://book.dangdang.com/01.63.htm">工业技术</A> </LI>
              <LI><A href="http://list.book.dangdang.com/01.63.07.htm">通信</A> 
              </LI>
              <LI><A href="http://list.book.dangdang.com/01.63.05.htm">电工</A> 
              </LI>
              <LI><A href="http://list.book.dangdang.com/01.63.03.htm">机械</A> 
              </LI>
              <LI><A href="http://list.book.dangdang.com/01.63.24.htm">环境</A> 
              </LI>
              <LI><A href="http://list.book.dangdang.com/01.63.20.htm">水利水电</A> 
              </LI>
              <LI><A href="http://list.book.dangdang.com/01.63.13.html">金属工艺</A> 
              </LI>
              <LI><A href="http://list.book.dangdang.com/01.63.22.html">汽车交通</A> 
              </LI>
              <LI><A href="http://list.book.dangdang.com/01.63.18.htm">轻工</A> 
              </LI>
              <LI><A href="http://list.book.dangdang.com/01.63.09.htm">化工</A> 
              </LI>
              <LI><A href="http://list.book.dangdang.com/01.63.30.html">标准</A> 
              </LI></UL><BR>
            <UL class=ulclass>
              <LI><A href="http://book.dangdang.com/01.45.htm">外语</A> </LI>
              <LI><A href="http://book.dangdang.com/01.43.htm">中小学教辅</A> </LI>
              <LI><A href="http://list.book.dangdang.com/01.47.html">考试</A> 
</LI>
              <LI><A 
              href="http://static.dangdang.com/book/topic/college_textbook.shtml">教材</A> 
              </LI>
              <LI><A href="http://book.dangdang.com/01.50.htm">工具书</A> </LI>
              <LI><A href="http://book.dangdang.com/01.58.htm">原版书</A> 
            </LI></UL><BR>
            <UL class=ulclass>
              <LI><A href="http://static.dangdang.com/academic_av/">教育类音像</A> 
              </LI></UL>
            <LI><A class=colortuhuang 
            href="http://book.dangdang.com/catagory/book_second_category.aspx">浏览更多详细分类</A> 

            <UL></UL></LI></TD></TR>
        <TR>
          <TD><IMG height=4 alt="" 
            src="当当网,全球最大的中文网上商城_files/06default_0726_03_1.gif" width=4></TD>
          <TD width="99%" 
          background=当当网,全球最大的中文网上商城_files/06default_0726_03_3.gif></TD>
          <TD><IMG height=4 alt="" 
            src="当当网,全球最大的中文网上商城_files/06default_0726_03_2.gif" 
        width=4></TD></TR></TBODY></TABLE></DIV>
      <DIV id=__dianzhongdianshangpinfenlei>
      <TABLE height=8 cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD></TD></TR></TBODY></TABLE>
</td>
</tr>
</table>
</div>
</body>
</html>
