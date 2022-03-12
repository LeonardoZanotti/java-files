/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package models;

import database.ConnectionFactory;
import database.DAOException;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import java.sql.Connection;
import org.junit.FixMethodOrder;
import org.junit.runners.MethodSorters;

/**
 *
 * @author leonardozanotti
 */
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class ContatoDAOTest {
    Connection con;
    
    public ContatoDAOTest() throws DAOException {
        ConnectionFactory factory = new ConnectionFactory();
        this.con = factory.getConnection();
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of insere method, of class ContatoDAO.
     */
    @Test
    public void test1Insere() throws Exception {
        System.out.println("insere");
        Contato c = new Contato("teste login", "teste name", "teste password");
        ContatoDAO instance = new ContatoDAO(this.con);
        instance.insere(c);
        List<Contato> result = instance.lista();
        assertEquals(true, result.stream().anyMatch(contact -> contact.getLogin().equals(c.getLogin())));
    }

    /**
     * Test of lista method, of class ContatoDAO.
     */
    @Test
    public void test2Lista() throws Exception {
        System.out.println("lista");
        ContatoDAO instance = new ContatoDAO(this.con);
        List<Contato> result = instance.lista();
        assertEquals(true, result.get(0) instanceof Contato);
    }

    /**
     * Test of altera method, of class ContatoDAO.
     */
    @Test
    public void test3Altera() throws Exception {
        System.out.println("altera");
        ContatoDAO instance = new ContatoDAO(this.con);
        List<Contato> result = instance.lista();
        Contato c = result.get(result.size() - 1);
        c.setName("novo nome");
        c.setLogin("novo email");
        c.setPassword("nova senha");
        instance.altera(c);
        assertEquals(true, result.stream().anyMatch(contact ->
                contact.getLogin().equals(c.getLogin()) &&
                contact.getName().equals(c.getName()) &&
                contact.getPassword().equals(c.getPassword())
            ));
    }

    /**
     * Test of remove method, of class ContatoDAO.
     */
    @Test
    public void test4Remove() throws Exception {
        System.out.println("remove");
        ContatoDAO instance = new ContatoDAO(this.con);
        List<Contato> result = instance.lista();
        Contato c = result.get(result.size() - 1);
        instance.remove(c);
        result = instance.lista();
        assertEquals(false, result.stream().anyMatch(contact -> contact.getLogin().equals(c.getLogin())));
    }
    
}
