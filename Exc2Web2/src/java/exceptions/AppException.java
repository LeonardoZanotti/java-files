/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class AppException extends Exception {
    public AppException() {
        
    }
    
    public AppException(String string) {
        super(string);
    }
    
    public AppException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
