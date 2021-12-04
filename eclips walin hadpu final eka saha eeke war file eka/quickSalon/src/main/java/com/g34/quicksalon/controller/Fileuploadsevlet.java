package com.g34.quicksalon.controller;

import java.io.File;
import java.io.IOException;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.InputStream;
/**
 * Servlet implementation class Fileuploadsevlet
 */

@MultipartConfig(
	fileSizeThreshold = 1024*1024*1 , // 1 mb
	maxFileSize = 1024*1024*10 ,
	maxRequestSize = 1024*1024*100
) // meken karanne chunk widihata file uload karanna pluwamn karanwa ffront eke ajax wala multipart kiyala iwe nathuwata multipart walin enne

public class Fileuploadsevlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int customerID =  Integer.parseInt(request.getParameter("customerID"));
		ServletContext sc = getServletContext();
		String filepath = "E:/profilepicturesfolderofSecondyearprojectdontdelete/" + customerID + ".jpeg" ;
        System.out.println("first");
		Path path = Paths.get(filepath);
		System.out.println(path);
		System.out.println("first22222222");
		try (InputStream is =  Files.newInputStream(path)) {
			System.out.println(is);
            // it is the responsibility of the container to close output stream
            OutputStream os = response.getOutputStream();
			
			System.out.println(os);
            if (is == null) {

                response.setContentType("text/plain");
                os.write("Failed to send image".getBytes());
            } else {

                response.setContentType("image/jpeg");

                byte[] buffer = new byte[1024];
                int bytesRead;

                while ((bytesRead = is.read(buffer)) != -1) {

                    os.write(buffer, 0, bytesRead);
                }
            }
        }
		catch (Exception e) {
			System.out.println("firs5565t");
			OutputStream os = response.getOutputStream();
			response.setContentType("text/plain");
            os.write("No profile picture available".getBytes());
		}


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part filePart = request.getPart("file");
		String fileName = filePart.getSubmittedFileName();	//ena nama aran ekenma save karanna kiyala meke kiyawenne
		for(Part part  : request.getParts()){	//methana ara chunk okkoma save karanawa 
			part.write("E:\\profilepicturesfolderofSecondyearprojectdontdelete\\" + fileName );
		}
		response.getWriter().print("uploaded successfully");
	}

}
