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


@WebServlet("/tags/create")
public class CreateTag extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CreateTag() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		response.addHeader("Access-Control-Allow-Origin", "*");
		System.out.println("Servlet: Create Tag");
		
		String direction = (String) request.getAttribute("direction");
		System.out.println(direction);
		
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
			boolean status = (boolean) request.getAttribute("status");
			String jsonList = new Gson().toJson(status);
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
