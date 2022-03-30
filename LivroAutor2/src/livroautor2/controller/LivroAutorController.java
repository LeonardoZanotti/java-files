/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package livroautor2.controller;

import java.util.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import livroautor2.model.Autor;
import livroautor2.model.Livro;
import livroautor2.model.dao.AutorDAO;
import livroautor2.model.dao.LivroDAO;

/**
 *
 * @author leonardozanotti
 */
public class LivroAutorController {

    public void createBook(String titulo, String assunto, String isbnCode, Date publicacao) {
        LivroDAO dao = new LivroDAO();
        dao.inserirLivro(new Livro(titulo, assunto, isbnCode, publicacao));
    }

    public void createAutor(String nome, String documento, String naturalidade, Date nascimento) {
        AutorDAO dao = new AutorDAO();
        dao.inserirAutor(new Autor(nome, documento, naturalidade, nascimento), new ArrayList<Integer>());
    }

    public List<Livro> listLivros() {
        LivroDAO dao = new LivroDAO();
        return dao.listarLivroComAutores();
    }
    
    public List<Autor> listAutores() {
        AutorDAO dao = new AutorDAO();
        try {
            return dao.listarAutores();
        } catch (Exception ex) {
            Logger.getLogger(LivroAutorController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
