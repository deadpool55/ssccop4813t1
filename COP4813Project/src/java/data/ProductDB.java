/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.*;
import business.Product;

public class ProductDB
{
    public static int insert(Product product)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = 
                "INSERT INTO Product (Code, Description, Price) " +
                "VALUES (?,?,?)";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setString(1, product.getCode());
            ps.setString(2, product.getDescription());
            ps.setDouble(3, product.getPrice());
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static int update(Product product)
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "UPDATE Product SET " +
                "Code = ?, " +
                "Description = ?, " +
                "WHERE Price = ?";
        try
        {
            ps = connection.prepareStatement(query);
            ps.setString(1, product.getCode());
            ps.setString(2, product.getDescription());
            ps.setDouble(3, product.getPrice());
            
            return ps.executeUpdate();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            return 0;
        }
        finally
        {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
public static int delete(Product product)
{
    ConnectionPool pool = ConnectionPool.getInstance();
    Connection connection = pool.getConnection();
    PreparedStatement ps = null;
    
    String query = "DELETE FROM Product " +
            "WHERE Price = ?";
    try
    {
        ps = connection.prepareStatement(query);
        ps.setDouble(1, product.getPrice());
        
        return ps.executeUpdate();
    }
    catch(SQLException e)
    {
        e.printStackTrace();
        return 0;
    }
    finally
    {
        DBUtil.closePreparedStatement(ps);
        pool.freeConnection(connection);
    }
}
}
