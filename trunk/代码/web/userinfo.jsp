<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<TABLE id=Parent_t cellSpacing=0 cellPadding=0 width="100%" border=0 class="boardlr">
<TR>
		<td> <div align="center"> <FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600><%out.println(session.getAttribute("user_name"));%>,您好</FONT></FONT></div></td>
        <td>
		</td>
		</TR>
		<TR>
		<td> <div align="center"><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>会员类型:<%=session.getAttribute("user_type") %>
			  </FONT></FONT></div></td>
        <td > 
        </td>
		</TR>
		<TR>
		<td ><div align="center"><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>积分<%=session.getAttribute("point") %>
			  </FONT></FONT></div></td>
			<td></td>
		</TR>
		<TR>
		<td ><div align="center"><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600><a href="mypassword.jsp">修改密码</a>&nbsp;<a href="logout.jsp">注销</a>
			  </FONT></FONT></div></td>
			<td></td>
		</TR>
</TABLE>
