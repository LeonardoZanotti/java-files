package livroautor2.model;
import java.sql.Date;
import java.util.List;

public final class Autor {

    private int id;
    private String nome, documento, naturalidade;
    private Date nascimento;
    private List<Livro> livros;

    public Autor(int id, String nome, String documento, String naturalidade, Date nascimento, List<Livro> livros) {
        this.id = id;
        this.nome = nome;
        this.documento = documento;
        this.naturalidade = naturalidade;
        this.nascimento = nascimento;
        this.livros = livros;
    }

    public Autor(String nome, String documento, String naturalidade, Date nascimento, List<Livro> livros) {
        this.nome = nome;
        this.documento = documento;
        this.naturalidade = naturalidade;
        this.nascimento = nascimento;
        this.livros = livros;
    }
    
    public Autor(String nome, String documento, String naturalidade, Date nascimento) {
        this.nome = nome;
        this.documento = documento;
        this.naturalidade = naturalidade;
        this.nascimento = nascimento;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getNaturalidade() {
        return naturalidade;
    }

    public void setNaturalidade(String naturalidade) {
        this.naturalidade = naturalidade;
    }

    public Date getNascimento() {
        return nascimento;
    }

    public void setNascimento(Date nascimento) {
        this.nascimento = nascimento;
    }

    public List<Livro> getLivros() {
        return livros;
    }

    public void setLivros(List<Livro> livros) {
        this.livros = livros;
    }
    
    
}
