/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package facade;

import database.ConnectionFactory;
import database.DAOException;
import java.util.List;
import models.Cliente;
import models.ClienteDAO;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author leonardozanotti
 */
public class ClientesFacade {
    
    public static void inserir(Cliente c) throws DAOException, SQLException {
        try (Connection con = new ConnectionFactory().getConnection()) {
            ClienteDAO dao = new ClienteDAO(con);
            dao.inserir(c);
        }
    }
    
    public static void alterar(Cliente c) throws DAOException, SQLException {
        try (Connection con = new ConnectionFactory().getConnection()) {
            ClienteDAO dao = new ClienteDAO(con);
            dao.atualizar(c);
        }
    }
    
    public static Cliente buscar(int id) throws DAOException, SQLException {
        Cliente cliente = null;
        try (Connection con = new ConnectionFactory().getConnection()) {
            ClienteDAO dao = new ClienteDAO(con);
            cliente = dao.buscar(id);
        }
        return cliente;
    }
    
    public static List<Cliente> buscarTodos() throws DAOException, SQLException {
        List<Cliente> clientes = null;
        try (Connection con = new ConnectionFactory().getConnection()) {
            ClienteDAO dao = new ClienteDAO(con);
            clientes = dao.buscarTodos();
        }
        return clientes;
    }
    
    public static void remover(Cliente c) throws DAOException, SQLException {
        try (Connection con = new ConnectionFactory().getConnection()) {
            ClienteDAO dao = new ClienteDAO(con);
            dao.remover(c);
        }
    }
}
