<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="dbconnection.*"%>
<%@ include file="top.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ͼ��</title>
<LINK href="../css/default.css" type=text/css rel=stylesheet>
<LINK href="../css/06default.css" type=text/css rel=stylesheet>
</head>

<body>
<SCRIPT src="../js/login/signin.js" 
type=text/javascript></SCRIPT>
<TABLE id=homepage_main>
  <TBODY>
  <TR>
<TD id=homepage_left width="15%"broder=0 >
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
	PADDING-RIGHT: 5px; DISPLAY: inline; PADDING-LEFT: 0px; FONT-WEIGHT: normal; BACKGROUND: url(images/06default_0726_03_4.gif) no-repeat right 50%; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 2px 0px 3px 5px; COLOR: #069; WORD-BREAK: keep-all; PADDING-TOP: 0px; WHITE-SPACE: nowrap
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
<TABLE cellSpacing=0 cellPadding=0 width="100%"  height="100%" border=0>
        <TBODY>
        <TR>
		
          <TD width=6><IMG height=21 alt="" 
            src="../images/left.gif" width=6></TD>
          <TD class=colorbai width="99%" 
          background=../images/center.gif><div id=userlogin>
		  <%
			if(session.getAttribute("logged")==null||session.getAttribute("logged")=="0")
			{
			%>
		  <SPAN class=font14>�û���¼</SPAN></div>
		  <%
			}
			else
			{
			%>
          <SPAN class=font14>��½�ɹ�</SPAN><%}%>
		  </TD>
          <TD width=7><IMG height=21 alt="" 
            src="../images/right.gif" width=6></TD></TR></TBODY></TABLE>
		<%
			if(session.getAttribute("logged")==null||session.getAttribute("logged")=="0")
			{
			%>
			<%@ include file="../loginform.jsp"%>
			<%
			}
			else
			{
			%>
			<%@ include file="../userinfo.jsp"%>
			<%}%>
		

	
		<div id=userinfo style="display:none">
		<p><table TABLE id=Parent_t cellSpacing=0 cellPadding=0 width="100%" border=0 class="boardlr">
		</table>
		</div>
		
		<TABLE cellSpacing=0 cellPadding=0 width="100%"  height="100%" border=0>
        <TBODY>
        <TR>
		
          <TD width=6><IMG height=21 alt="" 
            src="../images/left.gif" width=6></TD>
          <TD class=colorbai width="99%" 
          background=../images/center.gif><SPAN 
            class=font14>ͼ������TOP10</SPAN></TD>
          <TD width=7><IMG height=21 alt="" 
            src="../images/right.gif" width=6></TD></TR>
			<TR>
	  <td colspan="3">
	  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
	  <% 
	  	DBConnection con=new DBConnection();
		String sql="select productsname,products_id from books";
		ResultSet rst=con.excuteQuery(sql,0);
		int i=1;
		while(rst.next()){
			out.println("<tr align=left><td ><div style='height:20px;padding-top:3px' ><font style='font-size:12px'>"+i+"."+"<a  href='bookdetail.jsp?productid="+rst.getString("products_id")+"' target='_blank'>"+rst.getString("productsname")+"</a></font></div></td></tr>");
			i++;
		}
		con.Close();
	  %>
	  </TABLE>
	  </td>
	  </TR>
			
			</TBODY></TABLE></div>

</TD>
<TD class=searchresult_middle valign="top">
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0   >
        <TBODY>
        <TR>
		<TD>
          <DIV class=adTitle0><SPAN 
            class=bigtuhuang><IMG 
            src="../images/ll060828_lanmu.gif">�����Ƽ�</SPAN></A>
			</DIV>
			<div class=adTitle2>
            <TABLE id=UCAdRotate1_dlstRotate__ctl0__ctl0_dlstRotateItems 
            cellSpacing=4 cellPadding=0 border=0 width="100%">
			<tr>
			<td width="33%" align="center"><img src="../pic/book/" height="140" width="160"></td>
			<td width="33%" align="center"><img src="../pic/book/" height="140" width="160" /> </td>
			<td width="33%" align="center"><img src="../pic/book/" height="140" width="160" /></td>
			</tr>
			<tr>
			<td width="33%" align="center"></td>
			<td width="33%" align="center"><a href="dressdetail.jsp?productid=0000000004" target="_blank">aa</a></td>
			<td width="33%" align="center"></td>
			</tr>
			</TABLE>
			</div>
</TD></TR></TBODY></TABLE>


</TD>
</TR>

</TBODY>
</TABLE>
</body>
</html>
