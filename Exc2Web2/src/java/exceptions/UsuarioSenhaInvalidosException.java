/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class UsuarioSenhaInvalidosException extends AppException {
    public UsuarioSenhaInvalidosException() {
        
    }
    
    public UsuarioSenhaInvalidosException(String string) {
        super(string);
    }
    
    public UsuarioSenhaInvalidosException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
