/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package matrixthread;

/**
 *
 * @author leonardozanotti
 */
public class MatrixThread {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        long t1 = System.currentTimeMillis();
        Matrix m1 = new Matrix(2000);
        Matrix m2 = new Matrix(2000);
        Matrix.populateMatrix(m1);
        Matrix.populateMatrix(m2);
        Matrix.multiply(m1, m2);
        long t2 = System.currentTimeMillis();
        System.out.printf("Time elapsed: %d seconds\n", (t2 - t1)/1000);
    }
    
}
