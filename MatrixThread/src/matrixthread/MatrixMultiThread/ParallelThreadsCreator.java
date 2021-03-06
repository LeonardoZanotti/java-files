/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package matrixthread.MatrixMultiThread;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import matrixthread.Matrix;

/**
 *
 * @author leonardozanotti
 */
public class ParallelThreadsCreator {
    // creating 10 threads and waiting for them to complete then again repeat steps.
    public static void multiply(Matrix matrix1, Matrix matrix2, Matrix result, int maxThreads) {
        List<Thread> threads = new ArrayList<>();
        int rows1 = matrix1.getLength();
        for (int i = 0; i < rows1; i++) {
            RowMultiplyWorker task = new RowMultiplyWorker(result.getMatrix(), matrix1.getMatrix(), matrix2.getMatrix(), result.getLength(), i);
            Thread thread = new Thread(task);
            thread.start();
            threads.add(thread);
            if (threads.size() % maxThreads == 0) {
                waitForThreads(threads);
            }
        }
    }

    private static void waitForThreads(List<Thread> threads) {
        for (Iterator<Thread> iterator = threads.iterator(); iterator.hasNext(); ) {
            Thread t = iterator.next();
            try {
                if (t != null)
                    t.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        threads.clear();
    }
}
