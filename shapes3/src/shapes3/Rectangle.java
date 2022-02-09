/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package shapes3;

/**
 *
 * @author leonardozanotti
 */
public class Rectangle {
    private double side1;
    private double side2;
    
    public Rectangle(double side1, double side2) {
        if (side1 < 0.0 || side2 < 0.0) {
            throw new RuntimeException("Invalid sides!");
        }
        this.side1 = side1;
        this.side2 = side2;
    }
    
    public static double area(double side1, double side2) {
        return side1 * side2;
    }
    
    public static double perimeter(double side1, double side2) {
        return side1 * 2 + side2 * 2;
    }
}
