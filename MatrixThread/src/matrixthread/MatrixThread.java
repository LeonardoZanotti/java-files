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
    private static final int strength = 1500;
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        long t1 = System.currentTimeMillis();
        MatrixThread.runSingleThread(strength);
        long t2 = System.currentTimeMillis();
        System.out.printf("Time elapsed: %d seconds\n", (t2 - t1)/1000);
    }
    
    private static Matrix runSingleThread(int length) {
        Matrix m1 = new Matrix(length);
        Matrix m2 = new Matrix(length);
        Matrix.populateMatrix(m1);
        Matrix.populateMatrix(m2);
        return Matrix.multiply(m1, m2);
    }
    
    private static MatrixMT runMultiThread(int length, int threads) {
        return new MatrixMT(length);
    }
}
