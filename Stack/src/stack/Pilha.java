/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package stack;

import java.lang.reflect.Array;

/**
 *
 * @author leonardozanotti
 */
public class Pilha<T> {
    private T[] items;
    private int length = 0;
    
    public Pilha() {
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
    }
    
    public void empilha(T item) {
        if (this.length == 0)
            this.items = (T[]) Array.newInstance(item.getClass(), 10);
        this.items[this.length++] = item;
    }
    
    public void desempilha() {
        if (this.length != 0)
            this.length--;
    }
    
    public String toString() {
        String output = "[";
        for (int i = this.length - 1; i >= 0; i--) {
            output += this.items[i];
            if (i > 0) output += ", ";
        }
        output += "]";
        return output;
    }
    
}
