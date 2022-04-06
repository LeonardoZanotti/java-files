/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package threads;

/**
 *
 * @author leonardozanotti
 */
public class Threads {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ThreadCount tc1 = new ThreadCount(10, 1);
        ThreadCount tc2 = new ThreadCount(20, 2);
        Thread t1 = new Thread(tc1);
        Thread t2 = new Thread(tc2);
        t1.start();
        t2.start();
    }
    
}
