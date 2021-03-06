package livroautor2.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

public final class Livro {
    private int id;
    private String titulo, assunto, isbnCode;
    private Date publicacao;
    private List<Autor> autores;

    public Livro(int id, String titulo, String assunto, String isbnCode, Date publicacao, List<Autor> autores) {
        this.id = id;
        this.titulo = titulo;
        this.assunto = assunto;
        this.isbnCode = isbnCode;
        this.publicacao = publicacao;
        this.autores = autores;
    }

    public Livro(String titulo, String assunto, String isbnCode, Date publicacao, List<Autor> autores) {
        this.titulo = titulo;
        this.assunto = assunto;
        this.isbnCode = isbnCode;
        this.publicacao = publicacao;
        this.autores = autores;
    }
    
    public Livro(String titulo, String assunto, String isbnCode, Date publicacao) {
        this.titulo = titulo;
        this.assunto = assunto;
        this.isbnCode = isbnCode;
        this.publicacao = publicacao;
        this.autores = new ArrayList<>();
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAssunto() {
        return assunto;
    }

    public void setAssunto(String assunto) {
        this.assunto = assunto;
    }

    public String getIsbnCode() {
        return isbnCode;
    }

    public void setIsbnCode(String isbnCode) {
        this.isbnCode = isbnCode;
    }

    public Date getPublicacao() {
        return publicacao;
    }

    public void setPublicacao(Date publicacao) {
        this.publicacao = publicacao;
    }

    public List<Autor> getAutores() {
        return autores;
    }

    public void setAutores(List<Autor> autores) {
        this.autores = autores;
    }
    
    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Livro other = (Livro) obj;
        if (this.id != other.id) {
            return false;
        }
        if (!Objects.equals(this.titulo, other.titulo)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 29 * hash + this.id;
        hash = 29 * hash + Objects.hashCode(this.titulo);
        return hash;
    }
    
}
