/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package shapes2;

import java.util.Scanner;

/**
 *
 * @author leonardozanotti
 */
public class Shapes2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String input, output = "";
        Integer count = 1;
        Scanner sc = new Scanner(System.in);

        while (true) {
            try {
                System.out.println("('s' para sair) Qual a forma? \n [1] - Retângulo \n [2] - Círculo \n [3] - Triângulo");
                input = sc.next();

                if (input.equalsIgnoreCase("s"))
                    break;
                
                Integer shape = Integer.parseInt(input);
                switch (shape) {
                    case 1:
                        System.out.println("Informe o lado1");
                        Double l1 = sc.nextDouble();
                        System.out.println("Informe o lado2");
                        Double l2 = sc.nextDouble();
                        output += "\n Área do retângulo (" + count + "° forma): " + Rectangle.area(l1, l2);
                        break;
                    case 2:
                        System.out.println("Informe o raio");
                        Double radius = sc.nextDouble();
                        output += "\n Área do círculo (" + count + "° forma): " + Circle.area(radius);
                        break;
                    case 3:
                        System.out.println("Informe a base");
                        Double b = sc.nextDouble();
                        System.out.println("Informe a altura");
                        Double h = sc.nextDouble();
                        output += "\n Área do triângulo (" + count + "° forma): " + Triangle.area(h, b);
                        break;
                    default:
                        System.out.println("Informe um número válido!");
                        break;
                }
                
                count++;
            } catch (Exception e) {
                System.out.println("Write a valid number!\n");
            }
        }
        System.out.println(output);
    }
    
}
