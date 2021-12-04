package com.g34.quicksalon.dao;

import com.g34.quicksalon.database.DBConnection;


import java.sql.SQLException;
import java.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class FeedbackDAOImple implements FeedbackDAO   {


  

    public String  addcomplainttodb( String complaint) throws SQLException, ClassNotFoundException {

        Connection connection =DBConnection.getConnection();
        PreparedStatement stmt= connection.prepareStatement("INSERT INTO j4f9qe_complaint ( customerID , date, time, details ) VALUES ( 50 , current_date() ,current_time(),'"+ complaint +"');");
        int success=stmt.executeUpdate();
        if(success<=0){
            return  "fail";
        }
        else {
            return   "success" ;
        }
        
    }
    

}







