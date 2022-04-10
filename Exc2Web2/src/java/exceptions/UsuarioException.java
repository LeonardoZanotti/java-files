/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class UsuarioException extends AppException {
    public UsuarioException() {
        
    }
    
    public UsuarioException(String string) {
        super(string);
    }
    
    public UsuarioException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
