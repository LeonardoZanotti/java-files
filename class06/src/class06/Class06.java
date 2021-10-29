/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class06;
import java.util.Scanner;  // Import the Scanner class

/**
 *
 * @author Leonardo José Zanotti
 */
public class Class06 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);  // Create a Scanner object
        System.out.println("Enter the text: ");
        String text = scanner.nextLine();  // Read user input
        System.out.println("Text length: " + text.length());  // Output user input
    }
    
}
