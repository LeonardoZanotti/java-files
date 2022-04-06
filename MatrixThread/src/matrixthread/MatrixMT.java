/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package matrixthread;

import java.util.Arrays;
import java.util.Random;

/**
 *
 * @author leonardozanotti
 */
public class MatrixMT implements Runnable {
    private int[][] matrix;
    private int length;
    
    public MatrixMT(int length) {
        this.length = length;
        this.matrix = new int[length][length];
    }
    
    protected static MatrixMT multiply(MatrixMT m1, MatrixMT m2) {
        MatrixMT m3 = new MatrixMT(m1.getLength());
        
        for (int i = 0; i < m3.getLength(); i++) {
            System.out.printf("%d/%d done\n", i, m3.getLength());
            for (int j = 0; j < m3.getLength(); j++) {
                for (int k = 0; k < m1.getLength(); k++) {
                    m3.matrix[i][j] += m1.matrix[i][k] * m2.matrix[k][j];
                }
            }
        }
        
        return m3;
    }
    
    public int[][] getMatrix() {
        return this.matrix;
    }

    public void setMatrix(int[][] matrix) {
        this.matrix = matrix;
    }

    public int getLength() {
        return this.length;
    }

    public void setLength(int length) {
        this.length = length;
    }
    
    public static void populateMatrix(MatrixMT m) {
        for(int i = 0; i < m.getLength(); i++)
            Arrays.fill(m.getMatrix()[i], new Random().nextInt(10) * 10);
    }

    @Override
    public void run() {
    }
}
