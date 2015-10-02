package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class results_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Salary Info</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Salary Info</h1>\n");
      out.write("    ");

        Integer totalh = Integer.parseInt(request.getParameter ("hours"));
        Double rate = Double.parseDouble(request.getParameter ("pay"));
        Double postdeduct = Double.parseDouble(request.getParameter ("post"));
        Double prededuct = Double.parseDouble(request.getParameter ("pre"));
        Integer regularhours;
        Integer overtime;
        Double overrate;
        Double regpay;
        Double overpay;
        Double gross;
        Double taxablep;
        Double prep;
        Double tax;
        Double postp;
        Double net;
 
    
      out.write("    \n");
      out.write("        \n");
      out.write("        <table>\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Total Hours Worked:</td>\n");
      out.write("                    <td>");
      out.print(totalh);
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Hourly Rate:</td>\n");
      out.write("                    <td>");
      out.print(rate);
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td># Hours Overtime:</td>\n");
      out.write("                    <td>");
 if (totalh >40){
                        regularhours=40;
                        overtime=totalh-regularhours;}
                           else {overtime=0;}
                    
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Overtime Hourly Rate:</td>\n");
      out.write("                    <td>\n");
      out.write("                        ");
 if (totalh >40){overrate= rate*1.5;}
                             else {overrate=0.00;}
                    
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Gross Pay:</td>\n");
      out.write("                    <td>");

                        if (totalh >40) {regularhours=40;
                        regpay=regularhours*rate;
                        overpay=overtime*overrate;
                        gross=regpay+overpay;}
                        else {gross=totalh*rate;}
                    
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Pre-tax Deduct:</td>\n");
      out.write("                    <td>");
      out.print(prededuct);
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Pre-tax Pay:</td>\n");
      out.write("                    <td>");

                         prep=gross-prededuct;
                    
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Tax Amount:</td>\n");
      out.write("                    <td>");

                          if (gross <500) {taxablep=gross-prededuct;
                          tax= taxablep*0.18;}
                          else {taxablep=gross-prededuct;
                          tax= taxablep* 0.22;}
                    
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Post-tax Pay:</td>\n");
      out.write("                    <td>");

                          postp= taxablep-tax;
                    
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Post-tax Deduct:</td>\n");
      out.write("                    <td>");
      out.print(postdeduct);
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Net Pay:</td>\n");
      out.write("                    <td>");
 net=postp-postdeduct; 
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("            </tbody>\n");
      out.write("\n");
      out.write("        </table>\n");
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
