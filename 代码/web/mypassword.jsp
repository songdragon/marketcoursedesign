<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="css/login.css" type=text/css rel=stylesheet>
<title>�޸�����</title>
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
<DIV class=new_help><B>[�޸�����]</B></DIV></DIV>
<DIV class=fill_message>
<H2>���¾�Ϊ������</H2>
<TABLE class=tab_login>

  <TBODY>
  <TR>
    <TD class=w1 vAlign=top>��������룺</TD>
    <TD><INPUT class=text_input id=txtOldPassword typepassword 
      name=txtOldPassword> 
      </TD></TR>
  <TR>
    <TD class=w1 vAlign=top>���������룺</TD>
    <TD><INPUT class=text_input id=txtPassword onblur=txtPassword_check() 
      type=password name=txtPassword> 
      <DIV class=text_left id=passwordValidMsg>
      <P>������������ɴ�СдӢ����ĸ��������ɣ�����6��20λ��</P></DIV>
      <DIV class="text_left change_red" id=passwordValidMsg1 
      style="DISPLAY: none">
      <P>�����õ������������������롣</P>
      <P>������������ɴ�СдӢ����ĸ��������ɣ�����6��20λ��</P></DIV>
      <DIV class="text_left change_red" id=passwordValidMsg0 
      style="DISPLAY: none">
      <P>����Ϊ������������������롣</P></DIV>
      </TD></TR>
  <TR>
    <TD class=w1 vAlign=top>�ٴ��������������룺</TD>
    <TD><INPUT class=text_input id=txtRepeatPass onblur=txtRepeatPass_check() 
      type=password name=txtRepeatPass> 
      <DIV class=text_left id=repeatPassValidMsg></DIV>
      <DIV class="text_left change_red" id=repeatPassValidMsg1 
      style="DISPLAY: none">
      <P>������������Ĳ�һ�£����������롣</P></DIV>
      <DIV class="text_left change_red" id=repeatPassValidMsg0 
      style="DISPLAY: none">
      <P>����Ϊ��������ٴ������������롣</P></DIV>
     </TD></TR></TBODY></TABLE>
<DIV class=login_in>
<INPUT class=button_1  type="submit" value="�޸�" name="submit" >
<INPUT id=btnRegister style="DISPLAY: none" onclick="doPostBack()" type=button > 
<SPAN id=lblCookie style="COLOR: red"></SPAN></DIV></DIV>
</form>

</body>
</html>