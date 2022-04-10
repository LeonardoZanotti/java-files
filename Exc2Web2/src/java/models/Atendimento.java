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
    private int id;
    private Produto produto;
    private TipoAtendimento tipoAtendimento;
    private Usuario usuario;
    private Cliente cliente;
    private String nomeProduto, dscAtendimento;
    private char resAtendimento;
    private LocalDateTime dtHrAtendimento;

    public Atendimento(Produto produto, TipoAtendimento tipoAtendimento, Usuario usuario, Cliente cliente, String nomeProduto, String dscAtendimento, char resAtendimento, LocalDateTime dtHrAtendimento) {
        this.produto = produto;
        this.tipoAtendimento = tipoAtendimento;
        this.usuario = usuario;
        this.cliente = cliente;
        this.nomeProduto = nomeProduto;
        this.dscAtendimento = dscAtendimento;
        this.resAtendimento = resAtendimento;
        this.dtHrAtendimento = dtHrAtendimento;
    }
    
    public Atendimento(int id, Produto produto, TipoAtendimento tipoAtendimento, Usuario usuario, Cliente cliente, String nomeProduto, String dscAtendimento, char resAtendimento, LocalDateTime dtHrAtendimento) {
        this.id = id;
        this.produto = produto;
        this.tipoAtendimento = tipoAtendimento;
        this.usuario = usuario;
        this.cliente = cliente;
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

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public TipoAtendimento getTipoAtendimento() {
        return tipoAtendimento;
    }

    public void setTipoAtendimento(TipoAtendimento tipoAtendimento) {
        this.tipoAtendimento = tipoAtendimento;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
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
