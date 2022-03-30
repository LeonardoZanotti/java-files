/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package livroautor2.view;

import java.util.ArrayList;
import java.util.Collections;
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
    private String[] columns = new String[]{"Titulo", "Assunto", "ISBN", "Publicação"};

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
        Livro cliente = livros.get(rowIndex);
        switch (columnIndex) {
            case 0: return cliente.getTitulo();
            case 1: return cliente.getAssunto();
            case 2: return cliente.getIsbnCode();
            case 3: return cliente.getPublicacao();
            default : return null;
        }
    }
    
    @Override
    public void setValueAt(Object value, int row, int col) {
        Livro cliente = livros.get(row);
        switch (col) {
            case 0:
                cliente.setTitulo((String) value);
                break;
            case 1:
                cliente.setAssunto((String) value);
                break;
            case 2:
                cliente.setIsbnCode((String) value);
                break;
            case 3:
                cliente.setPublicacao((Date) value);
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
