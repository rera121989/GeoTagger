package com.GeoTagger;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/tags/user")
public class MyTags extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
    public MyTags() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("my tags");
		
		response.addHeader("Access-Control-Allow-Origin", "*");
		
		
		Gson gson = new Gson();
		
		
		//Get json in as a Java String
		String json = (String) request.getAttribute("data");
		
		System.out.println(json);
		
		//Convert json string to java object
		GTMDRequest myrequest = gson.fromJson(json, GTMDRequest.class);
		
		request.setAttribute("GTMDRequest", myrequest);
		
		//Send to GTMDController
		response.sendRedirect("/GTMDController");

				
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
