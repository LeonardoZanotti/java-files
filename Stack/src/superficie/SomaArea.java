/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package superficie;

/**
 *
 * @author leonardozanotti
 */
public class SomaArea<T extends Superficie> {
    public double calculaArea(T[] array) {
        double area = 0.0;
        for (int i = 0; i < array.length; i++)
            area += array[i].area();
        return area;
    }
}
