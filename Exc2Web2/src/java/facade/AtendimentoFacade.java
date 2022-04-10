/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package facade;

import database.ConnectionFactory;
import database.DAOException;
import models.Atendimento;
import models.dao.AtendimentoDAO;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author leonardozanotti
 */
public class AtendimentoFacade {
    public static void inserir(Atendimento a) throws DAOException, SQLException {
        try (Connection con = new ConnectionFactory().getConnection()) {
            AtendimentoDAO dao = new AtendimentoDAO(con);
            dao.inserir(a);
        }
    }
    
    public static Atendimento buscar(int id) throws DAOException, SQLException {
        Atendimento atendimento;
        try (Connection con = new ConnectionFactory().getConnection()) {
            AtendimentoDAO dao = new AtendimentoDAO(con);
            atendimento = dao.buscar(id);
        }
        return atendimento;
    }
    
    public static List<Atendimento> buscarTodos(int id) throws DAOException, SQLException {
        List<Atendimento> atendimentos;
        try (Connection con = new ConnectionFactory().getConnection()) {
            AtendimentoDAO dao = new AtendimentoDAO(con);
            atendimentos = dao.buscarTodos(id);
        }
        return atendimentos;
    }
}
