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
public class Tables {
    public static void main(String args[]){
        Connection connect = null;
        Statement st = null;
        try{
            connect = ConnectionDB.getCon();
            st = connect.createStatement();
            st.executeUpdate("create table users(nom varchar(200), email varchar(200), passeword varchar(50),securitequestion varchar(500),reponse varchar(200), address varchar(200), statut varchar(20) )");
            st.executeUpdate("create table room(roomNo varchar(20), roomType varchar(200),bed varchar(200), price int, status varchar(20), primary key(roomNo) )");
            st.executeUpdate("create table client(idClient int, nomClient varchar(200), numTel varchar(20), nationalite varchar(200),genre varchar(50), email varchar(200),idPreuve varchar(200), address varchar(500),checkIn varchar(50),numchambre varchar(10),lit varchar(100),roomtype varchar(200), prixParJour int(10),nbrJourPasser int(200), totalAmount varchar(200),checkOut varchar(50), primary key(idClient)  )");
            JOptionPane.showMessageDialog(null,"la table a été crée");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }
        finally{
             try{
                 connect.close();
                 st.close();
        }
        catch(Exception e){
        }
             
        }
    }
   
    
}
