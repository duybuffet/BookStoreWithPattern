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
public abstract class DAOFactory {
    public static final int MYSQL = 1;
    public static final int SQLSERVER = 2;
    public static final int ORACLE = 3;
    
    public abstract OrderDAO getOrderDAO();
    public abstract UserDAO getUserDAO();
    
    public static DAOFactory getDAOFactory(int dbType) {
        switch (dbType) {
            case 1:
                return new MysqlDAOFactory();
                
            case 2:
                return new SQLServerDAOFactory();
                
            case 3:
                return new OracleDAOFactory();
            
            default:
                return null;
        }
    }
}
