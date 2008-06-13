<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="top.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>搜索结果</title>
<LINK href="css/default.css" type=text/css rel=stylesheet>
<LINK href="css/06default.css" type=text/css rel=stylesheet>
</head>
<body>
<TABLE id=homepage_main>
  <TBODY>
  <TR>
<TD id=searchresult_left broder=0 >
<STYLE type=text/css>.aclass {
	COLOR: #9b9b9b
}
#Parent_d .liclass {
	PADDING-RIGHT: 4px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; WIDTH: auto; PADDING-TOP: 0px
}
#Parent_d .ulclassnew {
	PADDING-RIGHT: 0px; DISPLAY: block; PADDING-LEFT: 13px; PADDING-BOTTOM: 0px; MARGIN: 0px; WIDTH: 87%; PADDING-TOP: 0px; TEXT-ALIGN: left
}
#searchresult_left LI {
	PADDING-RIGHT: 5px; DISPLAY: inline; PADDING-LEFT: 0px; FONT-WEIGHT: normal; BACKGROUND: url(images/06default_0726_03_4.gif) no-repeat right 50%; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 2px 0px 3px 5px; COLOR: #069; WORD-BREAK: keep-all; PADDING-TOP: 0px; WHITE-SPACE: nowrap
}
#sezrchresult_left .li1 {
	PADDING-RIGHT: 5px; DISPLAY: inline; PADDING-LEFT: 0px; FONT-WEIGHT: normal; BACKGROUND: no-repeat right 50%; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 2px 0px 3px 5px; COLOR: #069; WORD-BREAK: keep-all; PADDING-TOP: 0px; WHITE-SPACE: nowrap
}
#searchresult_left .li2 {
	CLEAR: none; PADDING-RIGHT: 5px; DISPLAY: inline; PADDING-LEFT: 0px; FONT-WEIGHT: normal; BACKGROUND: no-repeat right 50%; FLOAT: none; PADDING-BOTTOM: 0px; MARGIN: 2px 0px 3px 5px; COLOR: #069; WORD-BREAK: keep-all; PADDING-TOP: 0px
}
#searchresult .ulclass {
	PADDING-RIGHT: 0px; DISPLAY: block; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 5px 5px 0px 0px; WIDTH: 96%; PADDING-TOP: 0px; TEXT-ALIGN: left
}
#searchresult_left TD {
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
<TABLE cellSpacing=0 cellPadding=0 width="100%"  height="100%" border=0>
        <TBODY>
        <TR>
		
          <TD width=6><IMG height=21 alt="" 
            src="images/left.gif" width=6></TD>
          <TD class=colorbai width="99%" 
          background=images/center.gif><SPAN 
            class=font14>用户登录</SPAN></TD>
          <TD width=7><IMG height=21 alt="" 
            src="images/right.gif" width=6></TD></TR></TBODY></TABLE>
            <form action="../do_login.jsp" method=post name="login">
			<TABLE id=Parent_t cellSpacing=0 cellPadding=0 width="100%" border=0 class="boardlr">
			
 		
        <TR>
		<td> <div align="center"> <FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>用户名</FONT></FONT></div></td>
        <td> 
        <input name="user_name" type="text" class=input id="user_name" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18">
                </td>
		</TR>
		<TR>
		<td> <div align="center"><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>密码
			  </FONT></FONT></div></td>
        <td > 
        <input style="FONT-SIZE: 12px; WIDTH: 110px" type="password" name="user_pass" size="10" class=input maxlength="18">
                </td>
		</TR>
		<TR>
		<td colspan="2" nowrap><div align="center">
        <input type="submit" name="Submit" value="登录">							 
        <input type="reset" name="resetB" value="重填" onClick=""></div></td>
		</TR>
		
		</TABLE>
		</form>
<TABLE cellSpacing=0 cellPadding=0 width="100%" height="100%" border=0>
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
            <UL class=ulclass>
              <STRONG style="MARGIN-LEFT: 5px"><A 
              class=colortuhuang 
              href=""><font color="#cc6600">图书</font></A></STRONG> 
            </UL></TD></TR>
        <TR>
          <TD class=boardlr style="PADDING-LEFT: 5px; PADDING-TOP: 5px" 
          colSpan=3>
            <UL class=ulclass>
              <STRONG style="MARGIN-LEFT: 5px"><A 
              class=colortuhuang 
              href=""><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>服饰</FONT></FONT></A></STRONG>
            </UL></TD></TR>
        <TR>
          <TD class=boardlr style="PADDING-LEFT: 5px; PADDING-TOP: 5px" 
          colSpan=3>
            <UL class=ulclass>
              <STRONG style="MARGIN-LEFT: 5px"><A 
              class=colortuhuang 
              href=""><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>化妆品</FONT></FONT></A></STRONG> </UL></TD></TR>
        <TR>
          <TD class=boardlr style="PADDING-LEFT: 5px; PADDING-TOP: 5px" 
          colSpan=3>
            <UL class=ulclass>
              <p><STRONG style="MARGIN-LEFT: 5px"><A 
              class=colortuhuang 
              href=""><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>电子</FONT></FONT></A></STRONG> </p>
              <LI><A 
              href="">手机</A> </LI>
              <LI><A 
              href="">电脑/IT</A> 
              </LI>
            </UL></TD></TR>
        <TR>
          <TD><IMG height=4 alt="" 
            src="images/06default_0726_03_1.gif" width=4></TD>
          <TD width="99%" 
          background=images/06default_0726_03_3.gif></TD>
          <TD><IMG height=4 alt="" 
            src="images/06default_0726_03_2.gif" 
        width=4></TD></TR></TBODY></TABLE></DIV>
</td>
<td id=searchresult_middle >
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
		<TD>
 <%@ include file="do_search.jsp" %>
</td>
</tr>
</tbody>
</table>

</td>
</TR>
</TBODY>
</TABLE>
</body>
</html>