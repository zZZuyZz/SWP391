package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div class=\"container\">\n");
      out.write("         <div class=\"title-text\">\n");
      out.write("            <div class=\"title login\">\n");
      out.write("               Đăng Nhập\n");
      out.write("            </div>\n");
      out.write("            <div class=\"title signup\">\n");
      out.write("               Đăng Ký\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("         <div class=\"form-container\">\n");
      out.write("            <div class=\"slide-controls\">\n");
      out.write("               <input type=\"radio\" name=\"slide\" id=\"login\" checked>\n");
      out.write("               <input type=\"radio\" name=\"slide\" id=\"signup\">\n");
      out.write("               <label for=\"login\" class=\"slide login\">Đăng Nhập</label>\n");
      out.write("               <label for=\"signup\" class=\"slide signup\">Đăng Ký</label>\n");
      out.write("               <div class=\"slider-tab\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-inner\">\n");
      out.write("               <form action=\"#\" class=\"login\">\n");
      out.write("                  <div class=\"field\">\n");
      out.write("                     <input type=\"text\" placeholder=\"Địa Chỉ Email\" required>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"field\">\n");
      out.write("                     <input type=\"password\" placeholder=\"Mật Khẩu\" required>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"pass-link\">\n");
      out.write("                     <a href=\"#\">Quên Mật Khẩu?</a>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"field btn\">\n");
      out.write("                     <div class=\"btn-layer\"></div>\n");
      out.write("                     <input type=\"submit\" value=\"Đăng Nhập\">\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"signup-link\">\n");
      out.write("                     Chưa Có Tài Khoản? <a href=\"\"> Đăng Ký Ngay</a>\n");
      out.write("                  </div>\n");
      out.write("               </form>\n");
      out.write("               <form action=\"#\" class=\"signup\">\n");
      out.write("                  <div class=\"field\">\n");
      out.write("                     <input type=\"text\" placeholder=\"Nhập Email\" required>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"field\">\n");
      out.write("                     <input type=\"password\" placeholder=\"Nhập Mật Khẩu\" required>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"field\">\n");
      out.write("                     <input type=\"password\" placeholder=\"Nhập Lại Mật Khẩu\" required>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"field btn\">\n");
      out.write("                     <div class=\"btn-layer\"></div>\n");
      out.write("                     <input type=\"submit\" value=\" Đăng Ký\">\n");
      out.write("                  </div>\n");
      out.write("               </form>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
