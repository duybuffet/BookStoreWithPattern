/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.business.OrderDAO;
import dao.business.mysql.MysqlOrderDAO;
import dao.user.UserDAO;
import dao.user.mysql.MySqlUserDAO;

/**
 *
 * @author Duy Buffet
 */
public class MysqlDAOFactory extends DAOFactory {

    @Override
    public OrderDAO getOrderDAO() {
        return new MysqlOrderDAO();
    }

    @Override
    public UserDAO getUserDAO() {
        return new MySqlUserDAO();
    }
    
}
