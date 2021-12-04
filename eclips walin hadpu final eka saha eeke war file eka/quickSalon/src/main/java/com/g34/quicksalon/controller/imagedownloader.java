package com.g34.quicksalon.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;

public class imagedownloader extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int customerID =  Integer.parseInt(request.getParameter("customerID"));
		//int customerID =  41 ; 
		System.out.println("customerID = " + customerID);
		String filePath = "E:/profilepicturesfolderofSecondyearprojectdontdelete/" + customerID + ".jpeg";
        File downloadFile = new File(filePath);
        FileInputStream inStream = new FileInputStream(downloadFile);
         
        // if you want to use a relative path to context root:
        String relativePath = getServletContext().getRealPath("");
        System.out.println("relativePath = " + relativePath);
         
        // obtains ServletContext
        ServletContext context = getServletContext();
         
        // gets MIME type of the file
        String mimeType = context.getMimeType(filePath);
        if (mimeType == null) {        
            // set to binary type if MIME mapping not found
            mimeType = "application/octet-stream";
        }
        System.out.println("MIME type: " + mimeType);
         
        // modifies response
        response.setContentType(mimeType);
        response.setContentLength((int) downloadFile.length());
         
        // forces download
        String headerKey = "Content-Disposition";
        String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
        response.setHeader(headerKey, headerValue);
         
        // obtains response's output stream
        OutputStream outStream = response.getOutputStream();
         
        byte[] buffer = new byte[4096];
        int bytesRead = -1;
         
        while ((bytesRead = inStream.read(buffer)) != -1) {
            outStream.write(buffer, 0, bytesRead);
        }
         
        inStream.close();
        outStream.close();     
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws FileNotFoundException,ServletException, IOException {
		 String customerID=request.getParameter("customerID");
		//String customerID = new String(request.getParameter("customerID").getBytes("iso8859-1"), "gbk"); 
		System.out.println("custrID = " + customerID);
		String filepath = "E:/profilepicturesfolderofSecondyearprojectdontdelete/" + customerID + ".jpeg" ;
		System.out.println("customerID = " + filepath);
		File file = new File( filepath ); 
		response.setContentType("text/html;charset=GBK"); 
		if (!file.isDirectory()) { 
			file.delete();
			System.out.println("cumerID = " + response); 
			response.getWriter().print( 
			  "<mce:script language='javascript'><!--   Alert ('successful deletion'); window. location. href ='index. jsp';   // --></mce:script>"); 
		  } else { 
	   
		  } 

	}

}
