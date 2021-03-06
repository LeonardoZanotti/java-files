package livroautor2.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import livroautor2.model.Autor;
import livroautor2.model.Livro;

public class LivroDAO {

    private final String stmtInserir = "INSERT INTO livro (titulo, assunto, isbnCode, publicacao) VALUES (?, ?, ?, ?)";
    private final String stmtConsultar = "SELECT * FROM livro WHERE id = ?";
    private final String stmtListaLivroAutor = "SELECT * FROM livro";
    private final String stmtListaLivroAutorByAutor = "SELECT * FROM livro INNER JOIN livro_autor ON livro.id = livro_autor.idLivro WHERE livro_autor.idAutor = ? ";

    public void inserirLivro(Livro livro) {
        Connection con = null;
        PreparedStatement stmt = null;
        try {
            con = ConnectionFactory.getConnection();
            con.setAutoCommit(false);
            stmt = con.prepareStatement(stmtInserir, PreparedStatement.RETURN_GENERATED_KEYS);
            stmt.setString(1, livro.getTitulo());
            stmt.setString(2, livro.getAssunto());
            stmt.setString(3, livro.getIsbnCode());
            stmt.setDate(4, new java.sql.Date(livro.getPublicacao().getTime()));
            stmt.executeUpdate();
            int idLivroGravado = lerIdLivro(stmt);
            livro.setId(idLivroGravado);
            this.gravarAutores(livro, con);
            con.commit();
        } catch (SQLException ex) {
            try{con.rollback();}catch(SQLException ex1){System.out.println("Erro ao tentar rollback. Ex="+ex1.getMessage());};
            throw new RuntimeException("Erro ao inserir um livro no banco de dados. Origem="+ex.getMessage());
        } finally{
            try{stmt.close();}catch(Exception ex){System.out.println("Erro ao fechar stmt. Ex="+ex.getMessage());};
            try{con.close();;}catch(Exception ex){System.out.println("Erro ao fechar conexão. Ex="+ex.getMessage());};
        }
    }
     private int lerIdLivro(PreparedStatement stmt) throws SQLException {
        ResultSet rs = stmt.getGeneratedKeys();
        rs.next();
        return rs.getInt(1);
    }   

    public Livro consultarLivro(int id) {
        Connection con=null;
        PreparedStatement stmt=null;
        ResultSet rs=null;
        try{
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(stmtConsultar);
            Livro livroLido = null;
            stmt.setLong(1, id);
            rs = stmt.executeQuery();
            rs.next();
            List<Autor> listaAutores = lerAutores(id,con);
            livroLido = new Livro(rs.getInt("Id"), rs.getString("titulo"), rs.getString("assunto"), rs.getString("isbnCode"), rs.getDate("publicacao"), listaAutores);
            return livroLido;           
        }catch(SQLException ex){
            throw new RuntimeException("Erro ao consultar um livro no banco de dados. Origem="+ex.getMessage());            
        }finally{
            try{rs.close();}catch(Exception ex){System.out.println("Erro ao fechar rs. Ex="+ex.getMessage());};
            try{stmt.close();}catch(Exception ex){System.out.println("Erro ao fechar stmt. Ex="+ex.getMessage());};
            try{con.close();;}catch(Exception ex){System.out.println("Erro ao fechar conexão. Ex="+ex.getMessage());};            
        }

    }

    private void gravarAutores(Livro livro, Connection con) throws SQLException {
        String sql = "INSERT INTO livro_autor (idLivro, idAutor) VALUES ( ?, ?)";
        PreparedStatement stmt;
        stmt = con.prepareStatement(sql);
        stmt.setInt(1, livro.getId());
        List<Autor> autores = livro.getAutores();
        for (Autor autor : autores) {
            stmt.setLong(2, autor.getId());
            stmt.executeUpdate();
        }
    }

    private List<Autor> lerAutores(long idLivro, Connection con) throws SQLException{
        //Select para pegar os autores de um livro
        String sql = "SELECT *"
                + " FROM autor"
                + " INNER JOIN livro_autor"
                + " 	ON autor.id = livro_autor.idAutor"
                + " WHERE livro_autor.idLivro = ? ";
        PreparedStatement stmt = null;
        List<Autor> autores = null;
        stmt = con.prepareStatement(sql);
        stmt.setLong(1, idLivro);
        ResultSet resultado = stmt.executeQuery();
        autores = new ArrayList<Autor>();
        while (resultado.next()) {
            Autor autorLido = new Autor(resultado.getString("nome"), resultado.getString("documento"), resultado.getString("naturalidade"), resultado.getDate("nascimento"));
            autorLido.setId(resultado.getInt("id"));
            autores.add(autorLido);
        }

        return autores;
    }

    public List<Livro> listarLivroComAutores() {
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try{
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(stmtListaLivroAutor);            
            rs = stmt.executeQuery();
            List<Livro> listaLivros = new ArrayList<Livro>();
            while (rs.next()) {
                List<Autor> listAutores = lerAutores(rs.getInt(1),con);
                Livro livro = new Livro(rs.getInt("Id"), rs.getString("titulo"), rs.getString("assunto"), rs.getString("isbnCode"), rs.getDate("publicacao"), listAutores);
                listaLivros.add(livro);
            }

            return listaLivros;            
        }catch(SQLException ex){
            throw new RuntimeException("Erro ao listar um livro com autores no banco de dados. Origem="+ex.getMessage());            
        }finally{
            try{rs.close();}catch(Exception ex){System.out.println("Erro ao fechar rs. Ex="+ex.getMessage());};
            try{stmt.close();}catch(Exception ex){System.out.println("Erro ao fechar stmt. Ex="+ex.getMessage());};
            try{con.close();;}catch(Exception ex){System.out.println("Erro ao fechar conexão. Ex="+ex.getMessage());};                
        }
    }
    
    public List<Livro> listarLivroComAutoresPorIdDoAutor(long autorId) {
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try{
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(stmtListaLivroAutorByAutor);           
            stmt.setLong(1, autorId);
            rs = stmt.executeQuery();
            List<Livro> listaLivros = new ArrayList<Livro>();
            while (rs.next()) {
                List<Autor> listAutores = lerAutores(rs.getInt(1),con);
                Livro livro = new Livro(rs.getInt("Id"), rs.getString("titulo"), rs.getString("assunto"), rs.getString("isbnCode"), rs.getDate("publicacao"), listAutores);
                listaLivros.add(livro);
            }

            return listaLivros;            
        }catch(SQLException ex){
            throw new RuntimeException("Erro ao listar um livro com autores no banco de dados. Origem="+ex.getMessage());            
        }finally{
            try{rs.close();}catch(Exception ex){System.out.println("Erro ao fechar rs. Ex="+ex.getMessage());};
            try{stmt.close();}catch(Exception ex){System.out.println("Erro ao fechar stmt. Ex="+ex.getMessage());};
            try{con.close();;}catch(Exception ex){System.out.println("Erro ao fechar conexão. Ex="+ex.getMessage());};                
        }
    }
}
