/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package facade;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import database.ConnectionFactory;
import database.DAOException;
import models.Produto;
import models.dao.ProdutoDAO;

/**
 *
 * @author leonardozanotti
 */
public class ProdutoFacade {
    public static Produto buscar(int id) throws DAOException, SQLException {
        Produto produto;
        try (Connection con = new ConnectionFactory().getConnection()) {
            ProdutoDAO dao = new ProdutoDAO(con);
            produto = dao.buscar(id);
        }
        return produto;
    }

    public static List<Produto> buscarTodos() throws DAOException, SQLException {
        List<Produto> produtos;
        try (Connection con = new ConnectionFactory().getConnection()) {
            ProdutoDAO dao = new ProdutoDAO(con);
            produtos = dao.buscarTodos();
        }
        return produtos;
    }
}
