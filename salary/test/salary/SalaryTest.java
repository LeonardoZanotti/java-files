/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package salary;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
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
public class SalaryTest {
  
    public SalaryTest() {
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
     * Test of main method, of class Salary.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        ByteArrayInputStream in = new ByteArrayInputStream("17.02\n80\n0.05\n ".getBytes());
        System.setIn(in);
        Salary.main(args);
    }

    /**
     * Test of input method, of class Salary.
     */
    @Test
    public void testInput1() {
        System.out.println("input");
        ByteArrayInputStream in = new ByteArrayInputStream("17.02\n80\n0.05\n ".getBytes());
        System.setIn(in);
        Double[] expResult = {17.02, 80.0, 0.05};
        Double[] result = Salary.input();
        assertArrayEquals(expResult, result);
    }

    /**
     * Test of input method, of class Salary.
     */
    @Test
    public void testInput2() {
        System.out.println("input");
        ByteArrayInputStream in = new ByteArrayInputStream("23.54\n160\n0.5\n ".getBytes());
        System.setIn(in);
        Double[] expResult = {23.54, 160.0, 0.5};
        Double[] result = Salary.input();
        assertArrayEquals(expResult, result);
    }

    /**
     * Test of grossSalary method, of class Salary.
     */
    @Test
    public void testGrossSalary1() {
        System.out.println("grossSalary");
        Double hourlyWage = 23.4;
        Double hours = 160.0;
        Double expResult = 3744.0;
        Double result = Salary.grossSalary(hourlyWage, hours);
        assertEquals(expResult, result);
    }

    /**
     * Test of grossSalary method, of class Salary.
     */
    @Test
    public void testGrossSalary2() {
        System.out.println("grossSalary");
        Double hourlyWage = 17.02;
        Double hours = 80.0;
        Double expResult = 1361.6;
        Double result = Salary.grossSalary(hourlyWage, hours);
        assertEquals(expResult, result);
    }

    /**
     * Test of netSalary method, of class Salary.
     */
    @Test
    public void testNetSalary1() {
        System.out.println("netSalary");
        Double grossSalary = 3000.0;
        Double inss = 0.85;
        Double expResult = 450.0;
        Double result = Salary.netSalary(grossSalary, inss);
        assertEquals(expResult, result, 0.0001);
    }

    /**
     * Test of netSalary method, of class Salary.
     */
    @Test
    public void testNetSalary2() {
        System.out.println("netSalary");
        Double grossSalary = 600.0;
        Double inss = 0.2;
        Double expResult = 480.0;
        Double result = Salary.netSalary(grossSalary, inss);
        assertEquals(expResult, result, 0.0001);
    }

    /**
     * Test of printScreen method, of class Salary.
     */
    @Test
    public void testPrintScreen1() {
        System.out.println("printScreen");
        Double hourlyWage = 30.4;
        Double hours = 184.12;
        Double grossRevenue = 5597.25;
        Double netRevenue = 5037.52;
        Salary.printScreen(hourlyWage, hours, grossRevenue, netRevenue);
    }

    /**
     * Test of printScreen method, of class Salary.
     */
    @Test
    public void testPrintScreen2() {
        System.out.println("printScreen");
        Double hourlyWage = 12.4;
        Double hours = 50.0;
        Double grossRevenue = 620.0;
        Double netRevenue = 600.0;
        Salary.printScreen(hourlyWage, hours, grossRevenue, netRevenue);
    }
}
