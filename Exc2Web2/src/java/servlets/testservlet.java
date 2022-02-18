/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.util.Arrays;

/**
 *
 * @author leonardozanotti
 */
@WebServlet(name = "testservlet", urlPatterns = {"/testservlet"})
public class testservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet testservlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<form method=\"POST\" action=\"testservlet\">");
            out.println("<input type=\"text\" name=\"dado\" value=\"\"/>");
            out.println("<input type=\"text\" name=\"dado\" value=\"\"/>");
            out.println("<input type=\"radio\" name=\"status\" value=\"A\"/>");
            out.println("<input type=\"checkbox\" name=\"fumante\" value=\"F\"/>");
            out.println("<select name=\"estado\">\n" +
                        "<option value=\"PR\"> Paraná </option>\n" +
                        "<option value=\"SC\"> Santa Catarina </option>\n" +
                        "</select>");
            out.println("<button type=\"submit\">enviar</button>");
            out.println("</form>");
            out.println("<h1>Servlet testservlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
            System.out.printf("%s", request.getParameter("fumante"));
            System.out.printf("%s", Arrays.toString(request.getParameterValues("dado")));
            System.out.printf("%s", request.getParameter("status"));
            System.out.printf("%s", request.getParameter("estado"));
        }
    }
    
    @Override
    public void init(ServletConfig config) {
        System.out.println("INIT");
    }
    
    @Override
    public void destroy() {
        System.out.println("DESTROY");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("GET");
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST");
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
