/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package livroautor2.view;

import java.util.ArrayList;
import java.sql.Date;
import java.util.List;
import javax.swing.table.AbstractTableModel;
import livroautor2.model.Autor;

/**
 *
 * @author leonardozanotti
 */
public class AutorTable extends AbstractTableModel {
    private List<Autor> autores = new ArrayList();
    private String[] columns = new String[]{"Nome", "Documento", "Naturalidade", "Nascimento"};

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
        Autor cliente = autores.get(rowIndex);
        switch (columnIndex) {
            case 0: return cliente.getNome();
            case 1: return cliente.getDocumento();
            case 2: return cliente.getNaturalidade();
            case 3: return cliente.getNascimento();
            default : return null;
        }
    }
    
    @Override
    public void setValueAt(Object value, int row, int col) {
        Autor cliente = autores.get(row);
        switch (col) {
            case 0:
                cliente.setNome((String) value);
                break;
            case 1:
                cliente.setDocumento((String) value);
                break;
            case 2:
                cliente.setNaturalidade((String) value);
                break;
            case 3:
                cliente.setNascimento((Date) value);
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
