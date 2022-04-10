/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package facade;

import database.ConnectionFactory;
import database.DAOException;
import jakarta.mail.NoSuchProviderException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import models.Usuario;
import models.dao.UsuarioDAO;

/**
 *
 * @author leonardozanotti
 */
public class LoginFacade {
    public static boolean validLogin(String login, String password, ConnectionFactory factory) throws DAOException, NoSuchAlgorithmException, NoSuchProviderException, java.security.NoSuchProviderException {
        UsuarioDAO dao = new UsuarioDAO(factory.getConnection());
        List<Usuario> usuarios = dao.buscarTodos();
        String hashedPassword = getSecurePassword(password);
        return usuarios.stream().anyMatch(user -> user.getLogin().equals(login) && user.getPassword().equals(hashedPassword));
    }
    
    public static Usuario getUserByLogin(String login, ConnectionFactory factory) throws DAOException {
        UsuarioDAO dao = new UsuarioDAO(factory.getConnection());
        Usuario usuario = dao.buscarPeloEmail(login);
        return usuario;
    }

    private static String getSecurePassword(String passwordToHash) {
        String generatedPassword = null;
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");

            // Add password bytes to digest
            md.update(passwordToHash.getBytes());

            // Get the hash's bytes
            byte[] bytes = md.digest();

            // This bytes[] has bytes in decimal format. Convert it to hexadecimal format
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < bytes.length; i++) {
              sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }

            // Get complete hashed password in hex format
            generatedPassword = sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return generatedPassword;
    }
}
