/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import database.DAOException;
import facade.AtendimentoFacade;
import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.InputMismatchException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Atendimento;

/**
 *
 * @author leonardozanotti
 */
@WebServlet(name = "ClientesServlet", urlPatterns = {"/ClientesServlet"})
public class AtendimentosServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws database.DAOException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, DAOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        if (session.getAttribute("loginBean") == null) {
            request.setAttribute("msg", "Usuário deve se autenticar para acessar o sistema.");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
            return;
        }
        
        String action = (String) request.getParameter("action");
        RequestDispatcher rd;
        int id;
        Atendimento atendimento;
        
        if (action == null) {
            List<Atendimento> atendimentos = AtendimentoFacade.buscarTodos();
            request.setAttribute("atendimentos", atendimentos);
            rd = getServletContext().getRequestDispatcher("/jsp/clientesListar.jsp");
            rd.forward(request, response);
            return;
        }
        
        try {
            switch (action) {
                default:
                case "list":
                    List<Atendimento> atendimentos = AtendimentoFacade.buscarTodos();
                    request.setAttribute("atendimentos", atendimentos);
                    rd = getServletContext().getRequestDispatcher("/jsp/atendimentosListar.jsp");
                    rd.forward(request, response);
                    break;
                case "show":
                    id = Integer.parseInt(request.getParameter("id"));
                    atendimento = AtendimentoFacade.buscar(id);
                    request.setAttribute("atendimento", atendimento);
                    rd = getServletContext().getRequestDispatcher("/jsp/atendimentoDetalhes.jsp");
                    rd.forward(request, response);
                    break;
                case "formNew":
                    rd = getServletContext().getRequestDispatcher("/jsp/atendimento.jsp");
                    rd.forward(request, response);
                    break;
                case "new":
                    atendimento = new Atendimento(
                        Integer.parseInt(request.getParameter("idProduto")),
                        Integer.parseInt(request.getParameter("idTipoAtendimento")),
                        Integer.parseInt(request.getParameter("idUsuario")),
                        Integer.parseInt(request.getParameter("idCliente")),
                        request.getParameter("nomeProduto"),
                        request.getParameter("dscAtendimento"),
                        ((String) request.getParameter("resAtendimento")).charAt(0),
                        LocalDateTime.parse(request.getParameter("dtHrAtendimento"), DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm"))
                    );
                    AtendimentoFacade.inserir(atendimento);
                    rd = getServletContext().getRequestDispatcher("/AtendimentosServlet?action=list");
                    rd.forward(request, response);
                    break;
            }
        } catch (DAOException | ServletException | IOException | SQLException | RuntimeException e) {
            e.printStackTrace();
            request.setAttribute("jspException", e);
            request.setAttribute("status_code", 500);
            request.setAttribute("pageName", "Atendimentos");
            request.setAttribute("redirect", "./AtendimentosServlet?action=list");
            rd = getServletContext().getRequestDispatcher("/jsp/erro.jsp");
            rd.forward(request, response);
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
            Logger.getLogger(AtendimentosServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(AtendimentosServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(AtendimentosServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(AtendimentosServlet.class.getName()).log(Level.SEVERE, null, ex);
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
