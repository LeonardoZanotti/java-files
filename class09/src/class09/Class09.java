/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class09;

import java.util.Scanner;

/**
 *
 * @author Leonardo José Zanotti
 */
public class Class09 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String[] textArray = new String[5];
        Scanner scanner = new Scanner(System.in);  // Create a Scanner object
        Integer i, k;
        
        for (i = 0; i < 5; i++) {
            System.out.printf("Enter the %d° name: ", i + 1);
            textArray[i] = scanner.nextLine();  // Read user input
        }
        
        for (i = 0; i < textArray.length; i++) {
            for (k = i + 1; k < textArray.length; k++) {
                if (textArray[i].toLowerCase().compareTo(textArray[k].toLowerCase()) > 0) {
                    String car = textArray[i];
                    textArray[i] = textArray[k];
                    textArray[k] = car;
                }
            }
        }
        
        for (i = 0; i < textArray.length; i++) {
            System.out.printf("%s\n", textArray[i]);
        }
    }
    
}
