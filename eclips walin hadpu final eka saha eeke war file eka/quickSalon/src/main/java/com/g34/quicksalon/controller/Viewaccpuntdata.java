package com.g34.quicksalon.controller;


import com.g34.quicksalon.dao.accountDAO;
import com.g34.quicksalon.dao.accountDAOImple;
import com.g34.quicksalon.model.ManagerDetailsForView;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import  java.io.PrintWriter;

public class Viewaccpuntdata extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res ) throws IOException, ServletException
    {
    	
		int customerID =  Integer.parseInt(req.getParameter("customerID"));
		
        try
        {
            accountDAO manager = new accountDAOImple();
            ArrayList<ManagerDetailsForView> managerDetails = new ArrayList<>();
            managerDetails = manager.getManagersDetails( customerID );
            

            

            String json = new Gson().toJson(managerDetails);
            res.setContentType("application/json");
            res.setCharacterEncoding("UTF-8");
            res.getWriter().write(json);
            




        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println(e);
        }


    }

}







