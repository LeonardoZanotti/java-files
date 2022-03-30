package livroautor2.model;
import java.util.ArrayList;
import java.util.List;

public final class Autor implements Comparable {

    private int id;
    private String nome;
    private List<Livro> livros;

    public Autor(String nome) {
        this.nome = nome;
        this.livros = new ArrayList();
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setLivros(List<Livro> livros) {
         for(Livro livro: livros){
             this.adicionarLivro(livro);
        }
    }

    public List<Livro> getLivros() {
        return this.livros;
    }

    public void adicionarLivro(Livro livro) {
        if (!this.getLivros().contains(livro)) {
            this.livros.add(livro);
            livro.adicionarAutor(this);
        }
    }

    public void removerLivro(Livro livro) {
        if (this.getLivros().contains(livro)) {
            this.livros.remove(livro);
            livro.removerAutor(this);
        }
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    /**
     * Método que produz um hashCode igual para bicicletas iguais.
     * @return Inteiro que representa o hashCode do objeto
     */
    public int hashCode() {
        int hash = 7;
        hash = 71 * hash + this.id;
        return hash;
    }
    /**
     * Método que compara duas bicicletas pelo seu conteúdo
     * @return booleano: Verndadeiro se igual, falso, caso contrário.
     */
    @Override
    public boolean equals(Object obj){
        if(obj == null){
            return false;
        }
        if(!obj.getClass().equals(this.getClass()) )
            return false;

        Autor objAutor = (Autor)obj;

        if(objAutor.getId()!=this.getId())
            return false;

        return true;
    }

    @Override
    public int compareTo(Object autor) {
        Autor a = (Autor) autor;
        return this.getNome().compareTo(a.getNome());
    }
}
