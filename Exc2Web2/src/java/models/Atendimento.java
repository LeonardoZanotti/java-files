/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.time.LocalDateTime;

/**
 *
 * @author leonardozanotti
 */
public class Atendimento {
    private int id, idProduto, idTipoAtendimento, idUsuario, idCliente;
    private String nomeProduto, dscAtendimento;
    private char resAtendimento;
    private LocalDateTime dtHrAtendimento;

    public Atendimento(int idProduto, int idTipoAtendimento, int idUsuario, int idCliente, String nomeProduto, String dscAtendimento, char resAtendimento, LocalDateTime dtHrAtendimento) {
        this.idProduto = idProduto;
        this.idTipoAtendimento = idTipoAtendimento;
        this.idUsuario = idUsuario;
        this.idCliente = idCliente;
        this.nomeProduto = nomeProduto;
        this.dscAtendimento = dscAtendimento;
        this.resAtendimento = resAtendimento;
        this.dtHrAtendimento = dtHrAtendimento;
    }
    
    public Atendimento(int id, int idProduto, int idTipoAtendimento, int idUsuario, int idCliente, String nomeProduto, String dscAtendimento, char resAtendimento, LocalDateTime dtHrAtendimento) {
        this.id = id;
        this.idProduto = idProduto;
        this.idTipoAtendimento = idTipoAtendimento;
        this.idUsuario = idUsuario;
        this.idCliente = idCliente;
        this.nomeProduto = nomeProduto;
        this.dscAtendimento = dscAtendimento;
        this.resAtendimento = resAtendimento;
        this.dtHrAtendimento = dtHrAtendimento;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public int getIdTipoAtendimento() {
        return idTipoAtendimento;
    }

    public void setIdTipoAtendimento(int idTipoAtendimento) {
        this.idTipoAtendimento = idTipoAtendimento;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public String getDscAtendimento() {
        return dscAtendimento;
    }

    public void setDscAtendimento(String dscAtendimento) {
        this.dscAtendimento = dscAtendimento;
    }

    public char getResAtendimento() {
        return resAtendimento;
    }

    public void setResAtendimento(char resAtendimento) {
        this.resAtendimento = resAtendimento;
    }

    public LocalDateTime getDtHrAtendimento() {
        return dtHrAtendimento;
    }

    public void setDtHrAtendimento(LocalDateTime dtHrAtendimento) {
        this.dtHrAtendimento = dtHrAtendimento;
    }
}
