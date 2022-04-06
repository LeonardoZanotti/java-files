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
        MatrixThread.runSingleThread(1500);
        long t2 = System.currentTimeMillis();
        System.out.printf("Time elapsed: %d seconds\n", (t2 - t1)/1000);
    }
    
    private static void runSingleThread(int length) {
        Matrix m1 = new Matrix(length);
        Matrix m2 = new Matrix(length);
        Matrix.populateMatrix(m1);
        Matrix.populateMatrix(m2);
        Matrix.multiply(m1, m2);
    }
    
}
