package com.g34.quicksalon.model;

import java.sql.Time;
import java.util.Date;

public class complaintmodel {

    private int customerId;
    private String complaint;
    private String responsee;
    

    public complaintmodel() {
    }

    public complaintmodel(int customerId, String complaint, String responsee ) {
        this.customerId =customerId;
        this.complaint = complaint;
        this.responsee = responsee;

    }


    public int getcustomerId() {
        return customerId;
    }

    public void setcustomerId(int customerId) {
        this.customerId = customerId;
    }

    public  String getcomplaint() {
        return complaint;
    }
    public void setcomplaint(String complaint) {
        this.complaint = complaint;
    }

    public void setresponsee(String responsee) {
        this.responsee = responsee;
    }
    public  String getresponsee() {
        return responsee;
    }

    
  

}
