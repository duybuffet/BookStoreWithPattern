/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.business.OrderDAO;
import dao.business.sqlserver.SQLServerOrderDAO;
import dao.user.UserDAO;

/**
 *
 * @author Duy Buffet
 */
public class SQLServerDAOFactory extends DAOFactory {

    @Override
    public OrderDAO getOrderDAO() {
        return new SQLServerOrderDAO();
    }

    @Override
    public UserDAO getUserDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
