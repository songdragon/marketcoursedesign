<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<TABLE id=Parent_t cellSpacing=0 cellPadding=0 width="100%" border=0 class="boardlr">			
 		<form action="" method="get" name="login">
        <TR>
		<td> <div align="center"> <FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>用户名</FONT></FONT></div></td>
        <td><input name="user_name" type="text" class=input id="user_name" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18" /></td>
		</TR>
		<TR>
		<td> <div align="center"><FONT 
              style="FONT-SIZE: 12px"><FONT 
              color=#cc6600>密码
			  </FONT></FONT></div></td>
        <td > 
        <input style="FONT-SIZE: 12px; WIDTH: 110px" type="password" name="user_pass" size="10" class=input maxlength="18">                </td>
		</TR>
		<TR>
		<td colspan="2" nowrap><div align="center">
        <input type="submit" name="Submit" value="登录">							 
        <input type="reset" name="resetB" value="重填" onClick=""></div></td>
		</TR>
		</form>
		</TABLE>

