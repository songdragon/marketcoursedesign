package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.awt.*;
import java.awt.image.*;
import java.util.*;
import javax.imageio.*;

public final class createMa_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


Color getRandColor(int fc,int bc){		//ÔÚÈ·¶¨µÄ·¶Î§ÖÐ»ñµÃËæ»úÑÕÉ«
        Random random = new Random();
        if(fc>255) fc=255;
        if(bc>255) bc=255;
        int r=fc+random.nextInt(bc-fc);
        int g=fc+random.nextInt(bc-fc);
        int b=fc+random.nextInt(bc-fc);
        return new Color(r,g,b);
        }

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
      response.setContentType("image/jpeg");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
								//ÉèÖÃÒ³Ãæ²»»º´æ
response.setHeader("Pragma","No-cache");
response.setHeader("Cache-Control","no-cache");
response.setDateHeader("Expires", 0);
								//ÔÚÄÚ´æÖÐ´´½¨Í¼Ïó
int width=60, height=20;
BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
 								//»ñÈ¡Í¼ÐÎÉÏÏÂÎÄ
Graphics g = image.getGraphics();
								//Éú³ÉËæ»úÀà
Random random = new Random();
 								//Éè¶¨±³¾°É«
g.setColor(getRandColor(200,250));
g.fillRect(0, 0, width, height);
								//Éè¶¨×ÖÌå
g.setFont(new Font("Times New Roman",Font.PLAIN,18));
								//Ëæ»ú²úÉú50Ìõ¸ÉÈÅÏß£¬Ê¹Í¼ÏóÖÐµÄÈÏÖ¤Âë²»Ò×±»ÆäËü³ÌÐòÌ½²âµ½
g.setColor(getRandColor(160,200));
for (int i=0;i<50;i++){
	int x = random.nextInt(width);
	int y = random.nextInt(height);
  int xl = random.nextInt(width);
  int yl = random.nextInt(height);
	g.drawLine(x,y,x+xl,y+yl);
}
								//È¡Ëæ»ú²úÉúµÄÈÏÖ¤Âë(4Î»Êý×Ö)
String sRand="";
for (int i=0;i<4;i++){
    String rand=String.valueOf(random.nextInt(10));
    sRand+=rand;
    								//½«ÈÏÖ¤ÂëÏÔÊ¾µ½Í¼ÏóÖÐ
g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));
								//µ÷ÓÃº¯Êý³öÀ´µÄÑÕÉ«ÏàÍ¬£¬¿ÉÄÜÊÇÒòÎªÖÖ×ÓÌ«½Ó½ü£¬ËùÒÔÖ»ÄÜÖ±½ÓÉú³É
    g.drawString(rand,13*i+6,16);
}
 								//½«ÈÏÖ¤Âë´æÈëSESSION
session.setAttribute("rand",sRand);
 								//Í¼ÏóÉúÐ§
g.dispose();
								//Êä³öÍ¼Ïóµ½Ò³Ãæ
ImageIO.write(image, "JPEG", response.getOutputStream());

      out.write("\r\n");
      out.write("\r\n");
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
