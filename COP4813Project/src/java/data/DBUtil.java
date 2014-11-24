// Orginally coded by Edwin for Projct 3 - Modifications are for Project 4 by Heather

package music.data;


import java.sql.*;

public class DBUtil 
{
    public static void closeStatement(Statement s)
    {
        try
        {
            if (s !=null)
                s.close();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }

public static void closePreparedStatement(Statement ps)
{
    try
    {
        if (ps != null)
            ps.close();
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
}

public static void closeResultSet(ResultSet rs)
{
    try
    {
        if (rs != null)
            rs.close();
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
}
//Modified Code Below by Heather Roberts 11/23/2014

    static Object getEmFactory() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
