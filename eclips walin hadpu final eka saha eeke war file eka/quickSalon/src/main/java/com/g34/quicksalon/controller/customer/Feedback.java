package com.g34.quicksalon.controller.customer;

import com.g34.quicksalon.dao.FeedbackDAO;
import com.g34.quicksalon.dao.FeedbackDAOImple;
import com.google.gson.Gson;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

/*@WebServlet("/feedbackOrComplaint")*/
public class Feedback extends HttpServlet  {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res ) throws IOException {
        PrintWriter outa = res.getWriter();
        outa.println("hi there  in do posr");
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        System.out.println("hiii222i");
        
        String complaint=req.getParameter("complaint");
        PrintWriter out = res.getWriter();
     /*   out.println("hi there  in do get");*/
        FeedbackDAO FeedbackDAO = new FeedbackDAOImple();
        if (complaint.equals("")) {
       /*     out.print("display the leaves");*/
            try {
                    String json = new Gson().toJson("No complaint entered ");
                    res.setContentType("application/json");
                    res.setCharacterEncoding("UTF-8");
                    res.getWriter().write(json);
                    System.out.println("hiiii");
                    out.println("hiiia");
/*
                    out.println(leaveArray.get(0).getLeaverID());
*/
               
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        else  {
          /*  out.print("display the cpmplantss");*/
            try {
              
                    String  complaintArray = FeedbackDAO.addcomplainttodb(complaint);
                  /*  out.println(complaintArray.get(0).getDetails());*/
                    String json = new Gson().toJson(complaintArray);
                    res.setContentType("application/json");
                    res.setCharacterEncoding("UTF-8");
                    res.getWriter().write(json);
                
               
            } catch (Exception e) {
                System.out.println(e);
            }
        }
    }



}


