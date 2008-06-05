package org.apache.jsp.cloth;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class clothes_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/cloth/top.jsp");
  }

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
      out.write("<link href=\"page_top.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("<SCRIPT language=JavaScript1.2 src=\"../js/boot.js\" \r\n");
      out.write("type=text/javascript></SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<SCRIPT language=javascript src=\"../js/comm.js\" \r\n");
      out.write("type=text/javascript></SCRIPT>\r\n");
      out.write("<DIV class=public_navi>\r\n");
      out.write("<DIV class=logo><IMG height=40  src=\"../images/logo.jpg\" width=87></DIV>\r\n");
      out.write("<DIV class=navi_part>\r\n");
      out.write("<DIV class=part_top>\r\n");
      out.write("<UL class=n_main>\r\n");
      out.write("  <LI class=\"m_left\"><A href=\"../index.jsp\">首页</A> </LI>\r\n");
      out.write("  <LI class=\"m_right\"><A href=\"../book/book.jsp\">图书</A> \r\n");
      out.write("  </LI>\r\n");
      out.write("  <LI class=\"m_right\"><A href=\"../elctr/electron.jsp\" >电子</A> \r\n");
      out.write("  </LI>\r\n");
      out.write("  <LI class=\"m_right\"><A href=\"clothes.jsp\" >服饰</A> \r\n");
      out.write("  </LI>\r\n");
      out.write("  <LI class=\"m_right\"><A href=\"../cosmetic/cosmetic.jsp\">化妆品</A> \r\n");
      out.write("  </LI>\r\n");
      out.write("</UL>\r\n");
      out.write("<UL class=n_help>\r\n");
      out.write("  <LI><A href=\"javascript:AddToShoppingCart(-1);\">购物车</A> </LI>\r\n");
      out.write("  <LI class=help_r><A href=\"register.jsp\" \r\n");
      out.write("  target=_blank>新用户注册</A> </LI></UL></DIV>\r\n");
      out.write("</DIV></DIV>\r\n");
      out.write("<!--页头搜索部分-->\r\n");
      out.write("<SCRIPT src=\"js/search20070319.js\" \r\n");
      out.write("type=text/javascript></SCRIPT>\r\n");
      out.write("<INPUT id=catalognew type=hidden name=catalognew> \r\n");
      out.write("<TABLE class=public_search>\r\n");
      out.write("  <TR>\r\n");
      out.write("    <TD class=search_left></TD>\r\n");
      out.write("    <TD>\r\n");
      out.write("      <TABLE class=search_middle>\r\n");
      out.write("        <TBODY>\r\n");
      out.write("         <FORM name=searchform onSubmit=\"return gotosearch();\" action= method=get>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD align=middle>\r\n");
      out.write("            <DIV class=search_main>\r\n");
      out.write("            <DIV class=main_left>\r\n");
      out.write("            <H1>商品搜索</H1><INPUT class=search_text name=key> \r\n");
      out.write("            <DIV id=div01 >\r\n");
      out.write("            <UL>\r\n");
      out.write("              <LI class=reduce_l_w><INPUT id=selbook0 type=radio value=0 \r\n");
      out.write("              name=selbook> 商品名</LI>\r\n");
      out.write("              <LI><INPUT id=selbook2 type=radio value=2 name=selbook>品牌 </LI>\r\n");
      out.write("              <LI><INPUT id=selbook3 type=radio value=3 name=selbook>价格 </LI>\r\n");
      out.write("</UL></DIV>\r\n");
      out.write("            \r\n");
      out.write("\t    <INPUT class=search_button id=search_btn_top type=submit value=在服饰商品中搜> \r\n");
      out.write("            </DIV>\r\n");
      out.write("            <DIV class=main_right><A \r\n");
      out.write("            href=\"\" \r\n");
      out.write("            name=link_ad_search>高级搜索</A></DIV></DIV></TD></TR> </FORM></TABLE></TD>\r\n");
      out.write("<SCRIPT type=text/javascript>\r\n");
      out.write("    showpage('','','');\r\n");
      out.write("</SCRIPT>");
      out.write("\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />\r\n");
      out.write("<title>服饰</title>\r\n");
      out.write("<LINK href=\"../css/default.css\" type=text/css rel=stylesheet>\r\n");
      out.write("<LINK href=\"../css/06default.css\" type=text/css rel=stylesheet>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<TABLE id=homepage_main>\r\n");
      out.write("  <TBODY>\r\n");
      out.write("  <TR>\r\n");
      out.write("<TD id=homepage_left width=\"15%\"broder=0 >\r\n");
      out.write("<STYLE type=text/css>.aclass {\r\n");
      out.write("\tCOLOR: #9b9b9b\r\n");
      out.write("}\r\n");
      out.write("#Parent_d .liclass {\r\n");
      out.write("\tPADDING-RIGHT: 4px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; WIDTH: auto; PADDING-TOP: 0px\r\n");
      out.write("}\r\n");
      out.write("#Parent_d .ulclassnew {\r\n");
      out.write("\tPADDING-RIGHT: 0px; DISPLAY: block; PADDING-LEFT: 13px; PADDING-BOTTOM: 0px; MARGIN: 0px; WIDTH: 87%; PADDING-TOP: 0px; TEXT-ALIGN: left\r\n");
      out.write("}\r\n");
      out.write("#homepage_left LI {\r\n");
      out.write("\tPADDING-RIGHT: 5px; DISPLAY: inline; PADDING-LEFT: 0px; FONT-WEIGHT: normal; BACKGROUND: url(images/06default_0726_03_4.gif) no-repeat right 50%; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 2px 0px 3px 5px; COLOR: #069; WORD-BREAK: keep-all; PADDING-TOP: 0px; WHITE-SPACE: nowrap\r\n");
      out.write("}\r\n");
      out.write("#homepage_left .li1 {\r\n");
      out.write("\tPADDING-RIGHT: 5px; DISPLAY: inline; PADDING-LEFT: 0px; FONT-WEIGHT: normal; BACKGROUND: no-repeat right 50%; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 2px 0px 3px 5px; COLOR: #069; WORD-BREAK: keep-all; PADDING-TOP: 0px; WHITE-SPACE: nowrap\r\n");
      out.write("}\r\n");
      out.write("#homepage_left .li2 {\r\n");
      out.write("\tCLEAR: none; PADDING-RIGHT: 5px; DISPLAY: inline; PADDING-LEFT: 0px; FONT-WEIGHT: normal; BACKGROUND: no-repeat right 50%; FLOAT: none; PADDING-BOTTOM: 0px; MARGIN: 2px 0px 3px 5px; COLOR: #069; WORD-BREAK: keep-all; PADDING-TOP: 0px\r\n");
      out.write("}\r\n");
      out.write("#homepage_left .ulclass {\r\n");
      out.write("\tPADDING-RIGHT: 0px; DISPLAY: block; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 5px 5px 0px 0px; WIDTH: 96%; PADDING-TOP: 0px; TEXT-ALIGN: left\r\n");
      out.write("}\r\n");
      out.write("#homepage_left TD {\r\n");
      out.write("\tFONT-SIZE: 12px; LINE-HEIGHT: 17px\r\n");
      out.write("}\r\n");
      out.write(".classlistboarder {\r\n");
      out.write("\tBORDER-RIGHT: #cfc7b2 1px solid; PADDING-RIGHT: 10px; BORDER-TOP: #cfc7b2 1px solid; DISPLAY: none; PADDING-LEFT: 10px; Z-INDEX: 1; BACKGROUND: #ffffff; PADDING-BOTTOM: 10px; BORDER-LEFT: #cfc7b2 1px solid; WIDTH: 52px; PADDING-TOP: 10px; BORDER-BOTTOM: #cfc7b2 1px solid; POSITION: absolute\r\n");
      out.write("}\r\n");
      out.write(".font14 {\r\n");
      out.write("\tFONT-SIZE: 14px\r\n");
      out.write("}\r\n");
      out.write("</STYLE>\r\n");
      out.write("<div id=__shangpinfenlei>\r\n");
      out.write("<TABLE cellSpacing=0 cellPadding=0 width=\"100%\"  height=\"100%\" border=0>\r\n");
      out.write("        <TBODY>\r\n");
      out.write("        <TR>\r\n");
      out.write("\t\t\r\n");
      out.write("          <TD width=6><IMG height=21 alt=\"\" \r\n");
      out.write("            src=\"../images/left.gif\" width=6></TD>\r\n");
      out.write("          <TD class=colorbai width=\"99%\" \r\n");
      out.write("          background=../images/center.gif><SPAN \r\n");
      out.write("            class=font14>用户登录</SPAN></TD>\r\n");
      out.write("          <TD width=7><IMG height=21 alt=\"\" \r\n");
      out.write("            src=\"../images/right.gif\" width=6></TD></TR></TBODY></TABLE>\r\n");
      out.write("\t\t\t<TABLE id=Parent_t cellSpacing=0 cellPadding=0 width=\"100%\" border=0 class=\"boardlr\">\r\n");
      out.write("\t\t\t\r\n");
      out.write(" \t\t<form action=\"\" method=\"get\" name=\"login\">\r\n");
      out.write("        <TR>\r\n");
      out.write("\t\t<td> <div align=\"center\"> <FONT \r\n");
      out.write("              style=\"FONT-SIZE: 12px\"><FONT \r\n");
      out.write("              color=#cc6600>用户名</FONT></FONT></div></td>\r\n");
      out.write("        <td> \r\n");
      out.write("        <input name=\"user_name\" type=\"text\" class=input id=\"user_name\" style=\"FONT-SIZE: 12px; WIDTH: 110px\" size=\"10\" maxlength=\"18\">\r\n");
      out.write("                </td>\r\n");
      out.write("\t\t</TR>\r\n");
      out.write("\t\t<TR>\r\n");
      out.write("\t\t<td> <div align=\"center\"><FONT \r\n");
      out.write("              style=\"FONT-SIZE: 12px\"><FONT \r\n");
      out.write("              color=#cc6600>密码\r\n");
      out.write("\t\t\t  </FONT></FONT></div></td>\r\n");
      out.write("        <td > \r\n");
      out.write("        <input style=\"FONT-SIZE: 12px; WIDTH: 110px\" type=\"password\" name=\"user_pass\" size=\"10\" class=input maxlength=\"18\">\r\n");
      out.write("                </td>\r\n");
      out.write("\t\t</TR>\r\n");
      out.write("\t\t<TR>\r\n");
      out.write("\t\t<td colspan=\"2\" nowrap><div align=\"center\">\r\n");
      out.write("        <input type=\"submit\" name=\"Submit\" value=\"登录\">\t\t\t\t\t\t\t \r\n");
      out.write("        <input type=\"reset\" name=\"resetB\" value=\"重填\" onClick=\"\"></div></td>\r\n");
      out.write("\t\t</TR>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t</TABLE>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<TABLE cellSpacing=0 cellPadding=0 width=\"100%\"  height=\"100%\" border=0>\r\n");
      out.write("        <TBODY>\r\n");
      out.write("        <TR>\r\n");
      out.write("\t\t\r\n");
      out.write("          <TD width=6><IMG height=21 alt=\"\" \r\n");
      out.write("            src=\"../images/left.gif\" width=6></TD>\r\n");
      out.write("          <TD class=colorbai width=\"99%\" \r\n");
      out.write("          background=../images/center.gif><SPAN \r\n");
      out.write("            class=font14>服饰销售TOP10</SPAN></TD>\r\n");
      out.write("          <TD width=7><IMG height=21 alt=\"\" \r\n");
      out.write("            src=\"../images/right.gif\" width=6></TD></TR></TBODY></TABLE></div>\r\n");
      out.write("\r\n");
      out.write("</TD>\r\n");
      out.write("<TD class=searchresult_middle>\r\n");
      out.write("</TD>\r\n");
      out.write("</TR>\r\n");
      out.write("\r\n");
      out.write("</TBODY>\r\n");
      out.write("</TABLE>\r\n");
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
