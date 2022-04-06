/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package matrixthread.MatrixMultiThread;

import matrixthread.Matrix;


/**
 *
 * @author leonardozanotti
 */
public class MatrixThreadTest {
    private static final int strength = 1500;

    public static void main(String[] args) {
        long t1 = System.currentTimeMillis();
        MatrixThreadTest.runMultiThread(strength);
        long t2 = System.currentTimeMillis();
        System.out.printf("Time elapsed: %d seconds\n", (t2 - t1)/1000);
    }
    
    private static void runMultiThread(int length) {
        Matrix m1 = new Matrix(length);
        Matrix m2 = new Matrix(length);
        Matrix m3 = new Matrix(length);
        Matrix.populateMatrix(m1);
        Matrix.populateMatrix(m2);
        ParallelThreadsCreator.multiply(m1.getMatrix(), m2.getMatrix(), m3.getMatrix());
    }
}



