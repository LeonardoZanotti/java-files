/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class ClienteNaoExisteException extends AppException {
    public ClienteNaoExisteException() {
        
    }
    
    public ClienteNaoExisteException(String string) {
        super(string);
    }
    
    public ClienteNaoExisteException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
