/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.business.sqlserver;

import common.utility.SQLServerDbConnect;
import dao.book.BookDAO;
import dao.business.OrderDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import model.book.Book;
import model.business.Order;

/**
 *
 * @author Duy Buffet
 */
public class SQLServerOrderDAO implements OrderDAO {

    public SQLServerOrderDAO() {
    }

    @Override
    public void addOrder(Order order) throws SQLException {
        PreparedStatement ps = null;
        HashMap<Integer, Integer> listBookId = null;
        String qInsertOrder = "INSERT INTO tblorder(status, receiver_address, receiver_name, receiver_phoneno, note, total_price, user_id) VALUES(?,?,?,?,?,?,?)";
        String qInsertOdetail = "INSERT INTO tblorderdetail(book_id, quantity, price, order_id) VALUES (?,?,?,?)";
        try {
            // insert order and get order id
            SQLServerDbConnect.getConnection().setAutoCommit(false);
            ps = SQLServerDbConnect.getConnection().prepareStatement(qInsertOrder, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, order.getOrderStatus());
            ps.setString(2, order.getReceiverAddress());
            ps.setString(3, order.getReceiverName());
            ps.setString(4, order.getReceiverPhoneNo());
            ps.setString(5, order.getNote());
            ps.setDouble(6, order.getTotalPrice());
            ps.setInt(7, order.getUser().getId());
            ps.executeUpdate();
            ResultSet r = ps.getGeneratedKeys();
            
            int order_id = 0;
            if (r.next()) {
                order_id = r.getInt(1);
            }

            // insert order detail
            ps = SQLServerDbConnect.getConnection().prepareStatement(qInsertOdetail);
            listBookId = order.getCart().getListBook();
            Iterator it = listBookId.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry pair = (Map.Entry)it.next();
                int qtt = (Integer)pair.getValue();
                Book b = new BookDAO().getBookById((Integer)pair.getKey());
                ps.setInt(1, b.getBookId());
                ps.setInt(2, qtt);
                ps.setFloat(3, b.getPrice());
                ps.setInt(4, order_id);
                ps.executeUpdate();
            }
            SQLServerDbConnect.getConnection().commit();
        } catch (SQLException ex) {
            if (SQLServerDbConnect.getConnection() != null) {
                try {
                    SQLServerDbConnect.getConnection().rollback();
                } catch (Exception excep) {
                    throw excep;
                }
            }
            throw ex;
        } finally {
            SQLServerDbConnect.getConnection().setAutoCommit(true);
        }
    }
}
