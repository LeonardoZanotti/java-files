/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package shapes;

import java.util.Scanner;

/**
 *
 * @author leonardozanotti
 */
public class Shapes {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Qual a forma? \n [1] - Retângulo \n [2] - Círculo \n [3] - Triângulo");
        Integer shape = input.nextInt();
        switch (shape) {
            case 1:
                System.out.println("Informe o lado1");
                Double l1 = input.nextDouble();
                System.out.println("Informe o lado2");
                Double l2 = input.nextDouble();
                System.out.printf("Área: %.2f\n", calculaAreaRetangulo(l1, l2));
                break;
            case 2:
                System.out.println("Informe o raio");
                Double radius = input.nextDouble();
                System.out.printf("Área: %.2f\n", calculaAreaCircunferencia(radius));
                break;
            case 3:
                System.out.println("Informe a base");
                Double b = input.nextDouble();
                System.out.println("Informe a altura");
                Double h = input.nextDouble();
                System.out.printf("Área: %.2f\n", calculaAreaTriangulo(b, h));
                break;
            default:
                System.out.println("Informe um número válido!");
                break;
        }
        
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
