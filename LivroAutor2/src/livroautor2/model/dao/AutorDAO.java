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

public class AutorDAO {

    private final String stmtInserir = "INSERT INTO autor (nome, documento, naturalidade, nascimento) VALUES (?, ?, ?, ?)";
    private final String stmtConsultar = "SELECT * FROM autor WHERE id = ?";
    private final String stmtInserirLA = "INSERT INTO Livro_Autor VALUES(?, ?)";
    private final String stmtListar = "SELECT * FROM autor";

    public void inserirAutor(Autor autor, List<Integer> ids) {
        Connection con=null;
        PreparedStatement stmt = null;
        try{
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(stmtInserir,PreparedStatement.RETURN_GENERATED_KEYS);
            stmt.setString(1, autor.getNome());
            stmt.setString(2, autor.getDocumento());
            stmt.setString(3, autor.getNaturalidade());
            stmt.setDate(4, new java.sql.Date(autor.getNascimento().getTime()));
            stmt.executeUpdate();
            autor.setId(lerIdAutor(stmt));
            this.gravarLivros(con, autor, ids);
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao inserir um autor no banco de dados. Origem="+ex.getMessage());
        } finally{
            try{stmt.close();}catch(Exception ex){System.out.println("Erro ao fechar stmt. Ex="+ex.getMessage());};
            try{con.close();}catch(Exception ex){System.out.println("Erro ao fechar conexão. Ex="+ex.getMessage());};
        }
     }
    
    public void gravarLivros(Connection con, Autor autor, List<Integer> ids) {
        PreparedStatement stmt = null;
        try{
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(stmtInserirLA,PreparedStatement.RETURN_GENERATED_KEYS);
            for (Integer id : ids) {
                stmt.setInt(1, id);
                stmt.setInt(2, autor.getId());
                stmt.executeUpdate();
            }
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao inserir um autor no banco de dados. Origem="+ex.getMessage());
        } finally{
            try{stmt.close();}catch(Exception ex){System.out.println("Erro ao fechar stmt. Ex="+ex.getMessage());};
            try{con.close();}catch(Exception ex){System.out.println("Erro ao fechar conexão. Ex="+ex.getMessage());};
        }
    }
    
    private int lerIdAutor(PreparedStatement stmt) throws SQLException {
        ResultSet rs = stmt.getGeneratedKeys();
        rs.next();
        return rs.getInt(1);
    }

    public Autor consultarAutor(int id) {
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Autor autorLido;
        try{
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(stmtConsultar);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            if(rs.next()){
                autorLido = new Autor(rs.getString("nome"), rs.getString("documento"), rs.getString("naturalidade"), rs.getDate("nascimento"));
                autorLido.setId(rs.getInt("id"));
                return autorLido;
            }else{
                throw new RuntimeException("Não existe autor com este id. Id="+id);
            }
            
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao consultar um autor no banco de dados. Origem="+ex.getMessage());
        } finally{
            try{rs.close();}catch(Exception ex){System.out.println("Erro ao fechar result set. Ex="+ex.getMessage());};
            try{stmt.close();}catch(Exception ex){System.out.println("Erro ao fechar stmt. Ex="+ex.getMessage());};
            try{con.close();;}catch(Exception ex){System.out.println("Erro ao fechar conexão. Ex="+ex.getMessage());};
        }

    }

    public List<Autor> listarAutores() throws Exception {
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Autor> lista = new ArrayList();
        try{
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(stmtListar);
            rs = stmt.executeQuery();
            while(rs.next()){
                Autor autor = new Autor(rs.getString("nome"), rs.getString("documento"), rs.getString("naturalidade"), rs.getDate("nascimento"));
                autor.setId(rs.getInt("id"));
                lista.add(autor);
            }
            return lista;
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao consultar uma lista de autores. Origem="+ex.getMessage());
        }finally{
            try{rs.close();}catch(Exception ex){System.out.println("Erro ao fechar result set. Ex="+ex.getMessage());};
            try{stmt.close();}catch(Exception ex){System.out.println("Erro ao fechar stmt. Ex="+ex.getMessage());};
            try{con.close();;}catch(Exception ex){System.out.println("Erro ao fechar conexão. Ex="+ex.getMessage());};               
        }

    }

    private List<Livro> lerLivros(long idAutor, Connection con) throws SQLException{
        //Select para pegar os livros de um autor
        String sql = "SELECT *"
                + " FROM livro"
                + " INNER JOIN livro_autor"
                + " 	ON livro.id = livro_autor.idLivro"
                + " WHERE livro_autor.idAutor = ? ";
        PreparedStatement stmt = null;
        List<Livro> livros = null;
        stmt = con.prepareStatement(sql);
        stmt.setLong(1, idAutor);
        ResultSet resultado = stmt.executeQuery();
        livros = new ArrayList<Livro>();
        while (resultado.next()) {
            Livro livroLido = new Livro(resultado.getString("titulo"), resultado.getString("assunto"), resultado.getString("isbnCode"), resultado.getDate("publicacao"));
            livroLido.setId(resultado.getInt("id"));
            livros.add(livroLido);
        }

        return livros;
    }
    
    public List<Autor> listarAutoresComLivros() {
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Autor> lista = new ArrayList();
        try{
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(stmtListar);
            rs = stmt.executeQuery();
            while(rs.next()){
                List<Livro> listLivros = lerLivros(rs.getInt(1),con);
                System.out.println(listLivros.size());
                Autor autor = new Autor(rs.getString("nome"), rs.getString("documento"), rs.getString("naturalidade"), rs.getDate("nascimento"), listLivros);
                autor.setId(rs.getInt("id"));
                lista.add(autor);
            }
            return lista;
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao consultar uma lista de autores. Origem="+ex.getMessage());
        }finally{
            try{rs.close();}catch(Exception ex){System.out.println("Erro ao fechar result set. Ex="+ex.getMessage());};
            try{stmt.close();}catch(Exception ex){System.out.println("Erro ao fechar stmt. Ex="+ex.getMessage());};
            try{con.close();;}catch(Exception ex){System.out.println("Erro ao fechar conexão. Ex="+ex.getMessage());};               
        }
    }
}
