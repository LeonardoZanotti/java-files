/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import database.ConnectionFactory;
import database.DAOException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Usuario;
import models.UsuarioDAO;

/**
 *
 * @author leonardozanotti
 */
@WebServlet(name = "PortalServlet", urlPatterns = {"/PortalServlet"})
public class PortalServlet extends HttpServlet {
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
            throws ServletException, IOException, DAOException {
        HttpSession session = request.getSession();
        String logado = (String) session.getAttribute("logado");
        if (logado == null) {
            request.setAttribute("msg", "Faça login para continuar");
            request.setAttribute("page", "./");
            request.setAttribute("pageName", "Login");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/ErroServlet");
            rd.forward(request, response);
        }
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet testservlet</title>");  
            out.println("<style>table, tr, th, td { border: 1px solid black }</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<form method=\"POST\" action=\"CadastrarUsuarioServlet\">");
            out.println("<input type=\"text\" placeholder=\"Nome\" name=\"nome\" value=\"\"/>");
            out.println("<br>");
            out.println("<input type=\"text\" placeholder=\"Login\" name=\"login\" value=\"\"/>");
            out.println("<br>");
            out.println("<input type=\"text\" placeholder=\"Senha\" name=\"senha\" value=\"\"/>");
            out.println("<br>");
            out.println("<br>");
            out.println("<button type=\"submit\">Salvar</button>");
            out.println("</form>");
            out.println("<br>");
            out.println("<br>");
            
            ConnectionFactory factory = new ConnectionFactory();
            UsuarioDAO dao = new UsuarioDAO(factory.getConnection());
            List<Usuario> usuarios = dao.buscarTodos();
            
            if (!usuarios.isEmpty()) {
                out.println("<table>");
                out.println("<tr><th>Name</th><th>Login</th><th>Senha</th></tr>");
                for (Usuario usuario : usuarios) {
                    out.println("<tr>");
                    out.println("<td>" + usuario.getName()+ "</td>");
                    out.println("<td>" + usuario.getLogin()+ "</td>");
                    out.println("<td>" + usuario.getPassword()+ "</td>");
                    out.println("</tr>");
                }
                out.println("</table>");
            }
            
            out.println("<br>");
            out.println("<a href=\"LogoutServlet\">Logout</a>");
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
        try {
            processRequest(request, response);
        } catch (DAOException ex) {
            Logger.getLogger(PortalServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (DAOException ex) {
            Logger.getLogger(PortalServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
