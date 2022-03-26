/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import database.ConnectionFactory;
import database.DAOException;
import facade.ClientesFacade;
import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Cliente;
import models.ClienteDAO;

/**
 *
 * @author leonardozanotti
 */
@WebServlet(name = "ClientesServlet", urlPatterns = {"/ClientesServlet"})
public class ClientesServlet extends HttpServlet {

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
        }
        
        String action = (String) request.getParameter("action");
        RequestDispatcher rd;
        int id;
        Date dt;
        Cliente cliente;
        
        switch (action) {
            case "list":
                List<Cliente> clientes = ClientesFacade.buscarTodos();
                request.setAttribute("clientes", clientes);
                rd = getServletContext().getRequestDispatcher("/jsp/clientesListar.jsp");
                rd.forward(request, response);
                break;
            case "show":
                id = Integer.parseInt(request.getParameter("id"));
                cliente = ClientesFacade.buscar(id);
                request.setAttribute("cliente", cliente);
                rd = getServletContext().getRequestDispatcher("/jsp/clientesVisualizar.jsp");
                rd.forward(request, response);
                break;
            case "formUpdate":
                id = Integer.parseInt(request.getParameter("id"));
                cliente = ClientesFacade.buscar(id);
                request.setAttribute("cliente", cliente);
                rd = getServletContext().getRequestDispatcher("/jsp/clientesAlterar.jsp");
                rd.forward(request, response);
                break;
            case "remove":
                id = Integer.parseInt(request.getParameter("id"));
                cliente = ClientesFacade.buscar(id);
                ClientesFacade.remover(cliente);
                rd = getServletContext().getRequestDispatcher("/ClientesServlet");
                rd.forward(request, response);
                break;
            case "update":
                id = Integer.parseInt(request.getParameter("id"));
                Cliente clienteBD = ClientesFacade.buscar(id);
                dt = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("data"));
                cliente = new Cliente(
                    clienteBD.getId(),
                    request.getParameter("cpf"),
                    request.getParameter("email"),
                    request.getParameter("nome"),
                    new java.sql.Date(dt.getTime()),
                    request.getParameter("rua"),
                    Integer.parseInt(request.getParameter("numero")),
                    request.getParameter("cep"),
                    request.getParameter("cidade"),
                    request.getParameter("uf")
                );
                ClientesFacade.alterar(cliente);
                rd = getServletContext().getRequestDispatcher("/ClientesServlet");
                rd.forward(request, response);
                break;
            case "formNew":
                rd = getServletContext().getRequestDispatcher("/jsp/clientesNovo.jsp");
                rd.forward(request, response);
                break;
            case "new":
                dt = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("data"));
                cliente = new Cliente(
                    request.getParameter("cpf"),
                    request.getParameter("email"),
                    request.getParameter("nome"),
                    new java.sql.Date(dt.getTime()),
                    request.getParameter("rua"),
                    Integer.parseInt(request.getParameter("numero")),
                    request.getParameter("cep"),
                    request.getParameter("cidade"),
                    request.getParameter("uf")
                );
                ClientesFacade.inserir(cliente);
                rd = getServletContext().getRequestDispatcher("/ClientesServlet");
                rd.forward(request, response);
                break;
            default:
                break;
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
            Logger.getLogger(ClientesServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(ClientesServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ClientesServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(ClientesServlet.class.getName()).log(Level.SEVERE, null, ex);
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
