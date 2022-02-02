/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package shapes;

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
public class ShapesTest {
    
    public ShapesTest() {
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
     * Test of main method, of class Shapes.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        Shapes.main(args);
    }

    /**
     * Test of calculaAreaRetangulo method, of class Shapes.
     */
    @Test
    public void testCalculaAreaRetangulo1() {
        System.out.println("calculaAreaRetangulo");
        double lado1 = 15.0;
        double lado2 = 5.0;
        double expResult = 75.0;
        double result = Shapes.calculaAreaRetangulo(lado1, lado2);
        assertEquals(expResult, result, 0.0);
    }
    
    /**
     * Test of calculaAreaRetangulo method, of class Shapes.
     */
    @Test
    public void testCalculaAreaRetangulo2() {
        System.out.println("calculaAreaRetangulo");
        double lado1 = 2.0;
        double lado2 = 10.0;
        double expResult = 20.0;
        double result = Shapes.calculaAreaRetangulo(lado1, lado2);
        assertEquals(expResult, result, 0.0);
    }

    /**
     * Test of calculaAreaCircunferencia method, of class Shapes.
     */
    @Test
    public void testCalculaAreaCircunferencia1() {
        System.out.println("calculaAreaCircunferencia");
        double raio = 10.0;
        double expResult = Math.PI * 100.0;
        double result = Shapes.calculaAreaCircunferencia(raio);
        assertEquals(expResult, result, 0.0);
    }
    
    /**
     * Test of calculaAreaCircunferencia method, of class Shapes.
     */
    @Test
    public void testCalculaAreaCircunferencia2() {
        System.out.println("calculaAreaCircunferencia");
        double raio = 3.0;
        double expResult = Math.PI * 9.0;
        double result = Shapes.calculaAreaCircunferencia(raio);
        assertEquals(expResult, result, 0.0);
    }

    /**
     * Test of calculaAreaTriangulo method, of class Shapes.
     */
    @Test
    public void testCalculaAreaTriangulo1() {
        System.out.println("calculaAreaTriangulo");
        double base = 20.0;
        double altura = 10.0;
        double expResult = 100.0;
        double result = Shapes.calculaAreaTriangulo(base, altura);
        assertEquals(expResult, result, 0.0);
    }
    
    /**
     * Test of calculaAreaTriangulo method, of class Shapes.
     */
    @Test
    public void testCalculaAreaTriangulo2() {
        System.out.println("calculaAreaTriangulo");
        double base = 5.0;
        double altura = 4.0;
        double expResult = 10.0;
        double result = Shapes.calculaAreaTriangulo(base, altura);
        assertEquals(expResult, result, 0.0);
    }
}
