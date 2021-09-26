/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class04;

/**
 *
 * @author leonardozanotti
 */
public class Class04 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        for (int i = 2; i <= 100; i++) {
            int divisors = 0;
            for (int j = 2; j <= i; j++) {
                if (i % j == 0) {
                   divisors++;
                }
            }
            if (divisors == 1) {
               System.out.println(i);
            }
       }
    }
}
