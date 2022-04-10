/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models.dao;

import database.DAO;
import database.DAOException;
import java.sql.Timestamp;
import models.Atendimento;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author leonardozanotti
 */
public class AtendimentoDAO implements DAO<Atendimento> {
    private static final String QUERY_INSERIR = "INSERT INTO tb_atendimento (nome_produto, dt_hr_atendimento, dsc_atendimento, res_atendimento, id_produto, id_tipo_atendimento, id_usuario, id_cliente) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String QUERY_BUSCAR = "SELECT * FROM tb_atendimento WHERE id_atendimento = (?)";
    private static final String QUERY_BUSCAR_TODOS = "SELECT * FROM tb_atendimento";

    private Connection con = null;

    public AtendimentoDAO(Connection con) throws DAOException {
        if (con == null) {
            throw new DAOException("Conexão nula ao criar AtendimentoDAO.");
        }
        this.con = con;
    }
    
    @Override
    public Atendimento buscar(long id) throws DAOException {
        try (PreparedStatement st = con.prepareStatement(AtendimentoDAO.QUERY_BUSCAR)) {
            st.setLong(1, id);
            try (ResultSet rs = st.executeQuery()) {
                if (rs.next())
                    return new Atendimento(
                            rs.getInt("id_produto"),
                            rs.getInt("id_tipo_atendimento"),
                            rs.getInt("id_usuario"),
                            rs.getInt("id_cliente"),
                            rs.getString("nome_produto"),
                            rs.getString("dsc_atendimento"),
                            rs.getString("res_atendimento").charAt(0),
                            rs.getTimestamp("dt_hr_atendimento").toLocalDateTime()
                    );
            }
            return null;
        } catch (SQLException e) {
            throw new DAOException("Erro buscando atendimento: " + AtendimentoDAO.QUERY_BUSCAR, e);
        }
    }

    @Override
    public List<Atendimento> buscarTodos() throws DAOException {
        List<Atendimento> atendimentos = new ArrayList<>();
        try (PreparedStatement st = this.con.prepareStatement(AtendimentoDAO.QUERY_BUSCAR_TODOS); ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                Atendimento atendimento = new Atendimento(
                            rs.getInt("id_produto"),
                            rs.getInt("id_tipo_atendimento"),
                            rs.getInt("id_usuario"),
                            rs.getInt("id_cliente"),
                            rs.getString("nome_produto"),
                            rs.getString("dsc_atendimento"),
                            rs.getString("res_atendimento").charAt(0),
                            rs.getTimestamp("dt_hr_atendimento").toLocalDateTime()
                );
                atendimentos.add(atendimento);
            }
            return atendimentos;
        } catch (SQLException e) {
            throw new DAOException("Erro buscando todos os atendimentos: " + AtendimentoDAO.QUERY_BUSCAR_TODOS, e);
        }
    }

    @Override
    public void inserir(Atendimento a) throws DAOException {
        try (PreparedStatement st = con.prepareStatement(AtendimentoDAO.QUERY_INSERIR)) {
            st.setInt(1, a.getIdProduto());
            st.setInt(2, a.getIdTipoAtendimento());
            st.setInt(3, a.getIdUsuario());
            st.setInt(4, a.getIdCliente());
            st.setString(5, a.getNomeProduto());
            st.setString(6, a.getDscAtendimento());
            st.setString(7, String.valueOf(a.getResAtendimento()));
            st.setTimestamp(8, Timestamp.valueOf(a.getDtHrAtendimento()));
            st.setInt(9, a.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Erro inserindo atendimento: " + AtendimentoDAO.QUERY_INSERIR + "/ " + a.toString(), e);
        }
    }

    @Override
    public void atualizar(Atendimento t) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void remover(Atendimento t) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
