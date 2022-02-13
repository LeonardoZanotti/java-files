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

/**
 *
 * @author leonardozanotti
 */
@WebServlet(name = "exc1servlet", urlPatterns = {"/exc1servlet"})
public class exc1servlet extends HttpServlet {

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
            out.println("<title>Servlet exc1servlet</title>");
            out.println("<style>");
            out.println("table, th, td, tr { border: solid black 1px; }");
            out.println("h1 {"); 
            out.println("color:blue;");
            out.println("font-family: Verdana,Geneva,sans-serif;");
            out.println("}");
            out.println("h5 {"); 
            out.println("color:black;");
            out.println("font-family: Arial;");
            out.println("}");
            out.println("</style>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Setor de Educação Profissional e Tecnológica</h1>");
            out.println("<h5>Rua Dr. Alcides Vieira Arcoverde, 1225\nCEP: 81520-260 - Jardim das Américas - Curitiba (PR) - Brasi</h5>");
            out.println("<table>"
                    + "<tr><th>Curso</th><th>Página</th></tr>"
                    + "<tr><td>TADS</td><td><a href='http://www.sept.ufpr.br/portal/analisesistemas/'>http://www.sept.ufpr.br/portal/analisesistemas/</a></td></tr>"
                    + "<tr><td>TGP</td><td><a href='http://www.sept.ufpr.br/portal/gestaopublica/sobre-o-curso/'>http://www.sept.ufpr.br/portal/gestaopublica/sobre-o-curso/</a></td></tr>"
                    + "<tr><td>TS</td><td><a href='http://www.sept.ufpr.br/portal/secretariado/sobre-o-curso/'>http://www.sept.ufpr.br/portal/secretariado/sobre-o-curso/</a></td></tr>"
                    + "<tr><td>TL</td><td><a href='http://www.sept.ufpr.br/portal/luteria/sobre-o-curso/'>http://www.sept.ufpr.br/portal/luteria/sobre-o-curso/</a></td></tr>"
                    + "<tr><td>TCI</td><td><a href='http://www.sept.ufpr.br/portal/comunicacaoinstitucional/sobre-o-curso/'>http://www.sept.ufpr.br/portal/comunicacaoinstitucional/sobre-o-curso/</a></td></tr>"
                    + "<tr><td>TNI</td><td><a href='http://www.sept.ufpr.br/portal/negociosimobiliarios/sobre-o-curso/'>http://www.sept.ufpr.br/portal/negociosimobiliarios/sobre-o-curso/</a></td></tr>"
                    + "<tr><td>TGQ</td><td><a href='http://www.sept.ufpr.br/portal/gestaoqualidade/sobre-o-curso/'>http://www.sept.ufpr.br/portal/gestaoqualidade/sobre-o-curso/</a></td></tr>"
                    + "<tr><td>TPG</td><td><a href='http://www.sept.ufpr.br/portal/petroleogas/sobre-o-curso/'>http://www.sept.ufpr.br/portal/petroleogas/sobre-o-curso/</a></td></tr>"
                    + "<tr><td>TPC</td><td><a href='http://www.sept.ufpr.br/portal/producaocenica/'>http://www.sept.ufpr.br/portal/producaocenica/</a></td></tr>"
                    + "<tr><td>TACS</td><td><a href='http://www.sept.ufpr.br/portal/agentesaude/sobre-o-curso/'>http://www.sept.ufpr.br/portal/agentesaude/sobre-o-curso/</a></td></tr>"
                    + "</table>");
            out.println("<br><a href='./meutads.jsp'>Meu TADS</a>");
            out.println("</body>");
            out.println("</html>");
        }
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
