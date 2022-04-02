/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Cart;
import model.Destination;
import model.Order;
import model.Tour;

/**
 *
 * @author HP
 */
public class DAO {

    DBContext db = new DBContext();
    Connection connection = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

//Destination    
    public ArrayList<Destination> getDestinations() {
        ArrayList<Destination> destinations = new ArrayList<>();
        try {
            connection = db.getConnection();
            String sql = "select id, name, description1, description2, img1, img2, img3, img4\n"
                    + "from Destination";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Destination d = new Destination();
                d.setId(rs.getInt("id"));
                d.setName(rs.getString("name"));
                d.setDescription1(rs.getString("description1"));
                d.setDescription2(rs.getString("description2"));
                d.setImg1(rs.getString("img1"));
                d.setImg2(rs.getString("img2"));
                d.setImg3(rs.getString("img3"));
                d.setImg4(rs.getString("img4"));
                destinations.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return destinations;
    }

    public Destination getDestination(int id) {
        try {
            connection = db.getConnection();
            String sql = "select id, name, description1, description2, img1, img2, img3, img4\n"
                    + "from Destination where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Destination d = new Destination();
                d.setId(rs.getInt("id"));
                d.setName(rs.getString("name"));
                d.setDescription1(rs.getString("description1"));
                d.setDescription2(rs.getString("description2"));
                d.setImg1(rs.getString("img1"));
                d.setImg2(rs.getString("img2"));
                d.setImg3(rs.getString("img3"));
                d.setImg4(rs.getString("img4"));
                return d;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void addDestination(Destination d) {
        try {
            connection = db.getConnection();
            String sql = "insert into Destination(name,description1,description2,img1,img2,img3,img4)\n"
                    + "values(?,?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, d.getName());
            statement.setString(2, d.getDescription1());
            statement.setString(3, d.getDescription2());
            statement.setString(4, d.getImg1());
            statement.setString(5, d.getImg2());
            statement.setString(6, d.getImg3());
            statement.setString(7, d.getImg4());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void editDestination(Destination d) {
        try {
            connection = db.getConnection();
            String sql = "UPDATE [Destination] SET [name] = ?,description1=?,description2=?,img1=?,img2=?,img3=?,img4=? WHERE [id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, d.getName());
            statement.setString(2, d.getDescription1());
            statement.setString(3, d.getDescription2());
            statement.setString(4, d.getImg1());
            statement.setString(5, d.getImg2());
            statement.setString(6, d.getImg3());
            statement.setString(7, d.getImg4());
            statement.setInt(8, d.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    public void deleteDestination(int id) {
        try {
            connection = db.getConnection();
            String sql = "delete from Destination where id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    //Tour
    public ArrayList<Tour> getTours() {
        ArrayList<Tour> tours = new ArrayList<>();
        try {
            connection = db.getConnection();
            String sql = "select id, name,destination_id, description1, description2, [time], price, img1, img2\n"
                    + "from Tour";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tour t = new Tour();
                t.setId(rs.getInt("id"));
                t.setName(rs.getString("name"));
                t.setDestination_id(rs.getInt("destination_id"));
                t.setDestination_name(getDesNameFromDesId(rs.getInt("destination_id")));
                t.setDescription1(rs.getString("description1"));
                t.setDescription2(rs.getString("description2"));
                t.setTime(rs.getString("time"));
                t.setPrice(rs.getFloat("price"));
                t.setImg1(rs.getString("img1"));
                t.setImg2(rs.getString("img2"));
                tours.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tours;
    }

    public ArrayList<Tour> getNewTours() {
        ArrayList<Tour> tours = new ArrayList<>();
        try {
            connection = db.getConnection();
            String sql = "select top 6 id, name,destination_id, description1, description2, [time], price, img1, img2\n"
                    + "from Tour order by id desc";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tour t = new Tour();
                t.setId(rs.getInt("id"));
                t.setName(rs.getString("name"));
                t.setDestination_id(rs.getInt("destination_id"));
                t.setDestination_name(getDesNameFromDesId(rs.getInt("destination_id")));
                t.setDescription1(rs.getString("description1"));
                t.setDescription2(rs.getString("description2"));
                t.setTime(rs.getString("time"));
                t.setPrice(rs.getFloat("price"));
                t.setImg1(rs.getString("img1"));
                t.setImg2(rs.getString("img2"));
                tours.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tours;
    }

    public Tour getTour(int id) {
        try {
            connection = db.getConnection();
            String sql = "select id, name,destination_id, description1, description2, time, price, img1, img2 \n"
                    + "from Tour where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Tour t = new Tour();
                t.setId(rs.getInt("id"));
                t.setName(rs.getString("name"));
                t.setDestination_id(rs.getInt("destination_id"));
                t.setDestination_name(getDesNameFromDesId(rs.getInt("destination_id")));
                t.setDescription1(rs.getString("description1"));
                t.setDescription2(rs.getString("description2"));
                t.setTime(rs.getString("time"));
                t.setPrice(rs.getFloat("price"));
                t.setImg1(rs.getString("img1"));
                t.setImg2(rs.getString("img2"));
                return t;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Tour> getToursByDesId(int desId) {
        ArrayList<Tour> tours = new ArrayList<>();
        try {
            connection = db.getConnection();
            String sql = "select id, name,destination_id, description1, description2, [time], price, img1, img2\n"
                    + "from Tour where destination_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, desId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tour t = new Tour();
                t.setId(rs.getInt("id"));
                t.setName(rs.getString("name"));
                t.setDestination_id(rs.getInt("destination_id"));
                t.setDestination_name(getDesNameFromDesId(rs.getInt("destination_id")));
                t.setDescription1(rs.getString("description1"));
                t.setDescription2(rs.getString("description2"));
                t.setTime(rs.getString("time"));
                t.setPrice(rs.getFloat("price"));
                t.setImg1(rs.getString("img1"));
                t.setImg2(rs.getString("img2"));
                tours.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tours;
    }

    public void addTour(Tour t) {
        try {
            connection = db.getConnection();
            String sql = "insert into Tour(name,destination_id,description1,description2,img1,img2,[time],price)\n"
                    + "values(?,?,?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, t.getName());
            statement.setInt(2, t.getDestination_id());
            statement.setString(3, t.getDescription1());
            statement.setString(4, t.getDescription2());
            statement.setString(5, t.getImg1());
            statement.setString(6, t.getImg2());
            statement.setString(7, t.getTime());
            statement.setFloat(8, t.getPrice());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void editTour(Tour t) {
        try {
            connection = db.getConnection();
            String sql = "UPDATE [Tour] SET [name] = ?,destination_id=?,description1=?,description2=?,img1=?,img2=?,[time]=?,price=? WHERE [id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, t.getName());
            statement.setInt(2, t.getDestination_id());
            statement.setString(3, t.getDescription1());
            statement.setString(4, t.getDescription2());
            statement.setString(5, t.getImg1());
            statement.setString(6, t.getImg2());
            statement.setString(7, t.getTime());
            statement.setFloat(8, t.getPrice());
            statement.setInt(9, t.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    public void deleteTour(int id) {
        try {
            connection = db.getConnection();
            String sql = "delete from Tour where id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    //Cart
    public ArrayList<Cart> getCartsByUsername(String username) {
        ArrayList<Cart> carts = new ArrayList<>();
        try {
            connection = db.getConnection();
            String sql = "select id, username,tour_id, date_from,quantity\n"
                    + "from Cart where username = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Cart c = new Cart();
                c.setId(rs.getInt("id"));
                c.setUsername(rs.getString("username"));
                c.setTourId(rs.getInt("tour_id"));
                c.setTourImg(getTour(rs.getInt("tour_id")).getImg1());
                c.setDateFrom(rs.getDate("date_from"));
                c.setTourPrice(getTour(rs.getInt("tour_id")).getPrice());
                c.setQuantity(rs.getInt("quantity"));
                carts.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return carts;
    }
    
    public Cart getCart(int id) {
        try {
            connection = db.getConnection();
            String sql = "select id, username,tour_id, date_from,quantity\n"
                    + "from Cart where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Cart c = new Cart();
                c.setId(rs.getInt("id"));
                c.setUsername(rs.getString("username"));
                c.setTourId(rs.getInt("tour_id"));
                c.setTourImg(getTour(rs.getInt("tour_id")).getImg1());
                c.setDateFrom(rs.getDate("date_from"));
                c.setTourPrice(getTour(rs.getInt("tour_id")).getPrice());
                c.setQuantity(rs.getInt("quantity"));
                return c;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void addCart(Cart c) {
        try {
            connection = db.getConnection();
            String sql = "insert into Cart([username],[tour_id],[date_from],[quantity]) values(?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, c.getUsername());
            statement.setInt(2, c.getTourId());
            statement.setDate(3, c.getDateFrom());
            statement.setInt(4,c.getQuantity());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void editCart(int cartId, int quantity) {
        try {
            connection = db.getConnection();
            String sql = "UPDATE [Cart] SET [quantity] = ? WHERE [id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, quantity);
            statement.setInt(2, cartId);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    public void deleteCart(int id) {
        try {
            connection = db.getConnection();
            String sql = "delete from Cart where id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    //Order
    
    public void addOrder(Cart c) {
        try {
            connection = db.getConnection();
            String sql = "insert into Ordered([username],[tour_id],[date_from],[quantity],[price]) values(?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, c.getUsername());
            statement.setInt(2, c.getTourId());
            statement.setDate(3, c.getDateFrom());
            statement.setInt(4,c.getQuantity());
            statement.setFloat(5, getCart(c.getId()).getTourPrice()*c.getQuantity());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<Order> getOrderByUsername(String username) {
        ArrayList<Order> orders = new ArrayList<>();
        try {
            connection = db.getConnection();
            String sql = "select id, username,tour_id, date_from,quantity,price\n"
                    + "from Ordered where username = ? order by id desc";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                o.setId(rs.getInt("id"));
                o.setUsername(rs.getString("username"));
                o.setTourId(rs.getInt("tour_id"));
                o.setTourImg(getTour(rs.getInt("tour_id")).getImg1());
                o.setDateFrom(rs.getDate("date_from"));
                o.setTourPrice(getTour(rs.getInt("tour_id")).getPrice());
                o.setQuantity(rs.getInt("quantity"));
                o.setPrice(rs.getFloat("price"));
                orders.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orders;
    }
    
    public Order getOrderById(int id) {
        try {
            connection = db.getConnection();
            String sql = "select id, username,tour_id, date_from,quantity,price\n"
                    + "from Ordered where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                o.setId(rs.getInt("id"));
                o.setUsername(rs.getString("username"));
                o.setTourId(rs.getInt("tour_id"));
                o.setTourImg(getTour(rs.getInt("tour_id")).getImg1());
                o.setDateFrom(rs.getDate("date_from"));
                o.setTourPrice(getTour(rs.getInt("tour_id")).getPrice());
                o.setQuantity(rs.getInt("quantity"));
                o.setPrice(rs.getFloat("price"));
                return o;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
    
    public ArrayList<Order> getAllOrders() {
        ArrayList<Order> orders = new ArrayList<>();
        try {
            connection = db.getConnection();
            String sql = "select id, username,tour_id, date_from,quantity,price\n"
                    + "from Ordered order by id desc";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                o.setId(rs.getInt("id"));
                o.setUsername(rs.getString("username"));
                o.setTourId(rs.getInt("tour_id"));
                o.setTourImg(getTour(rs.getInt("tour_id")).getImg1());
                o.setDateFrom(rs.getDate("date_from"));
                o.setTourPrice(getTour(rs.getInt("tour_id")).getPrice());
                o.setQuantity(rs.getInt("quantity"));
                o.setPrice(rs.getFloat("price"));
                orders.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orders;
    }
    
    public void deleteOrder(int id) {
        try {
            connection = db.getConnection();
            String sql = "delete from Ordered where id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    

    //other
    public String getDesNameFromDesId(int desId) {
        try {
            connection = db.getConnection();
            String sql = "select [name] from Destination where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, desId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getString("name");
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //Account
    public Account getAccountByUsernameandPassword(String username, String password) {
        try {
            connection = db.getConnection();
            String sql = "select username,[password],is_admin from Account \n"
                    + "where username = ? and [password] = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Account acc = new Account();
                acc.setUsername(rs.getString("username"));
                acc.setPassword(rs.getString("password"));
                acc.setIsAdmin(rs.getBoolean("is_admin"));
                return acc;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account getAccountByUsername(String username) {
        try {
            connection = db.getConnection();
            String sql = "select username,[password],is_admin from Account \n"
                    + "where username = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Account acc = new Account();
                acc.setUsername(rs.getString("username"));
                acc.setPassword(rs.getString("password"));
                acc.setIsAdmin(rs.getBoolean("is_admin"));
                return acc;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertAccount(Account a) {
        try {
            String sql = "INSERT INTO [Account]\n"
                    + "           ([username]\n"
                    + "           ,[password]\n"
                    + "           ,[is_admin])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, a.getUsername());
            statement.setString(2, a.getPassword());
            statement.setBoolean(3, a.isIsAdmin());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
//        ArrayList<Tour> tours = dao.getNewTours();
//        for (Tour t : tours) {
//            System.out.println(t);
//        }
//
//        System.out.println(dao.getDestination(2).getName());

        String name = dao.getDesNameFromDesId(5);
        System.out.println(name);

//        ArrayList<Destination> destinations = dao.getDestinations();
//        for(Destination d : destinations){
//            System.out.println(d);
//        }
    }

}
