/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class TipoAtendimentoException extends AppException {
    public TipoAtendimentoException() {
        
    }
    
    public TipoAtendimentoException(String string) {
        super(string);
    }
    
    public TipoAtendimentoException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
