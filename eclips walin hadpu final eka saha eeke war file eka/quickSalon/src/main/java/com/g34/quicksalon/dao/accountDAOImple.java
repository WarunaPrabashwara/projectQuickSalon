package com.g34.quicksalon.dao;

import com.g34.quicksalon.database.DBConnection;
import com.g34.quicksalon.model.ManagerDetails;
import com.g34.quicksalon.model.ManagerDetailsForView;

import java.sql.*;
import java.util.ArrayList;

public class accountDAOImple implements accountDAO {


	public int updatemanagers( int customerID , String  fname, String lname, String uname, String cnum, String email) throws Exception
	{



		Connection	con = DBConnection.getConnection();

		String query1 = "UPDATE  j4f9qe_customer SET firstName = ? , lastName = ? , telephone = ? WHERE customerID =  ?";

		String query2 = "UPDATE  j4f9qe_user  SET email = ? , userName = ? WHERE userID =  ?";


		PreparedStatement pst = con.prepareStatement(query1);
		PreparedStatement pst2 = con.prepareStatement(query2);


		Statement st = con.createStatement();

		pst.setString(1, fname);
		pst.setString(2, lname );
		pst.setString(3, cnum);
		pst.setInt(4, customerID);

		pst2.setString(1, email);
		pst2.setString(2, uname );
		pst2.setInt(3, customerID );	

		int x = pst.executeUpdate();
		int y = pst2.executeUpdate();

		//System.out.println("x = "+x);
		//System.out.println("y = "+y);

		if(x>0 && y>0 )
		{
			return 1;
		}
		else
		{
			return 0;
		}


	}

	private ArrayList<ManagerDetailsForView> AllManagersDetails = new ArrayList<>();

	public ArrayList<ManagerDetailsForView> getManagersDetails(int customerID ) throws Exception
	{
		
		Connection	con = DBConnection.getConnection();
		Statement st = con.createStatement();


		ResultSet rs = st.executeQuery("SELECT j4f9qe_customer.firstName , j4f9qe_customer.lastName , j4f9qe_customer.telephone, j4f9qe_user.email , j4f9qe_user.userName  FROM j4f9qe_user INNER JOIN j4f9qe_customer ON j4f9qe_customer.customerID = j4f9qe_user.userID WHERE j4f9qe_customer.customerID ='"+ customerID +"'");
		
		while(rs.next())
		{
			AllManagersDetails.add(new ManagerDetailsForView(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5)));

		}

		return AllManagersDetails;
	}


}