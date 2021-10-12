/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class07;

import java.util.Scanner;

/**
 *
 * @author leonardozanotti
 */
public class Class07 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);  // Create a Scanner object
        System.out.println("Enter the text: ");
        String text = scanner.nextLine();  // Read user input
        
        int upper = 0, lower = 0;
        
        for (int i = 0; i < text.length(); i++) {
            char ch = text.charAt(i);
            if (ch >= 'A' && ch <= 'Z') {
                upper++;
            }
            else if (ch >='a' && ch <='z'){
                lower++;
            }
        }
        
        text = upper > lower ? text.toUpperCase() : text.toLowerCase();

        System.out.println(text);
    }
    
}
