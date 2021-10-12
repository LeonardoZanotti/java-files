/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class08;

import java.util.Scanner;

/**
 *
 * @author leonardozanotti
 */
public class Class08 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);  // Create a Scanner object
        System.out.println("Enter the text: ");
        String text = scanner.nextLine();  // Read user input
        String[] textArray = text.split(" ");
        for (int i = 0; i < textArray.length; i++) {
            System.out.printf("%s\n", textArray[i]);
        }
    }
    
}
