/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package minesweeper;

/**
 *
 * @author Leonardo José Zanotti
 */
public class Minesweeper implements Runnable {
    GUI gui = new GUI(9, 9, 360, 455, 40, 5, 10);           // easy mode
//    GUI gui = new GUI(16, 16, 530, 620, 530/16, 4, 40);   // medium mode
//    GUI gui = new GUI(16, 30, 990, 620, 530/16, 3, 99);   // hard mode
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        new Thread(new Minesweeper()).start();
    }
    
    @Override
    public void run() {
        while (true) {
            gui.repaint();
        }
    }
}