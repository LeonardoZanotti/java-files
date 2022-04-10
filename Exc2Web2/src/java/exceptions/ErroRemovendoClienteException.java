/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class ErroRemovendoClienteException extends AppException {
    public ErroRemovendoClienteException() {
        
    }
    
    public ErroRemovendoClienteException(String string) {
        super(string);
    }
    
    public ErroRemovendoClienteException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
