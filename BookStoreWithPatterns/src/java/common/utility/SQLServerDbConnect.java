/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package common.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Duy Buffet
 */
public class SQLServerDbConnect {
    private static SQLServerDbConnect instance = new SQLServerDbConnect();
    private Connection conn = null;
    public static final String DB_URL = "jdbc:sqlserver://localhost:1433;databaseName=bookstore";
    public static final String USER = "sa";
    public static final String PASSWORD = "123456";
    public static final String DB_CLASS = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

    private SQLServerDbConnect() {
        try {
            Class.forName(DB_CLASS);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MysqlDbConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private Connection createConnection() {        
        try {
            if (conn == null || conn.isClosed()) {
                conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
                System.out.println("Create conn");
            }            
        } catch (SQLException ex) {
            Logger.getLogger(MysqlDbConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
    
    public static Connection getConnection() {
        return instance.createConnection();
    }   
    
    public static void main(String[] args) {
        SQLServerDbConnect.getConnection();
    }
}
