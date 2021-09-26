/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package class02;

/**
 *
 * @author leonardozanotti
 */
public class Class02 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Integer index = 0;
        Integer tabIndex = 0;
        for(int i = 1; i < 16; i++) {
            if (index == tabIndex) {
                System.out.println(i);
                index++;
                tabIndex = 0;
            } else {
                System.out.print(Integer.toString(i) + '\t');
                tabIndex++;
            }
        }
    }
    
}
