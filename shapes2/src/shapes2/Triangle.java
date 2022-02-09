/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package shapes2;

/**
 *
 * @author leonardozanotti
 */
public class Triangle {
    private double height;
    private double base;
    
    public Triangle(double height, double base) {
        if (height < 0.0 || base < 0.0) {
            throw new RuntimeException("Invalid height or base!");
        }
        this.height = height;
        this.base = base;
    }
    
    public static double area(double height, double base) {
        return height * base / 2;
    }
}
