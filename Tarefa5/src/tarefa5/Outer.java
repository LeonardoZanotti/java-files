/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tarefa5;

/**
 *
 * @author leonardozanotti
 */
public class Outer {
    private int x = 0;
    
    public static void main(String[] args) {
        Outer o = new Outer();
        Inner i = o.new Inner();
        o.print();
    }
    
    public void print() {
        System.out.println("x before " + x);
        Inner i = new Inner();
        i.print();
    }
    
    class Inner {
        public void print() {
            x++;
            System.out.println("x after " + x);
        }
    }
    
    // A classe Inner é uma classe aninhada, estando dentro da classe Outer
    // Desse modo, para instanciar a classe Inner é necessário uma instância da classe Outer
    // Com isso, classes aninhadas possuem acesso irrestrito aos membros de sua classe externa
    // Então, a classe Inner possui acesso à propriedade x da classe Outer e pode, sem problemas, acessá-la em seus métodos
}
