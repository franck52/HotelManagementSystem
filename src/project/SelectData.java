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
public class SelectData {
    public static ResultSet getData(String query){
        Connection connect = null;
        ResultSet rs = null;
        Statement st = null;
        try{
            connect = ConnectionDB.getCon();
            st = connect.createStatement();
            rs = st.executeQuery(query);
            return rs;
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
    }
    
    
}
