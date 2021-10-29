/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class13;

import java.util.Scanner;

/**
 *
 * @author Leonardo José Zanotti
 */
public class Class13 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);  // Create a Scanner object
        System.out.println("Enter the text:");
        String text = scanner.nextLine();  // Read user input
        String formattedText = text.replaceAll("(\\s+|[^a-zA-Z]*)", "").toLowerCase();
        String output = "Is a palindrome";
        for (int i = 0; i < formattedText.length() / 2; i++) {
            if (Character.compare(formattedText.charAt(i), formattedText.charAt(formattedText.length() - 1 - i)) != 0) {
                output = "Not a palindrome";
                break;
            }
        }
        System.out.println(output);
        
    }
    
}
