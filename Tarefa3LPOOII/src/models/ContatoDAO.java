/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import database.DAO;
import database.DAOException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.List;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author leonardozanotti
 */
public class ContatoDAO implements DAO<Contato> {
    private static final String QUERY_INSERE = "INSERT INTO tb_contato (login_contato, senha_contato, nome_contato) VALUES (?, ?, ?)";
    private static final String QUERY_ALTERA = "UPDATE tb_contato SET login_contato = (?), senha_contato = (?), nome_contato = (?) WHERE id_contato = (?)";
    private static final String QUERY_REMOVE = "DELETE FROM tb_contato WHERE id_contato = (?)";
    private static final String QUERY_LISTA = "SELECT id_contato, login_contato, senha_contato, nome_contato FROM tb_contato";

    private Connection con = null;
    
    public ContatoDAO(Connection con) throws DAOException {
        if (con == null) {
            throw new DAOException("Conexão nula ao criar ContatoDAO.");
        }
        this.con = con;
    }
    
    @Override
    public List<Contato> lista() throws DAOException {
        List<Contato> contatos = new ArrayList<>();
        try (PreparedStatement st = this.con.prepareStatement(this.QUERY_LISTA); ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                Contato contact = new Contato();
                contact.setId(rs.getInt("id_contato"));
                contact.setName(rs.getString("nome_contato"));
                contact.setLogin(rs.getString("login_contato"));
                contact.setPassword(rs.getString("senha_contato"));
                contatos.add(contact);
            }
            return contatos;
        } catch (SQLException e) {
            throw new DAOException("Erro buscando todos os usuários: " + this.QUERY_LISTA, e);
        }
    }

    @Override
    public void insere(Contato c) throws DAOException {
        try (PreparedStatement st = con.prepareStatement(this.QUERY_INSERE)) {
            st.setString(1, c.getLogin());
            st.setString(2, c.getPassword());
            st.setString(3, c.getName());
            st.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Erro inserindo contato: " + this.QUERY_INSERE + "/ " + c.toString(), e);
        }
    }

    @Override
    public void altera(Contato c) throws DAOException {
        try (PreparedStatement st = con.prepareStatement(this.QUERY_ALTERA)) {
            st.setString(1, c.getLogin());
            st.setString(2, c.getPassword());
            st.setString(3, c.getName());
            st.setInt(4, c.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Erro atualizando contato: " + this.QUERY_ALTERA + "/ " + c.toString(), e);
        }
    }

    @Override
    public void remove(Contato c) throws DAOException {
        try (PreparedStatement st = con.prepareStatement(this.QUERY_REMOVE)) {
            st.setInt(1, c.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Erro removendo contato: " + this.QUERY_REMOVE + "/ " + c.toString(), e);
        }
    }
    
}
