/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class01;

/**
 *
 * @author leonardozanotti
 */
public class Class01 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        for(int i = 1; i < 10; i++) {
            System.out.println((i % 2 == 0) ? i : '\t' + Integer.toString(i));
        }
    }    
}
