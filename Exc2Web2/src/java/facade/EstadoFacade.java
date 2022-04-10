/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package facade;

import database.ConnectionFactory;
import database.DAOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import models.Estado;
import models.dao.EstadoDAO;

/**
 *
 * @author leonardozanotti
 */
public class EstadoFacade {
    public static List<Estado> buscarTodos() throws DAOException, SQLException {
        List<Estado> estados;
        try (Connection con = new ConnectionFactory().getConnection()) {
            EstadoDAO dao = new EstadoDAO(con);
            estados = dao.buscarTodos();
        }
        return estados;
    }
}
