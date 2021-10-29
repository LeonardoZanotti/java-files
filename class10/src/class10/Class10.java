/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class10;

import java.util.Scanner;

/**
 *
 * @author Leonardo José Zanotti
 */
public class Class10 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);  // Create a Scanner object
        System.out.println("Enter the text: ");
        String text = scanner.nextLine();  // Read user input
        System.out.println(removeVogals(text));
    }
    
    public static String removeVogals(String text) {
        String formattedText;
        formattedText = text.replaceAll("(a|e|i|o|u|A|E|I|O|U)", "");
        return formattedText;
    }
    
}
