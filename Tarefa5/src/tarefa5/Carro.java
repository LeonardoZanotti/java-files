/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tarefa5;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Scanner;

/**
 *
 * @author leonardozanotti
 */
public class Carro {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Informe a distância percorrida (km):");
        float d = input.nextFloat();
        System.out.println("Informe o tempo (h):");
        float t = input.nextFloat();
        
        BigDecimal dBD = new BigDecimal(d).setScale(3, RoundingMode.HALF_UP);
        BigDecimal tBD = new BigDecimal(t).setScale(3, RoundingMode.HALF_UP);
        
        BigDecimal vBD = dBD.divide(tBD, 3, RoundingMode.HALF_UP);
        
        System.out.println("Velocidade média (km/h): " + vBD.setScale(2));
    }
}
