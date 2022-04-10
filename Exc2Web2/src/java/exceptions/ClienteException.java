/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class ClienteException extends AppException {
    public ClienteException() {
        
    }
    
    public ClienteException(String string) {
        super(string);
    }
    
    public ClienteException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
