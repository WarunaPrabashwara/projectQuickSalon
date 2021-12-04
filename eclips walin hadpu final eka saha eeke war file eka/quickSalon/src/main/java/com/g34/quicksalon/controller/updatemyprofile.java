package com.g34.quicksalon.controller;
import com.g34.quicksalon.dao.*;
import com.g34.quicksalon.database.DBConnection;
import com.g34.quicksalon.model.ServiceProvider;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class updatemyprofile extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//        int spID = Integer.parseInt(request.getParameter("spID"));
		
		
		
			}
		
			protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
		//		HttpSession session= req.getSession();
		//        int userID=(Integer) session.getAttribute("userID");
		//		int userID = 2;
		
				int customerID =  Integer.parseInt(req.getParameter("customerID"));
				String fname = req.getParameter("fname");
				String lname = req.getParameter("lname");
				String uname = req.getParameter("uname");
				String cnum = req.getParameter("cnum");
				String email = req.getParameter("email");
				
		
				accountDAO customer = new accountDAOImple();
				try {
					int t = customer.updatemanagers(customerID , fname,lname,uname,cnum,email);
					res.getWriter().println(t);
				} catch (SQLException throwables) {
					throwables.printStackTrace();
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		
		
		
		
		
		
		
			}
		}
		