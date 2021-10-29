/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class12;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author Leonardo José Zanotti
 */
public class Class12 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);  // Create a Scanner object
        System.out.println("Enter the text:");
        String text = scanner.nextLine();  // Read user input
        String[] textArray = text.split(" ");
        Character[] charArray = new Character[textArray.length];
        
        System.out.println("\nAll sufixes:");
        for (int i = 0; i < textArray.length; i++) {
            Character sufix = textArray[i].charAt(textArray[i].length() - 1);
            if (!Arrays.asList(charArray).contains(sufix)) {
                System.out.printf("%s\n", sufix);
                charArray[i] = sufix;
            }
        }
    }
    
}
