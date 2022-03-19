/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author leonardozanotti
 */
public class ConnectionFactory implements AutoCloseable {
    private static String DRIVER = "org.postgresql.Driver";
    private static String URL = "jdbc:postgresql://localhost:5432/web2";
    private static String LOGIN = "leonardozanotti";
    private static String SENHA = "leo123";
    
    private Connection con = null;
    
    public Connection getConnection() throws DAOException {
        if (this.con == null) {
            try {
                Class.forName(this.DRIVER);
                this.con = DriverManager.getConnection(this.URL, this.LOGIN, this.SENHA);
            }
            catch (ClassNotFoundException e) {
                throw new DAOException("Driver do banco não encontrado: " + this.DRIVER, e);
            }
            catch (SQLException e) {
                throw new DAOException("Erro conectando ao banco de dados: " + this.URL + "/" + this.LOGIN + "/" + this.SENHA, e);
            }
        }
        return this.con;
    }
    
    @Override
    public void close() throws Exception {
        if (this.con != null) {
            try {
                this.con.close();
                this.con = null;
                System.out.println("Closed connection.");
            }
            catch (Exception e) {
                System.out.println("Erro fechando a conexão.");
                e.printStackTrace();
            }
        }
    }
}
