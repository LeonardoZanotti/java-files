/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tarefa5;

/**
 *
 * @author leonardozanotti
 */
public class UsaBicicleta {
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Bicicleta b1 = new Bicicleta();
        Bicicleta b2 = new Bicicleta() {
            @Override
            void aplicarFreios(int decremento) {
                velocidade = velocidade - 2 * decremento;
            }
        };

        b1.aumentarVelocidade(10);
        b2.aumentarVelocidade(10);
        
        b1.printStates();
        b2.printStates();
        
        b1.aplicarFreios(3);
        b2.aplicarFreios(3);

        b1.printStates();
        b2.printStates();
    }
}
