/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import beans.LoginBean;
import database.ConnectionFactory;
import database.DAOException;
import jakarta.mail.NoSuchProviderException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Usuario;
import models.dao.UsuarioDAO;

/**
 *
 * @author leonardozanotti
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter(); ConnectionFactory factory = new ConnectionFactory();) {
            String login = request.getParameter("login");
            String password = request.getParameter("senha");
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Login feito</title>");            
            out.println("</head>");
            out.println("<body>");
            
            if (validLogin(login, password, factory)) {
                HttpSession session = request.getSession();
                Usuario user = getUserByLogin(login, factory);
                LoginBean loginBean = new LoginBean(user.getId(), user.getName());
                session.setAttribute("loginBean", loginBean);
                response.sendRedirect("./jsp/portal.jsp");
            } else {
                request.setAttribute("msg", "Usuário/Senha inválidos.");
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
                return;
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    protected boolean validLogin(String login, String password, ConnectionFactory factory) throws DAOException, NoSuchAlgorithmException, NoSuchProviderException, java.security.NoSuchProviderException {
        UsuarioDAO dao = new UsuarioDAO(factory.getConnection());
        List<Usuario> usuarios = dao.buscarTodos();
        String hashedPassword = getSecurePassword(password);
        return usuarios.stream().anyMatch(user -> user.getLogin().equals(login) && user.getPassword().equals(hashedPassword));
    }
    
    protected Usuario getUserByLogin(String login, ConnectionFactory factory) throws DAOException {
        UsuarioDAO dao = new UsuarioDAO(factory.getConnection());
        Usuario usuario = dao.buscarPeloEmail(login);
        return usuario;
    }

    private static String getSecurePassword(String passwordToHash) {
        String generatedPassword = null;
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");

            // Add password bytes to digest
            md.update(passwordToHash.getBytes());

            // Get the hash's bytes
            byte[] bytes = md.digest();

            // This bytes[] has bytes in decimal format. Convert it to hexadecimal format
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < bytes.length; i++) {
              sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }

            // Get complete hashed password in hex format
            generatedPassword = sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return generatedPassword;
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
        } catch (Exception ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (Exception ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
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
