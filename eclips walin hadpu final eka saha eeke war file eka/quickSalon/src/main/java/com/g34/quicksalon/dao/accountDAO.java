package com.g34.quicksalon.dao;

import java.util.ArrayList;

import com.g34.quicksalon.model.ManagerDetails;
import com.g34.quicksalon.model.ManagerDetailsForView;

public interface accountDAO {

    public int updatemanagers(int customerID ,String fname,String lname, String uname, String cnum, String email ) throws Exception;
    
    public ArrayList<ManagerDetailsForView> getManagersDetails( int customerID ) throws Exception;

    
}
