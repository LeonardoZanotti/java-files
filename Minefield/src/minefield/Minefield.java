/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package minefield;

/**
 *
 * @author leonardozanotti
 */
public class Minefield implements Runnable {
    GUI gui = new GUI(9, 9, 360, 425, 40, 5, 10);
//    GUI gui = new GUI(16, 16, 530, 590, 530/16, 4, 40);
//    GUI gui = new GUI(16, 30, 990, 590, 530/16, 3, 99);
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        new Thread(new Minefield()).start();
    }
    
    @Override
    public void run() {
        while (true) {
            gui.repaint();
        }
    }
}
