package com.g34.quicksalon.dao;

import com.g34.quicksalon.database.DBConnection;
import com.g34.quicksalon.model.complaintmodel;


import java.sql.SQLException;
import java.util.ArrayList;

public interface FeedbackDAO {

    public  String   addcomplainttodb( String complaint ) throws SQLException, ClassNotFoundException;
  

    }
