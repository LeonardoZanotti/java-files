/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class05;

/**
 *
 * @author leonardozanotti
 */
public class Class05 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String breakLine = "\n";
        int rows = 6;       // change here how many rows you want in the triangle
        int[] rowValues = new int[rows];
        int[] newRowValues = new int[rows];

        for (int i = 0; i < rows; i++) {
            newRowValues = rowValues.clone();
            for (int j = 0; j <= i; j++) {
                int output = 1;
                if (i == 0) {
                    System.out.printf("%s %s", output, "\n");
                    break;
                }
                if (j == 0) {
                    breakLine = "\t";
                } else if (j == i) {
                    breakLine = "\n";
                } else {
                    output = rowValues[j] + rowValues[j - 1];
                }
                newRowValues[j] = output;
                System.out.printf("%s %s", output, breakLine);
            }
            rowValues = newRowValues.clone();
        }
    }
    
}
