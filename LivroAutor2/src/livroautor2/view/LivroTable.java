/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package livroautor2.view;

import java.util.ArrayList;
import java.sql.Date;
import java.util.List;
import java.util.stream.Collectors;
import javax.swing.table.AbstractTableModel;
import livroautor2.model.Autor;
import livroautor2.model.Livro;

/**
 *
 * @author leonardozanotti
 */
public class LivroTable extends AbstractTableModel {
    private List<Livro> livros = new ArrayList();
    private String[] columns = new String[]{"Titulo", "Assunto", "ISBN", "Publicação", "Autores"};

    public LivroTable() {
    }
    
    public LivroTable(List<Livro> livros) {
        this.livros = livros;
    }
    
    @Override
    public int getRowCount() {
        return this.livros.size();
    }

    @Override
    public int getColumnCount() {
        return this.columns.length;
    }
    
    @Override
    public String getColumnName(int index) {
        return this.columns[index];
    }
    
    @Override
    public boolean isCellEditable(int row, int column) {
        return false;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Livro livro = livros.get(rowIndex);
        switch (columnIndex) {
            case 0: return livro.getTitulo();
            case 1: return livro.getAssunto();
            case 2: return livro.getIsbnCode();
            case 3: return livro.getPublicacao();
            case 4: return livro.getAutores().stream().map(autor -> autor.getNome()).collect(Collectors.joining("; "));
            default : return null;
        }
    }
    
    @Override
    public void setValueAt(Object value, int row, int col) {
        Livro livro = livros.get(row);
        switch (col) {
            case 0:
                livro.setTitulo((String) value);
                break;
            case 1:
                livro.setAssunto((String) value);
                break;
            case 2:
                livro.setIsbnCode((String) value);
                break;
            case 3:
                livro.setPublicacao((Date) value);
                break;
            case 4:
                livro.setAutores((List<Autor>) value);
                break;
            default:
                break;
        }
        this.fireTableCellUpdated(row, col);
    }
    
    public void setLivros(List<Livro> livros) {
        this.livros = livros;
        this.fireTableDataChanged();
    }

    public Livro getLivro(int linha){
        return livros.get(linha);
    }
    
    public void searchCliente(String search) {
        List<Livro> filteredLivros = this.livros.stream()
            .filter(livro -> livro.getAutores().stream().filter(autor -> autor.getNome().contains(search)).count() > 0)
            .collect(Collectors.toList());
        this.setLivros(filteredLivros);
    }
}
