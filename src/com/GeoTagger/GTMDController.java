package com.GeoTagger;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/GTMDController")
public class GTMDController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GTMDController() {
        super();
        
        DBManager db_manager= new DBManager("root", "root1");
        this.getServletConfig().getServletContext().setAttribute("DB Manager", db_manager);
           
    }
    
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		GTMDRequest server_request =  (GTMDRequest) request.getAttribute("GTMDRequest");
		
		System.out.println(server_request);
		
		/*
		switch(request_type){
			case "DB Request":
				//this.getServletConfig().getServletContext().getAttribute("DB Manager").receiveRequest();
				break;
			case "Map Request":
				break;
		}
			
		
		*/
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	

}
