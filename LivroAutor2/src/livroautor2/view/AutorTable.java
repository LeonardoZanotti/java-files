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
public class AutorTable extends AbstractTableModel {
    private List<Autor> autores = new ArrayList();
    private String[] columns = new String[]{"Nome", "Documento", "Naturalidade", "Nascimento", "Livros"};

    public AutorTable() {
    }
    
    public AutorTable(List<Autor> autores) {
        this.autores = autores;
    }
    
    @Override
    public int getRowCount() {
        return this.autores.size();
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
        Autor autor = autores.get(rowIndex);
        switch (columnIndex) {
            case 0: return autor.getNome();
            case 1: return autor.getDocumento();
            case 2: return autor.getNaturalidade();
            case 3: return autor.getNascimento();
            case 4: return autor.getLivros().stream().map(livro -> livro.getTitulo()).collect(Collectors.joining("; "));
            default : return null;
        }
    }
    
    @Override
    public void setValueAt(Object value, int row, int col) {
        Autor autor = autores.get(row);
        switch (col) {
            case 0:
                autor.setNome((String) value);
                break;
            case 1:
                autor.setDocumento((String) value);
                break;
            case 2:
                autor.setNaturalidade((String) value);
                break;
            case 3:
                autor.setNascimento((Date) value);
                break;
            case 4:
                autor.setLivros((List<Livro>) value);
                break;
            default:
                break;
        }
        this.fireTableCellUpdated(row, col);
    }
    
    public void setAutores(List<Autor> autores) {
        this.autores = autores;
        this.fireTableDataChanged();
    }

    public Autor getAutor(int linha){
        return autores.get(linha);
    }
}
