/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package superficie;

/**
 *
 * @author leonardozanotti
 */
public class Quadrado implements Superficie {
    private final double side;
    
    public Quadrado (double side) {
        this.side = side;
    }
    
    @Override
    public double area() {
        return this.side * this.side;
    }
}
