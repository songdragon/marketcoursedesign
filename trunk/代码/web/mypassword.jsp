<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="css/login.css" type=text/css rel=stylesheet>
<title>修改密码</title>
</head>
<body>
<SCRIPT src="js/login/signin.js" 
type=text/javascript></SCRIPT>
<form id=changpwd name=changpwed action="changepassword.jsp" method="post">
<SCRIPT type=text/javascript>
function doPostBack() {
        document.changpwd.submit();
    
}
</script>
<DIV class=login_top><IMG 
class=logo src="images/logo.jpg" width=100px heigth=120px>
<DIV class=new_help><B>[修改密码]</B></DIV></DIV>
<DIV class=fill_message>
<H2>以下均为必填项</H2>
<TABLE class=tab_login>

  <TBODY>
  <TR>
    <TD class=w1 vAlign=top>输入旧密码：</TD>
    <TD><INPUT class=text_input id=txtOldPassword typepassword 
      name=txtOldPassword> 
      </TD></TR>
  <TR>
    <TD class=w1 vAlign=top>输入新密码：</TD>
    <TD><INPUT class=text_input id=txtPassword onblur=txtPassword_check() 
      type=password name=txtPassword> 
      <DIV class=text_left id=passwordValidMsg>
      <P>您的密码可以由大小写英文字母、数字组成，长度6－20位。</P></DIV>
      <DIV class="text_left change_red" id=passwordValidMsg1 
      style="DISPLAY: none">
      <P>您设置的密码有误，请重新输入。</P>
      <P>您的密码可以由大小写英文字母、数字组成，长度6－20位。</P></DIV>
      <DIV class="text_left change_red" id=passwordValidMsg0 
      style="DISPLAY: none">
      <P>此项为必填项，请设置您的密码。</P></DIV>
      </TD></TR>
  <TR>
    <TD class=w1 vAlign=top>再次输入新密码密码：</TD>
    <TD><INPUT class=text_input id=txtRepeatPass onblur=txtRepeatPass_check() 
      type=password name=txtRepeatPass> 
      <DIV class=text_left id=repeatPassValidMsg></DIV>
      <DIV class="text_left change_red" id=repeatPassValidMsg1 
      style="DISPLAY: none">
      <P>两次密码输入的不一致，请重新输入。</P></DIV>
      <DIV class="text_left change_red" id=repeatPassValidMsg0 
      style="DISPLAY: none">
      <P>此项为必填项，请再次输入您的密码。</P></DIV>
     </TD></TR></TBODY></TABLE>
<DIV class=login_in>
<INPUT class=button_1  type="submit" value="修改" name="submit" >
<INPUT id=btnRegister style="DISPLAY: none" onclick="doPostBack()" type=button > 
<SPAN id=lblCookie style="COLOR: red"></SPAN></DIV></DIV>
</form>

</body>
</html>