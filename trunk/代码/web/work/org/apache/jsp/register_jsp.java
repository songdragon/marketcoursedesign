package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=gb2312");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />\r\n");
      out.write("<title>用户注册</title>\r\n");
      out.write("<META http-equiv=Content-Type content=\"text/html; charset=gb2312\"><LINK \r\n");
      out.write("href=\"css/login.css\" type=text/css rel=stylesheet>\r\n");
      out.write("<SCRIPT src=\"js/register/AjaxApp.js\" type=text/javascript></SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<SCRIPT src=\"js/register/RegisterInit.js\" \r\n");
      out.write("type=text/javascript></SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<!--<SCRIPT src=\"js/register/trace.js\" type=text/javascript></SCRIPT>-->\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<BODY onload=javascript:isCookieEnabled()>\r\n");
      out.write("<FORM id=form1 name=form1  method=post action=\"do_register.jsp\">\r\n");
      out.write("<SCRIPT type=text/javascript>\r\n");
      out.write("\r\n");
      out.write("function doPostBack() {\r\n");
      out.write("        document.form1.submit();\r\n");
      out.write("    \r\n");
      out.write("}\r\n");
      out.write("</SCRIPT>\r\n");
      out.write("<!--页头-->\r\n");
      out.write("<DIV class=login_top><IMG \r\n");
      out.write("class=logo src=\"images/logo.jpg\" width=100px heigth=120px>\r\n");
      out.write("<DIV class=new_help><B>[新用户注册]</B></DIV></DIV>\r\n");
      out.write("<DIV class=login_step>注册步骤:　<SPAN \r\n");
      out.write("class=red_bold>1.填写信息</SPAN>　&gt;　2.注册成功</DIV>\r\n");
      out.write("<DIV class=fill_message>\r\n");
      out.write("<H2>以下均为必填项</H2>\r\n");
      out.write("<TABLE class=tab_login>\r\n");
      out.write("  <TBODY>\r\n");
      out.write("  <TR>\r\n");
      out.write("    <TD class=w1 vAlign=top>请填写您的Email地址：</TD>\r\n");
      out.write("    <TD><INPUT class=text_input id=txtEmail onblur=txtEmail_check() \r\n");
      out.write("      name=txtEmail> \r\n");
      out.write("      <DIV class=text_left id=emailValidMsg>\r\n");
      out.write("      <P>请填写有效的Email地址，在下一步中您将用此邮箱接收验证邮件。</P></DIV>\r\n");
      out.write("      <DIV class=\"text_left change_red\" id=emailValidMsg1 style=\"DISPLAY: none\">\r\n");
      out.write("      <P>您设置的Email格式不正确。</P>\r\n");
      out.write("      <P>请填写有效的Email地址，您将用此邮箱接收验证邮件。</P></DIV>\r\n");
      out.write("      <DIV class=\"text_left change_red\" id=emailValidMsg2 style=\"DISPLAY: none\">\r\n");
      out.write("      <P>您设置的Email地址已存在，请选择另一个Email地址！</P></DIV>\r\n");
      out.write("      <DIV class=\"text_left change_red\" id=emailValidMsg0 style=\"DISPLAY: none\">\r\n");
      out.write("      <P>此项为必填项，请输入您的Email地址。</P></DIV></TD></TR>\r\n");
      out.write("  <TR>\r\n");
      out.write("    <TD class=w1 vAlign=top>设置您的用户名：</TD>\r\n");
      out.write("    <TD><INPUT class=text_input id=txtNickName onblur=txtNickName_check() \r\n");
      out.write("      name=txtNickName> \r\n");
      out.write("      <DIV class=text_left id=nickNameValidMsg>\r\n");
      out.write("      <P>您的昵称可以由小写英文字母、中文、数字组成，</P>\r\n");
      out.write("      <P>长度4－20个字符，一个汉字为两个字符。</P></DIV>\r\n");
      out.write("      <DIV class=\"text_left change_red\" id=nickNameValidMsg1 \r\n");
      out.write("      style=\"DISPLAY: none\">\r\n");
      out.write("      <P>您输入的昵称有误，请重新输入。</P>\r\n");
      out.write("      <P>您的昵称可以由小写英文字母、中文、数字组成，</P>\r\n");
      out.write("      <P>长度4－20个字符，一个汉字为两个字符。 </P></DIV>\r\n");
      out.write("      <DIV class=\"text_left change_red\" id=nickNameValidMsg0 \r\n");
      out.write("      style=\"DISPLAY: none\">\r\n");
      out.write("      <P>此项为必填项，请输入您的昵称。</P></DIV>\r\n");
      out.write("      <DIV class=\"text_left change_red\" id=nickNameValidMsg2 \r\n");
      out.write("      style=\"DISPLAY: none\">\r\n");
      out.write("      <P>该昵称已被使用，请重新输入！</P></DIV></TD></TR>\r\n");
      out.write("  <TR>\r\n");
      out.write("    <TD class=w1 vAlign=top>设置密码：</TD>\r\n");
      out.write("    <TD><INPUT class=text_input id=txtPassword onblur=txtPassword_check() \r\n");
      out.write("      type=password name=txtPassword> \r\n");
      out.write("      <DIV class=text_left id=passwordValidMsg>\r\n");
      out.write("      <P>您的密码可以由大小写英文字母、数字组成，长度6－20位。</P></DIV>\r\n");
      out.write("      <DIV class=\"text_left change_red\" id=passwordValidMsg1 \r\n");
      out.write("      style=\"DISPLAY: none\">\r\n");
      out.write("      <P>您设置的密码有误，请重新输入。</P>\r\n");
      out.write("      <P>您的密码可以由大小写英文字母、数字组成，长度6－20位。</P></DIV>\r\n");
      out.write("      <DIV class=\"text_left change_red\" id=passwordValidMsg0 \r\n");
      out.write("      style=\"DISPLAY: none\">\r\n");
      out.write("      <P>此项为必填项，请设置您的密码。</P></DIV></TD></TR>\r\n");
      out.write("  <TR>\r\n");
      out.write("    <TD class=w1 vAlign=top>再次输入您设置的密码：</TD>\r\n");
      out.write("    <TD><INPUT class=text_input id=txtRepeatPass onblur=txtRepeatPass_check() \r\n");
      out.write("      type=password name=txtRepeatPass> \r\n");
      out.write("      <DIV class=text_left id=repeatPassValidMsg></DIV>\r\n");
      out.write("      <DIV class=\"text_left change_red\" id=repeatPassValidMsg1 \r\n");
      out.write("      style=\"DISPLAY: none\">\r\n");
      out.write("      <P>两次密码输入的不一致，请重新输入。</P></DIV>\r\n");
      out.write("      <DIV class=\"text_left change_red\" id=repeatPassValidMsg0 \r\n");
      out.write("      style=\"DISPLAY: none\">\r\n");
      out.write("      <P>此项为必填项，请再次输入您的密码。</P></DIV></TD></TR>\r\n");
      out.write("  <TR>\r\n");
      out.write("    <TD class=w1 vAlign=top>验证码：</TD>\r\n");
      out.write("    <TD><IMG class=yzm_img id=imgshowcode alt=验证码 \r\n");
      out.write("      src=\"createMa.jsp\"> <INPUT class=yzm_input \r\n");
      out.write("      id=txtVerifyCode onkeydown=txtVerifyCode_keyDown(event) \r\n");
      out.write("      onblur=txtVerifyCode_check() name=txtVerifyCode> \r\n");
      out.write("      <DIV class=\"text_left t1\" id=verifyCodeValidMsg>\r\n");
      out.write("      <P class=t1>请输入图片中的四个字母。<A \r\n");
      out.write("      href=\"javascript:changeImage()\">看不清楚？换个图片</A></P></DIV>\r\n");
      out.write("      <DIV class=\"text_left change_red\" id=verifyCodeValidMsgError \r\n");
      out.write("      style=\"DISPLAY: none\">\r\n");
      out.write("      <P class=t1>您输入的验证码不正确，请重新输入。<A \r\n");
      out.write("      href=\"javascript:changeImage()\">看不清楚？换个图片</A></P></DIV>\r\n");
      out.write("      <DIV class=\"text_left change_red\" id=verifyerrorclient \r\n");
      out.write("      style=\"DISPLAY: none\">\r\n");
      out.write("      <P class=t1>您输入的验证码不正确，请重新输入。<A \r\n");
      out.write("      href=\"javascript:changeImage()\">看不清楚？换个图片</A></P></DIV></TD></TR></TBODY></TABLE>\r\n");
      out.write("<DIV class=login_in>\r\n");
      out.write("<INPUT class=button_1  type=button value=\"注 册\" name=\"\" onclick=\"btnCheckLogin_Click()\">\r\n");
      out.write("<INPUT id=btnRegister style=\"DISPLAY: none\" onclick=\"doPostBack()\" type=button > \r\n");
      out.write("<SPAN id=lblCookie style=\"COLOR: red\"></SPAN></DIV></DIV>\r\n");
      out.write("<SCRIPT type=text/javascript>\r\n");
      out.write("//<![CDATA[\r\n");
      out.write("\r\n");
      out.write("WebForm_InitCallback();WebForm_AutoFocus('txtEmail');//]]>\r\n");
      out.write("</SCRIPT>\r\n");
      out.write("</FORM>\r\n");
      out.write("<SCRIPT language=javascript type=text/javascript>\r\n");
      out.write("        function showRegister()\r\n");
      out.write("        {\r\n");
      out.write("            var ck = document.getElementById(\"ckCheck\");\r\n");
      out.write("            var btn = document.getElementById(\"validatemsg\");\r\n");
      out.write("            if(ck.checked )\r\n");
      out.write("            {\r\n");
      out.write("                btn.style.display = \"block\";\r\n");
      out.write("             }\r\n");
      out.write("            else\r\n");
      out.write("                btn.style.display = \"none\";\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("    </SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<SCRIPT language=JavaScript src=\"js/register/o_code.js\"></SCRIPT>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
