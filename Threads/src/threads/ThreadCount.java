/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package threads;

import static java.lang.Thread.sleep;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author leonardozanotti
 */
public class ThreadCount implements Runnable {
    private int max, threadNumber;
    
    public ThreadCount(int max, int threadNumber) {
        this.max = max;
        this.threadNumber = threadNumber;
    }

    @Override
    public void run() {
        for (int i = 1; i <= this.max; i++) {
            System.out.printf("%d - %d\n", this.threadNumber, i);
            try {
                sleep(1000);
            } catch (InterruptedException ex) {
                Logger.getLogger(ThreadCount.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
