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
import models.TipoAtendimento;
import models.dao.TipoAtendimentoDAO;

/**
 *
 * @author leonardozanotti
 */
public class TipoAtendimentoFacade {
    public static TipoAtendimento buscar(int id) throws DAOException, SQLException {
        TipoAtendimento tipoAtendimento;
        try (Connection con = new ConnectionFactory().getConnection()) {
            TipoAtendimentoDAO dao = new TipoAtendimentoDAO(con);
            tipoAtendimento = dao.buscar(id);
        }
        return tipoAtendimento;
    }

    public static List<TipoAtendimento> buscarTodos() throws DAOException, SQLException {
        List<TipoAtendimento> tipoAtendimentos;
        try (Connection con = new ConnectionFactory().getConnection()) {
            TipoAtendimentoDAO dao = new TipoAtendimentoDAO(con);
            tipoAtendimentos = dao.buscarTodos();
        }
        return tipoAtendimentos;
    }
}
