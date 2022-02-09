/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package shapes2;

/**
 *
 * @author leonardozanotti
 */
public class Circle {
    private double radius;
    
    public Circle(double radius) {
        if (radius < 0.0) {
            throw new RuntimeException("Invalid radius!");
        }
        this.radius = radius;
    }
    
    public static double area(double radius) {
        return Math.PI * Math.pow(radius, 2);
    }
}
