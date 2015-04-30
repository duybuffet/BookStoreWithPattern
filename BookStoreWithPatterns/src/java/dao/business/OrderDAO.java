/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.business;

import java.sql.SQLException;
import model.business.Order;

/**
 *
 * @author Duy Buffet
 */
public interface OrderDAO {
    void addOrder(Order order) throws SQLException;
}
