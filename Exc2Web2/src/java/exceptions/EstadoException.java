/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class EstadoException extends AppException {
    public EstadoException() {
        
    }
    
    public EstadoException(String string) {
        super(string);
    }
    
    public EstadoException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
