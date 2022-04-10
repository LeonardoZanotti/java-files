/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class CidadeException extends AppException {
    public CidadeException() {
        
    }
    
    public CidadeException(String string) {
        super(string);
    }
    
    public CidadeException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
