/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package superficie;

/**
 *
 * @author leonardozanotti
 * @param <T>
 */
public class SomaArea {
    public <T extends Superficie> double calculaArea(T[] shapes) {
        double area = 0.0;
        for (T shape : shapes) {
            area += shape.area();
        }
        return area;
    }
}
