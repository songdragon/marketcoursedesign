<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�û�ע��</title>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="css/login.css" type=text/css rel=stylesheet>
<SCRIPT src="js/register/AjaxApp.js" type=text/javascript></SCRIPT>

<SCRIPT src="js/register/RegisterInit.js" 
type=text/javascript></SCRIPT>

<!--<SCRIPT src="js/register/trace.js" type=text/javascript></SCRIPT>-->
</head>
<%
//���ߣ�������
//ʱ�䣺2008-06-05
//���ܣ��û�ע��
%>
<body>
<BODY onload=javascript:isCookieEnabled()>
<FORM id=form1 name=form1  method=post action="do_register.jsp">
<SCRIPT type=text/javascript>

function doPostBack() {
        document.form1.submit();
    
}
</SCRIPT>
<!--ҳͷ-->
<DIV class=login_top><IMG 
class=logo src="images/logo.jpg" width=100px heigth=120px>
<DIV class=new_help><B>[���û�ע��]</B></DIV></DIV>
<DIV class=login_step>ע�Ჽ��:��<SPAN 
class=red_bold>1.��д��Ϣ</SPAN>��&gt;��2.ע��ɹ�</DIV>
<DIV class=fill_message>
<H2>���¾�Ϊ������</H2>
<TABLE class=tab_login>
  <TBODY>
  <TR>
    <TD class=w1 vAlign=top>����д����Email��ַ��</TD>
    <TD><INPUT class=text_input id=txtEmail onblur=txtEmail_check() 
      name=txtEmail> 
      <DIV class=text_left id=emailValidMsg>
      <P>����д��Ч��Email��ַ������һ���������ô����������֤�ʼ���</P></DIV>
      <DIV class="text_left change_red" id=emailValidMsg1 style="DISPLAY: none">
      <P>�����õ�Email��ʽ����ȷ��</P>
      <P>����д��Ч��Email��ַ�������ô����������֤�ʼ���</P></DIV>
      <DIV class="text_left change_red" id=emailValidMsg2 style="DISPLAY: none">
      <P>�����õ�Email��ַ�Ѵ��ڣ���ѡ����һ��Email��ַ��</P></DIV>
      <DIV class="text_left change_red" id=emailValidMsg0 style="DISPLAY: none">
      <P>����Ϊ���������������Email��ַ��</P></DIV></TD></TR>
  <TR>
    <TD class=w1 vAlign=top>���������û�����</TD>
    <TD><INPUT class=text_input id=txtNickName onblur=txtNickName_check() 
      name=txtNickName> 
      <DIV class=text_left id=nickNameValidMsg>
      <P>�����ǳƿ�����СдӢ����ĸ�����ġ�������ɣ�</P>
      <P>����4��20���ַ���һ������Ϊ�����ַ���</P></DIV>
      <DIV class="text_left change_red" id=nickNameValidMsg1 
      style="DISPLAY: none">
      <P>��������ǳ��������������롣</P>
      <P>�����ǳƿ�����СдӢ����ĸ�����ġ�������ɣ�</P>
      <P>����4��20���ַ���һ������Ϊ�����ַ��� </P></DIV>
      <DIV class="text_left change_red" id=nickNameValidMsg0 
      style="DISPLAY: none">
      <P>����Ϊ����������������ǳơ�</P></DIV>
      <DIV class="text_left change_red" id=nickNameValidMsg2 
      style="DISPLAY: none">
      <P>���ǳ��ѱ�ʹ�ã����������룡</P></DIV></TD></TR>
  <TR>
    <TD class=w1 vAlign=top>�������룺</TD>
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
      <P>����Ϊ������������������롣</P></DIV></TD></TR>
  <TR>
    <TD class=w1 vAlign=top>�ٴ����������õ����룺</TD>
    <TD><INPUT class=text_input id=txtRepeatPass onblur=txtRepeatPass_check() 
      type=password name=txtRepeatPass> 
      <DIV class=text_left id=repeatPassValidMsg></DIV>
      <DIV class="text_left change_red" id=repeatPassValidMsg1 
      style="DISPLAY: none">
      <P>������������Ĳ�һ�£����������롣</P></DIV>
      <DIV class="text_left change_red" id=repeatPassValidMsg0 
      style="DISPLAY: none">
      <P>����Ϊ��������ٴ������������롣</P></DIV></TD></TR>
  <TR>
    <TD class=w1 vAlign=top>��֤�룺</TD>
    <TD><IMG class=yzm_img id=imgshowcode alt=��֤�� 
      src="createMa.jsp"> <INPUT class=yzm_input 
      id=txtVerifyCode onkeydown=txtVerifyCode_keyDown(event) 
      onblur=txtVerifyCode_check() name=txtVerifyCode> 
      <DIV class="text_left t1" id=verifyCodeValidMsg>
      <P class=t1>������ͼƬ�е��ĸ���ĸ��<A 
      href="javascript:changeImage()">�������������ͼƬ</A></P></DIV>
      <DIV class="text_left change_red" id=verifyCodeValidMsgError 
      style="DISPLAY: none">
      <P class=t1>���������֤�벻��ȷ�����������롣<A 
      href="javascript:changeImage()">�������������ͼƬ</A></P></DIV>
      <DIV class="text_left change_red" id=verifyerrorclient 
      style="DISPLAY: none">
      <P class=t1>���������֤�벻��ȷ�����������롣<A 
      href="javascript:changeImage()">�������������ͼƬ</A></P></DIV></TD></TR></TBODY></TABLE>
<DIV class=login_in>
<INPUT class=button_1  type=button value="ע ��" name="" onclick="btnCheckLogin_Click()">
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
