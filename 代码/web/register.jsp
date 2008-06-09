<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>用户注册</title>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="css/login.css" type=text/css rel=stylesheet>
<SCRIPT src="js/register/AjaxApp.js" type=text/javascript></SCRIPT>

<SCRIPT src="js/register/RegisterInit.js" 
type=text/javascript></SCRIPT>

<!--<SCRIPT src="js/register/trace.js" type=text/javascript></SCRIPT>-->
</head>
<%
//作者：宋肇腾
//时间：2008-06-05
//功能：用户注册
%>
<body>
<BODY onload=javascript:isCookieEnabled()>
<FORM id=form1 name=form1  method=post action="do_register.jsp">
<SCRIPT type=text/javascript>

function doPostBack() {
        document.form1.submit();
    
}
</SCRIPT>
<!--页头-->
<DIV class=login_top><IMG 
class=logo src="images/logo.jpg" width=100px heigth=120px>
<DIV class=new_help><B>[新用户注册]</B></DIV></DIV>
<DIV class=login_step>注册步骤:　<SPAN 
class=red_bold>1.填写信息</SPAN>　&gt;　2.注册成功</DIV>
<DIV class=fill_message>
<H2>以下均为必填项</H2>
<TABLE class=tab_login>
  <TBODY>
  <TR>
    <TD class=w1 vAlign=top>请填写您的Email地址：</TD>
    <TD><INPUT class=text_input id=txtEmail onblur=txtEmail_check() 
      name=txtEmail> 
      <DIV class=text_left id=emailValidMsg>
      <P>请填写有效的Email地址，在下一步中您将用此邮箱接收验证邮件。</P></DIV>
      <DIV class="text_left change_red" id=emailValidMsg1 style="DISPLAY: none">
      <P>您设置的Email格式不正确。</P>
      <P>请填写有效的Email地址，您将用此邮箱接收验证邮件。</P></DIV>
      <DIV class="text_left change_red" id=emailValidMsg2 style="DISPLAY: none">
      <P>您设置的Email地址已存在，请选择另一个Email地址！</P></DIV>
      <DIV class="text_left change_red" id=emailValidMsg0 style="DISPLAY: none">
      <P>此项为必填项，请输入您的Email地址。</P></DIV></TD></TR>
  <TR>
    <TD class=w1 vAlign=top>设置您的用户名：</TD>
    <TD><INPUT class=text_input id=txtNickName onblur=txtNickName_check() 
      name=txtNickName> 
      <DIV class=text_left id=nickNameValidMsg>
      <P>您的昵称可以由小写英文字母、中文、数字组成，</P>
      <P>长度4－20个字符，一个汉字为两个字符。</P></DIV>
      <DIV class="text_left change_red" id=nickNameValidMsg1 
      style="DISPLAY: none">
      <P>您输入的昵称有误，请重新输入。</P>
      <P>您的昵称可以由小写英文字母、中文、数字组成，</P>
      <P>长度4－20个字符，一个汉字为两个字符。 </P></DIV>
      <DIV class="text_left change_red" id=nickNameValidMsg0 
      style="DISPLAY: none">
      <P>此项为必填项，请输入您的昵称。</P></DIV>
      <DIV class="text_left change_red" id=nickNameValidMsg2 
      style="DISPLAY: none">
      <P>该昵称已被使用，请重新输入！</P></DIV></TD></TR>
  <TR>
    <TD class=w1 vAlign=top>设置密码：</TD>
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
      <P>此项为必填项，请设置您的密码。</P></DIV></TD></TR>
  <TR>
    <TD class=w1 vAlign=top>再次输入您设置的密码：</TD>
    <TD><INPUT class=text_input id=txtRepeatPass onblur=txtRepeatPass_check() 
      type=password name=txtRepeatPass> 
      <DIV class=text_left id=repeatPassValidMsg></DIV>
      <DIV class="text_left change_red" id=repeatPassValidMsg1 
      style="DISPLAY: none">
      <P>两次密码输入的不一致，请重新输入。</P></DIV>
      <DIV class="text_left change_red" id=repeatPassValidMsg0 
      style="DISPLAY: none">
      <P>此项为必填项，请再次输入您的密码。</P></DIV></TD></TR>
  <TR>
    <TD class=w1 vAlign=top>验证码：</TD>
    <TD><IMG class=yzm_img id=imgshowcode alt=验证码 
      src="createMa.jsp"> <INPUT class=yzm_input 
      id=txtVerifyCode onkeydown=txtVerifyCode_keyDown(event) 
      onblur=txtVerifyCode_check() name=txtVerifyCode> 
      <DIV class="text_left t1" id=verifyCodeValidMsg>
      <P class=t1>请输入图片中的四个字母。<A 
      href="javascript:changeImage()">看不清楚？换个图片</A></P></DIV>
      <DIV class="text_left change_red" id=verifyCodeValidMsgError 
      style="DISPLAY: none">
      <P class=t1>您输入的验证码不正确，请重新输入。<A 
      href="javascript:changeImage()">看不清楚？换个图片</A></P></DIV>
      <DIV class="text_left change_red" id=verifyerrorclient 
      style="DISPLAY: none">
      <P class=t1>您输入的验证码不正确，请重新输入。<A 
      href="javascript:changeImage()">看不清楚？换个图片</A></P></DIV></TD></TR></TBODY></TABLE>
<DIV class=login_in>
<INPUT class=button_1  type=button value="注 册" name="" onclick="btnCheckLogin_Click()">
<INPUT id=btnRegister style="DISPLAY: none" onclick="doPostBack()" type=button > 
<SPAN id=lblCookie style="COLOR: red"></SPAN></DIV></DIV>
<SCRIPT type=text/javascript>
//<![CDATA[

WebForm_InitCallback();WebForm_AutoFocus('txtEmail');//]]>
</SCRIPT>
</FORM>
<SCRIPT language=javascript type=text/javascript>
        function showRegister()
        {
            var ck = document.getElementById("ckCheck");
            var btn = document.getElementById("validatemsg");
            if(ck.checked )
            {
                btn.style.display = "block";
             }
            else
                btn.style.display = "none";
        }
        
        
        
    </SCRIPT>

<SCRIPT language=JavaScript src="js/register/o_code.js"></SCRIPT>
</body>
</html>
