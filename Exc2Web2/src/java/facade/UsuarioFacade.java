/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package facade;
import database.ConnectionFactory;
import database.DAOException;
import java.sql.Connection;
import java.sql.SQLException;
import models.Usuario;
import models.dao.UsuarioDAO;

/**
 *
 * @author leonardozanotti
 */
public class UsuarioFacade {
    public static Usuario buscar(int id) throws DAOException, SQLException {
        Usuario usuario;
        try (Connection con = new ConnectionFactory().getConnection()) {
            UsuarioDAO dao = new UsuarioDAO(con);
            usuario = dao.buscar(id);
        }
        return usuario;
    }
}
