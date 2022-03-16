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
    private Element firstElement;
    private int length = 0;
    private class Element<T> {
        public T data;
        public Element nextElement;
        
        public Element(T data) {
            this.data = data;
        }
        
        public Element(T data, Element e) {
            this.data = data;
            this.nextElement = e;
        }
    }
    
    public Pilha() {
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
    }
    
    public void empilha(T item) {
        if (this.firstElement == null)
            this.firstElement = new Element<>(item);
        else {
            Element e = new Element<>(item, this.firstElement);
            this.firstElement = e;
        }
        this.length++;
    }
    
    public void desempilha() {
        if (this.length != 0) {
            this.firstElement = this.firstElement.nextElement;
            this.length--;
        }
    }
    
    public String toString() {
        String output = "[";
        Element e = this.firstElement;
        for (int i = 0; i < this.length; i++) {
            output += e.data;
            e = e.nextElement;
            if (e != null) output += ", ";
        }
        output += "]";
        return output;
    }
    
}
