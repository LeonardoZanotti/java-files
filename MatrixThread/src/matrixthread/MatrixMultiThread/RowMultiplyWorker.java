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
    private final int row;

    public RowMultiplyWorker(int[][] result, int[][] matrix1, int[][] matrix2, int row) {
        this.result = result;
        this.matrix1 = matrix1;
        this.matrix2 = matrix2;
        this.row = row;
    }

    @Override
    public void run() {
        int[] newRow = new int[this.matrix2[0].length];
        for (int i = 0; i < this.matrix2[0].length; i++) {
            newRow[i] = 0;
            for (int j = 0; j < this.matrix1[row].length; j++) {
                newRow[i] += this.matrix1[row][j] * this.matrix2[j][i];
            }
        }
        System.out.printf("%d/%d done\n", this.row, this.matrix2[0].length);
        this.result[row] = newRow;
    }
}
