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
    private static final int strength = 4000;
    private static final int maxThreads = 16;

    public static void main(String[] args) {
        long t1 = System.currentTimeMillis();
        MatrixThreadTest.runMultiThread(MatrixThreadTest.strength);
        long t2 = System.currentTimeMillis();
        System.out.printf("Time elapsed using %d threads: %d seconds\n", MatrixThreadTest.maxThreads, (t2 - t1)/1000);
    }
    
    private static Matrix runMultiThread(int length) {
        Matrix m1 = new Matrix(length);
        Matrix m2 = new Matrix(length);
        Matrix m3 = new Matrix(length);
        Matrix.populateMatrix(m1);
        Matrix.populateMatrix(m2);
        ParallelThreadsCreator.multiply(m1, m2, m3, MatrixThreadTest.maxThreads);
        return m3;
    }
}



