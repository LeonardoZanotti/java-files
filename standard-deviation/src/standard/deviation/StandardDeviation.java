/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package standard.deviation;

import java.util.Scanner;

/**
 *
 * @author leonardozanotti
 */
public class StandardDeviation {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String input;
        Boolean isFirst = true;
        Integer count = 0;
        Double doubleInput, max = null, min = null, sum = 0.0, sumSquared = 0.0, ave;
        
        System.out.println("Write some number");
        
        while (true) {
            try {
                input = sc.next();

                if (input.equalsIgnoreCase("s"))
                    break;

                doubleInput = Double.parseDouble(input);

                if (isFirst) {
                    max = doubleInput;
                    min = doubleInput;
                    isFirst = false;
                } else {
                    if (doubleInput > max) {
                        max = doubleInput;
                    }

                    if (doubleInput < min) {
                        min = doubleInput;
                    }
                }

                sum += doubleInput;
                sumSquared += Math.pow(doubleInput, 2);
                count++;
            } catch (Exception e) {
                System.out.println("Write a valid number!\n");
            }
        }
        ave = sum / count;
        
        Double term = -2 * ave * sum;
        Double aveCount = Math.pow(ave, 2) * count;
        
        Double stddev = Math.sqrt((sumSquared + term + aveCount) / (count - 1));
        System.out.printf("Maximum: %.2f\n", max);
        System.out.printf("Minimum: %.2f\n", min);
        System.out.printf("Average: %.2f\n", ave);
        System.out.printf("Standard deviation: %.2f\n", stddev);
    }
    
}
