/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import database.DAO;
import database.DAOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author leonardozanotti
 */
public class ClienteDAO implements DAO<Cliente> {
    private static final String QUERY_INSERIR = "INSERT INTO tb_cliente (cpf_cliente, email_cliente, nome_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String QUERY_BUSCAR = "SELECT * FROM tb_cliente WHERE id_cliente = (?)";
    private static final String QUERY_BUSCAR_TODOS = "SELECT * FROM tb_cliente";
    private static final String QUERY_ALTERAR = "UPDATE tb_cliente SET cpf_cliente = (?), email_cliente = (?), nome_cliente = (?), data_cliente = (?), rua_cliente = (?), nr_cliente = (?), cep_cliente = (?), cidade_cliente = (?), uf_cliente = (?) WHERE id_cliente = (?)";
    private static final String QUERY_REMOVER = "DELETE FROM tb_cliente WHERE id_cliente = (?)";

    private Connection con = null;

    public ClienteDAO(Connection con) throws DAOException {
        if (con == null) {
            throw new DAOException("Conexão nula ao criar ClienteDAO.");
        }
        this.con = con;
    }
    
    @Override
    public Cliente buscar(long id) throws DAOException {
        try (PreparedStatement st = con.prepareStatement(this.QUERY_BUSCAR)) {
            st.setLong(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next())
                return new Cliente(
                    rs.getInt("id_cliente"),
                    rs.getString("cpf_cliente"),
                    rs.getString("email_cliente"),
                    rs.getString("nome_cliente"),
                    rs.getDate("data_cliente"),
                    rs.getString("rua_cliente"),
                    rs.getInt("nr_cliente"),
                    rs.getString("cep_cliente"),
                    rs.getString("cidade_cliente"),
                    rs.getString("uf_cliente")
                );
            return null;
        } catch (SQLException e) {
            throw new DAOException("Erro buscando cliente: " + this.QUERY_BUSCAR, e);
        }
    }

    @Override
    public List<Cliente> buscarTodos() throws DAOException {
        List<Cliente> clientes = new ArrayList<>();
        try (PreparedStatement st = this.con.prepareStatement(this.QUERY_BUSCAR_TODOS); ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                Cliente client = new Cliente(
                    rs.getInt("id_cliente"),
                    rs.getString("cpf_cliente"),
                    rs.getString("email_cliente"),
                    rs.getString("nome_cliente"),
                    rs.getDate("data_cliente"),
                    rs.getString("rua_cliente"),
                    rs.getInt("nr_cliente"),
                    rs.getString("cep_cliente"),
                    rs.getString("cidade_cliente"),
                    rs.getString("uf_cliente")
                );
                clientes.add(client);
            }
            return clientes;
        } catch (SQLException e) {
            throw new DAOException("Erro buscando todos os clientes: " + this.QUERY_BUSCAR_TODOS, e);
        }
    }

    @Override
    public void inserir(Cliente c) throws DAOException {
        try (PreparedStatement st = con.prepareStatement(this.QUERY_INSERIR)) {
            st.setString(1, c.getCpf());
            st.setString(2, c.getEmail());
            st.setString(3, c.getNome());
            st.setDate(4, (Date) c.getData());
            st.setString(5, c.getRua());
            st.setInt(6, c.getNumero());
            st.setString(7, c.getCep());
            st.setString(8, c.getCidade());
            st.setString(9, c.getUf());
            st.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Erro inserindo cliente: " + this.QUERY_INSERIR + "/ " + c.toString(), e);
        }
    }

    @Override
    public void atualizar(Cliente c) throws DAOException {
        try (PreparedStatement st = con.prepareStatement(this.QUERY_ALTERAR)) {
            st.setString(1, c.getCpf());
            st.setString(2, c.getEmail());
            st.setString(3, c.getNome());
            st.setDate(4, (Date) c.getData());
            st.setString(5, c.getRua());
            st.setInt(6, c.getNumero());
            st.setString(7, c.getCep());
            st.setString(8, c.getCidade());
            st.setString(9, c.getUf());
            st.setInt(10, c.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Erro atualizando cliente: " + this.QUERY_ALTERAR + "/ " + c.toString(), e);
        }
    }

    @Override
    public void remover(Cliente c) throws DAOException {
        try (PreparedStatement st = con.prepareStatement(this.QUERY_REMOVER)) {
            st.setInt(1, c.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Erro removendo cliente: " + this.QUERY_REMOVER + "/ " + c.toString(), e);
        }
    }
}
