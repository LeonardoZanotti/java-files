/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class11;

import java.util.Scanner;

/**
 *
 * @author Leonardo José Zanotti
 */
public class Class11 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String[] textArray = new String[10];
        Scanner scanner = new Scanner(System.in);  // Create a Scanner object
        int i, j;

        for (i = 0; i < textArray.length; i++) {
            System.out.printf("Enter the %d° text: ", i + 1);
            textArray[i] = scanner.nextLine();  // Read user input
        }
        
        System.out.println("Prefix:");
        for (i = 0; i < textArray.length - 1; i++) {
            for (j = i + 1; j < textArray.length; j++) {
                if (Character.compare(textArray[i].toLowerCase().charAt(0), textArray[j].toLowerCase().charAt(0)) == 0) {
                    System.out.printf("%s - %s\n", textArray[i], textArray[j]);
                }
            }
        }
        
        System.out.println("\nSufix:");
        for (i = 0; i < textArray.length - 1; i++) {
            for (j = i + 1; j < textArray.length; j++) {
                if (Character.compare(textArray[i].toLowerCase().charAt(textArray[i].length() - 1), textArray[j].toLowerCase().charAt(textArray[j].length() - 1)) == 0) {
                    System.out.printf("%s - %s\n", textArray[i], textArray[j]);
                }
            }
        }
    }
    
}
