/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class AtendimentoException extends AppException {
    public AtendimentoException() {
        
    }
    
    public AtendimentoException(String string) {
        super(string);
    }
    
    public AtendimentoException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
