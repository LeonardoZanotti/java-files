/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package shapes3;

import java.io.ByteArrayInputStream;
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
public class Shapes3Test {
    
    public Shapes3Test() {
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
    public void testMain1() {
        System.out.println("main");
        String[] args = null;
        ByteArrayInputStream in = new ByteArrayInputStream("1\n10\n12.5\ns\n".getBytes());
        System.setIn(in);
        Shapes3.main(args);
    }
    
    /**
     * Test of main method, of class Shapes.
     */
    @Test
    public void testMain2() {
        System.out.println("main");
        String[] args = null;
        ByteArrayInputStream in = new ByteArrayInputStream("3\n30\n22.5\n2\n15\ns\n".getBytes());
        System.setIn(in);
        Shapes3.main(args);
    }
    
    @Test
    public void testCircleArea1() {
        System.out.println("Circle area test 1");
        Double radius = 10.0;
        Double expResult = 314.16;
        Double result = Circle.area(radius);
        assertEquals(expResult, result, 0.5);
    }
    
    @Test
    public void testCircleArea2() {
        System.out.println("Circle area test 2");
        Double radius = 15.5;
        Double expResult = 754.38;
        Double result = Circle.area(radius);
        assertEquals(expResult, result, 0.5);
    }
    
    @Test
    public void testRectangleArea1() {
        System.out.println("Rectangle area test 1");
        Double side1 = 25.5;
        Double side2 = 12.0;
        Double expResult = 306.0;
        Double result = Rectangle.area(side1, side2);
        assertEquals(expResult, result, 0.0);
    }
    
    @Test
    public void testRectangleArea2() {
        System.out.println("Rectangle area test 2");
        Double side1 = 10.0;
        Double side2 = 5.0;
        Double expResult = 50.0;
        Double result = Rectangle.area(side1, side2);
        assertEquals(expResult, result, 0.0);
    }
    
    @Test
    public void testTriangleArea1() {
        System.out.println("Triangle area test 1");
        Double base = 10.0;
        Double height = 5.0;
        Double expResult = 25.0;
        Double result = Triangle.area(base, height);
        assertEquals(expResult, result, 0.0);
    }
    
    @Test
    public void testTriangleArea2() {
        System.out.println("Triangle area test 2");
        Double base = 25.5;
        Double height = 12.0;
        Double expResult = 153.0;
        Double result = Triangle.area(base, height);
        assertEquals(expResult, result, 0.0);
    }
    
}
