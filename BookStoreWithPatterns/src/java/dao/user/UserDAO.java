/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.user;

import java.sql.SQLException;
import model.user.User;

/**
 *
 * @author Duy Buffet
 */
public interface UserDAO {

    void addUser(User u) throws SQLException;

    User login(String username, String password) throws SQLException;

    User getUser(int id) throws SQLException;
}
