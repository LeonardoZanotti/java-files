/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class ErroInserindoClienteException extends AppException {
    public ErroInserindoClienteException() {
        
    }
    
    public ErroInserindoClienteException(String string) {
        super(string);
    }
    
    public ErroInserindoClienteException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
