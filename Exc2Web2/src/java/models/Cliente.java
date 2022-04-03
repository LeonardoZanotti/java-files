/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.sql.Date;

/**
 *
 * @author leonardozanotti
 */
public class Cliente {
    private int id;
    private String cpf;
    private String email;
    private String nome;
    private Date data;
    private String rua;
    private int numero;
    private String cep;
    private int idCidade;
    
    public Cliente() {}

    public Cliente(String cpf, String email, String nome, Date data, String rua, int numero, String cep, int idCidade) {
        this.cpf = cpf;
        this.email = email;
        this.nome = nome;
        this.data = data;
        this.rua = rua;
        this.numero = numero;
        this.cep = cep;
        this.idCidade = idCidade;
    }
    
    public Cliente(int id, String cpf, String email, String nome, Date data, String rua, int numero, String cep, int idCidade) {
        this.id = id;
        this.cpf = cpf;
        this.email = email;
        this.nome = nome;
        this.data = data;
        this.rua = rua;
        this.numero = numero;
        this.cep = cep;
        this.idCidade = idCidade;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public int getIdCidade() {
        return idCidade;
    }

    public void setIdCidade(int idCidade) {
        this.idCidade = idCidade;
    }
    
    
}
