/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package database;

import java.util.List;

/**
 *
 * @author leonardozanotti
 */
public interface DAO<T> {
    List<T> lista() throws DAOException;
    void insere(T t) throws DAOException;
    void altera(T t) throws DAOException;
    void remove(T t) throws DAOException;
}
