<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<SCRIPT src="js/login/signin.js" 
type=text/javascript></SCRIPT>
<table id=Parent_t cellspacing=0 cellpadding=0 width="100%" border=0 class="boardlr">
  <script type=text/javascript>

function doPostBack() {
        document.login.submit();
    
}
</script>

  <form action="do_login.jsp" method="get" name="login">
    <tr>
    <td colspan="2" nowrap><div  id=signerror style="DISPLAY: none" align="center">
      <p><font color="#FF0000">请输入完整的用户信息</font></p></div>
      <div  id=signerror1 style="DISPLAY: none" align="center">
      <p><font color="#FF0000">用户信息有误</font></p></div>
      <% if((session.getAttribute("logged")!=null)&&(session.getAttribute("logged")).equals("0"))
{ if(session.getAttribute("user_name")==null){%>
<div align="center"><font color="#FF0000">用户信息有误</font></div>
<%}} %>
</td>
  </tr>
    <tr>
      <td><div align="center"> <font 
              style="FONT-SIZE: 12px"><font 
              color=#cc6600>用户名</font></font></div></td>
      <td><input name="user_name" type="text" class=input id="user_name" style="FONT-SIZE: 12px; WIDTH: 110px" size="10" maxlength="18" /></td>
    </tr>
    <tr>
      <td><div align="center"><font 
              style="FONT-SIZE: 12px"><font 
              color=#cc6600>密码 </font></font></div></td>
      <td ><input style="FONT-SIZE: 12px; WIDTH: 110px" type="password" name="user_pass" size="10" class=input maxlength="18" />
      </td>
    </tr>
    <tr>
      <td colspan="2" nowrap><div align="center">
        <input type="button" name="Input" value="登录" onclick="singcheck()" />
        <input name="button" type=button id=btnSign style="DISPLAY: none" onclick="doPostBack()" />
        <input type="reset" name="resetB" value="重填" onclick="" />
      </div></td>
    </tr>
  </form>
</table>
