package com.GeoTagger;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
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
		response.addHeader("Access-Control-Allow-Origin", "*");
		System.out.println("Servlet: MyTags");
		String direction = (String) request.getAttribute("direction");
		
		if(direction == null ){
			System.out.println("incoming...");
			
			String type = (String) request.getParameter("type");

			//Get json in as a Java String
			String json = (String) request.getParameter("json");
			
			
			//Convert json string to java object
			GTMDRequest myrequest = new GTMDRequest(type, json);
			
			request.setAttribute("GTMDRequest", myrequest);
			
			//Send to GTMDController
			RequestDispatcher rd=request.getRequestDispatcher("../GTMDController");  
			rd.forward(request, response);
			
		}
		else if(direction.equals("outgoing"))
		{

			System.out.println("outgoing...");
			List<Tag> tags = (List<Tag>) request.getAttribute("tags");
			String jsonList = new Gson().toJson(tags);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(jsonList);
			return;
		}
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
