package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class success_005fregister_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=utf-8");
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
      out.write("<FORM id=form1 name=form1 action=success.jsp method=post>\r\n");
      out.write("<DIV><INPUT id=__EVENTTARGET type=hidden name=__EVENTTARGET> <INPUT \r\n");
      out.write("id=__EVENTARGUMENT type=hidden name=__EVENTARGUMENT> <INPUT id=__LASTFOCUS \r\n");
      out.write("type=hidden name=__LASTFOCUS> <INPUT id=__VIEWSTATE type=hidden \r\n");
      out.write("value=/wEPDwUKMjA3NjExNTE2NWRk name=__VIEWSTATE> </DIV>\r\n");
      out.write("<SCRIPT type=text/javascript>\r\n");
      out.write("//<![CDATA[\r\n");
      out.write("var theForm = document.forms['form1'];\r\n");
      out.write("if (!theForm) {\r\n");
      out.write("    theForm = document.form1;\r\n");
      out.write("}\r\n");
      out.write("function __doPostBack(eventTarget, eventArgument) {\r\n");
      out.write("    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {\r\n");
      out.write("        theForm.__EVENTTARGET.value = eventTarget;\r\n");
      out.write("        theForm.__EVENTARGUMENT.value = eventArgument;\r\n");
      out.write("        theForm.submit();\r\n");
      out.write("    }\r\n");
      out.write("}\r\n");
      out.write("//]]>\r\n");
      out.write("</SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<SCRIPT src=\"\" type=text/javascript></SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<SCRIPT type=text/javascript>\r\n");
      out.write("//<![CDATA[\r\n");
      out.write("function sS(a){WebForm_DoCallback('__Page',a,rS,null,null,false);}function invokeServer(s,e){var a=s+'____'+e;sS(a);}\r\n");
      out.write(" function rS(d){receiveFromServer(requestData(d,'c'),d);}\r\n");
      out.write(" function requestData(d,k){var t=k+'----';s=d;var p=s.indexOf(t);if(p<0) return '';p+=t.length;var q=s.indexOf('____',p);if(q<0) return s.substr(p);return s.substring(p,q);}\r\n");
      out.write("//]]>\r\n");
      out.write("</SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<SCRIPT src=\"用户注册%20-%20当当网_files/WebResource.axd\" \r\n");
      out.write("type=text/javascript></SCRIPT>\r\n");
      out.write("<!--页头-->\r\n");
      out.write("<DIV class=login_top><IMG \r\n");
      out.write("class=logo src=\"images/logo.jpg\" width=100px heigth=120px>\r\n");
      out.write("<DIV class=new_help><B>[新用户注册]</B></DIV></DIV>\r\n");
      out.write("<DIV class=login_step>注册步骤:　1.填写信息　&gt;　<SPAN \r\n");
      out.write("class=red_bold>2.注册成功</SPAN></DIV>\r\n");
      out.write("<DIV class=fill_message>\r\n");
      out.write("注册成功！单击<a href=index.jsp>此处</a>返回首页\r\n");
      out.write("</DIV>\r\n");
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
