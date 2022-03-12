/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package models;

import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author leonardozanotti
 */
public class ContatoDAOTest {
    
    public ContatoDAOTest() {
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
     * Test of lista method, of class ContatoDAO.
     */
    @Test
    public void testLista() throws Exception {
        System.out.println("lista");
        ContatoDAO instance = null;
        List<Contato> expResult = null;
        List<Contato> result = instance.lista();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of insere method, of class ContatoDAO.
     */
    @Test
    public void testInsere() throws Exception {
        System.out.println("insere");
        Contato c = null;
        ContatoDAO instance = null;
        instance.insere(c);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of altera method, of class ContatoDAO.
     */
    @Test
    public void testAltera() throws Exception {
        System.out.println("altera");
        Contato c = null;
        ContatoDAO instance = null;
        instance.altera(c);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of remove method, of class ContatoDAO.
     */
    @Test
    public void testRemove() throws Exception {
        System.out.println("remove");
        Contato c = null;
        ContatoDAO instance = null;
        instance.remove(c);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
