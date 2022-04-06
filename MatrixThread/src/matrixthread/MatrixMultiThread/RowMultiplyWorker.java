/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package matrixthread.MatrixMultiThread;

/**
 *
 * @author leonardozanotti
 */
public class RowMultiplyWorker implements Runnable {
    private final int[][] result;
    private final int[][] matrix1;
    private final int[][] matrix2;
    private final int length;
    private final int row;

    public RowMultiplyWorker(int[][] result, int[][] matrix1, int[][] matrix2, int length, int row) {
        this.result = result;
        this.matrix1 = matrix1;
        this.matrix2 = matrix2;
        this.length = length;
        this.row = row;
    }

    @Override
    public void run() {
        for (int i = 0; i < this.length; i++) {
            this.result[row][i] = 0;
            for (int j = 0; j < this.length; j++) {
                this.result[row][i] += this.matrix1[row][j] * this.matrix2[j][i];
            }
        }
        System.out.printf("%d/%d done\n", this.row, this.length);
    }
}
