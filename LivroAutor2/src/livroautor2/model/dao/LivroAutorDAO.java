/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package livroautor2.model.dao;

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
public class LivroAutorDAO {
    private final String query_livro = "SELECT * FROM Livro WHERE id = (?)";
    private final String query_autor = "SELECT * FROM Autor WHERE id = (?)";
    private final String query_livro_livroautor = "SELECT * FROM Livro_Autor WHERE idLivro = (?)";
    private final String query_autor_livroautor = "SELECT * FROM Livro_Autor WHERE idAutor = (?)";

    public List<String> consultarLivros(int id) {
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ResultSet rs2 = null;
        List<String> livros = new ArrayList<>();
        try{
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(query_autor_livroautor);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            while(rs.next()){
                stmt = con.prepareStatement(query_livro);
                stmt.setInt(1, rs.getInt("idLivro"));
                rs2 = stmt.executeQuery();
                rs2.next();
                livros.add(rs2.getString("titulo"));
            }
            return livros;
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao consultar livros por autor no banco de dados. Origem="+ex.getMessage());
        } finally{
            try{rs.close();}catch(Exception ex){System.out.println("Erro ao fechar result set. Ex="+ex.getMessage());};
            try{stmt.close();}catch(Exception ex){System.out.println("Erro ao fechar stmt. Ex="+ex.getMessage());};
            try{con.close();;}catch(Exception ex){System.out.println("Erro ao fechar conexão. Ex="+ex.getMessage());};
        }

    }
    
    public List<String> consultarAutores(int id) {
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ResultSet rs2 = null;
        List<String> autores = new ArrayList<>();
        try{
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(query_livro_livroautor);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            while(rs.next()){
                stmt = con.prepareStatement(query_autor);
                stmt.setInt(1, rs.getInt("idAutor"));
                rs2 = stmt.executeQuery();
                rs2.next();
                autores.add(rs2.getString("nome"));
            }
            return autores;
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao consultar autores por livro no banco de dados. Origem="+ex.getMessage());
        } finally{
            try{rs.close();}catch(Exception ex){System.out.println("Erro ao fechar result set. Ex="+ex.getMessage());};
            try{stmt.close();}catch(Exception ex){System.out.println("Erro ao fechar stmt. Ex="+ex.getMessage());};
            try{con.close();;}catch(Exception ex){System.out.println("Erro ao fechar conexão. Ex="+ex.getMessage());};
        }

    }
}
