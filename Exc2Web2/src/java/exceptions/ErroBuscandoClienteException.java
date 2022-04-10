/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class ErroBuscandoClienteException extends AppException {
    public ErroBuscandoClienteException() {
        
    }
    
    public ErroBuscandoClienteException(String string) {
        super(string);
    }
    
    public ErroBuscandoClienteException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
