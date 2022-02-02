/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package shapes;

/**
 *
 * @author leonardozanotti
 */
public class Shapes {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    }
    
    public static double calculaAreaRetangulo(double  lado1,  double lado2) {
        if (lado1 < 0 || lado2 < 0) {
            throw new RuntimeException("Valores devem ser maiores que 0");
        }
        
        return lado1 * lado2;
    }
    
    public static double calculaAreaCircunferencia(double raio) {
        if (raio < 0) {
            throw new RuntimeException("Valores devem ser maiores que 0");
        }
        
        return Math.PI * Math.pow(raio, 2);
    }
    
    public static double calculaAreaTriangulo(double  base,  double altura) {
        if (base < 0 || altura < 0) {
            throw new RuntimeException("Valores devem ser maiores que 0");
        }
        
        return base * altura / 2;
    }
    
}
