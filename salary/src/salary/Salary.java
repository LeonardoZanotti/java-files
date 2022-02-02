/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package salary;

import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author leonardozanotti
 */
public class Salary {
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Double[] res = input();
        
        Double hourlyWage = res[0];
        Double hours = res[1];
        Double inss = res[2];
        
        Double grossRevenue = grossSalary(hourlyWage, hours);
        Double netRevenue = netSalary(grossRevenue, inss);
        
        printScreen(hourlyWage, hours, grossRevenue, netRevenue);
    }
    
    public static Double[] input() {
        Double hourlyWage = Double.NaN;
        Double hours = Double.NaN;
        Double inss = Double.NaN;
        try {
            Scanner input = new Scanner(System.in);
            System.out.println("Hourly wage:");
            hourlyWage = input.nextDouble();
            System.out.println("Hours per month:");
            hours = input.nextDouble();
            System.out.println("INSS:");
            inss = input.nextDouble();
            
            if (hourlyWage < 0 || hours < 0 || inss < 0 || inss > 1) {
                throw new RuntimeException("Insert valid values!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (new Double[]{hourlyWage, hours, inss});
    }
    
    public static Double grossSalary(Double hourlyWage, Double hours) {
        return hourlyWage * hours;
    }
    
    public static Double netSalary(Double grossSalary, Double inss) {
        return grossSalary * (1 - inss);
    }
    
    public static void printScreen(Double hourlyWage, Double hours, Double grossRevenue, Double netRevenue) {
        System.out.println("Salary statement");
        System.out.printf("Hourly wage: %.2f\n", hourlyWage);
        System.out.printf("Hours worked: %.2f\n", hours);
        System.out.printf("Gross salary: %.2f\n", grossRevenue);
        System.out.printf("Net salary: %.2f\n", netRevenue);
    }
}
