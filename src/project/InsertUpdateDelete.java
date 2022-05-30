/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author OMEN
 */
public class InsertUpdateDelete {
    public static void setData(String Query, String msg){
        Connection connect = null;
        Statement st = null;
        try{
            connect = ConnectionDB.getCon();
            st = connect.createStatement();
            st.executeUpdate(Query);
            if(!msg.equals("")){
                JOptionPane.showMessageDialog(null, msg);
            }
        }
        catch(Exception e){}
        finally{
            try{
                connect.close();
                st.close();
            }
            catch(Exception e){}
        }
    }
    
}
