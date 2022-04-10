/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class ProdutoException extends AppException {
    public ProdutoException() {
        
    }
    
    public ProdutoException(String string) {
        super(string);
    }
    
    public ProdutoException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
