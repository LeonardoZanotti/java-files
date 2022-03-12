/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package superficie;

/**
 *
 * @author leonardozanotti
 */
public class Circunferencia implements Superficie {
    private double radius;
    
    public Circunferencia (double radius) {
        this.radius = radius;
    }
    
    @Override
    public double area() {
        return Math.PI * this.radius * this.radius;
    }
}
