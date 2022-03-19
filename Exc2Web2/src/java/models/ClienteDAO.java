/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import database.DAO;
import database.DAOException;
import java.sql.Connection;
import java.util.List;

/**
 *
 * @author leonardozanotti
 */
public class ClienteDAO implements DAO<Cliente> {
    private static final String QUERY_INSERIR = "INSERT INTO tb_usuario (login_usuario, senha_usuario, nome_usuario) VALUES (?, ?, ?)";
    private static final String QUERY_BUSCAR_TODOS = "SELECT id_usuario, login_usuario, senha_usuario, nome_usuario FROM tb_usuario";
        private static final String QUERY_BUSCAR_NOME_PELO_EMAIL = "SELECT id_usuario, login_usuario, senha_usuario, nome_usuario FROM tb_usuario WHERE login_usuario = (?)";

    private Connection con = null;

    public ClienteDAO(Connection con) throws DAOException {
        if (con == null) {
            throw new DAOException("Conexão nula ao criar UsuarioDAO.");
        }
        this.con = con;
    }
    
    @Override
    public Cliente buscar(long id) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Cliente> buscarTodos() throws DAOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void inserir(Cliente t) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void atualizar(Cliente t) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void remover(Cliente t) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
