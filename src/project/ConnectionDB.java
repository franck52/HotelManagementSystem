/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author OMEN
 */
public class ConnectionDB {
    
    public static Connection getCon(){
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection connect =(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root", "");
            //JOptionPane.showMessageDialog(null, "Connexion reussie!");
            return connect;
        }catch(Exception e){  e.printStackTrace();      }
        return null;
    
    }
    
}
