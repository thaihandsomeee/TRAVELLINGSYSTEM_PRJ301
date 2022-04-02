/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HP
 */
public class DBContext {
    public Connection getConnection()
    {
        try {
            //Change the username password and url to connect your own database
            String username = "sa";
            String password = "123456";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=PRJ301_ASSIGNMENT";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
//    public void closeConnection(Connection con, PreparedStatement ps, ResultSet rs) throws Exception {
//        if (rs != null && !rs.isClosed()) {
//            rs.close();
//        }
//        if (ps != null && !ps.isClosed()) {
//            ps.close();
//        }
//        if (con != null && !con.isClosed()) {
//            con.close();
//        }
//    }
//     public void closeConnection1(Connection con, PreparedStatement ps) throws Exception {
//       
//        if (ps != null && !ps.isClosed()) {
//            ps.close();
//        }
//        if (con != null && !con.isClosed()) {
//            con.close();
//        }
//    }
    
//    public static void main(String[] args) {
//        try {
//            System.out.println(new DBContext().getConnection());
//        } catch (Exception e) {
//        }
//    }
}
