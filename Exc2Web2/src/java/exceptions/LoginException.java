/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package exceptions;

/**
 *
 * @author leonardozanotti
 */
public class LoginException extends AppException {
    public LoginException() {
        
    }
    
    public LoginException(String string) {
        super(string);
    }
    
    public LoginException(String string, Throwable thrwbl) {
        super(string, thrwbl);
    }
}
