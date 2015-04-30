/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.business.OrderDAO;
import dao.user.UserDAO;

/**
 *
 * @author Duy Buffet
 */
public class OracleDAOFactory extends DAOFactory {

    @Override
    public OrderDAO getOrderDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public UserDAO getUserDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
