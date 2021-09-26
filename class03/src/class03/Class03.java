/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class03;

/**
 *
 * @author leonardozanotti
 */
public class Class03 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // First row -> hex label
        System.out.print("\t");
        for (int j = 0; j <= 15; j++) {
            if (j == 15) {
                System.out.printf("%s \n", Integer.toHexString(j));
                continue;
            }
            System.out.printf("%s \t", Integer.toHexString(j));
        }
        
        // ASCII values
        for (int i = 0; i < 256; i++) {
            int integer = (i < 32) ? 32 : i;
            String breakLine = (i % 16 == 15) ? "\n" : "";

            if (i % 16 == 0) {
               System.out.printf("%s \t %s", Integer.toHexString(i / 16), (char) integer);
               continue;
            }
            
            System.out.printf("\t %s %s", (char) integer, breakLine);
       }
    }
}
