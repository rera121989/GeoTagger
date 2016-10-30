package com.GeoTagger;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;


@WebServlet("/GTMDController")
public class GTMDController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static  DBManager db_manager;
	
    public GTMDController() {
        super();
        
        db_manager= new DBManager("root", "root1");
        //this.getServletConfig().getServletContext().setAttribute("DB Manager", db_manager);
        //this.getServletContext().setAttribute("DB Manager", db_manager);

    }
    
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.addHeader("Access-Control-Allow-Origin", "*");
		System.out.println("GTMD Controller");
		Gson gson = new Gson();
		
		GTMDRequest server_request =  (GTMDRequest) request.getAttribute("GTMDRequest");
		
		JsonParser parser = new JsonParser();
		JsonObject obj = parser.parse(server_request.getJson()).getAsJsonObject();
		System.out.println(obj.toString());
		
		switch(server_request.getType()){
			case "DB_Request":
				String db_call = obj.get("type").getAsString();
				switch(db_call){
					case "user_tags":
						int id = obj.get("user_id").getAsInt();
						List<Tag> mytags = db_manager.getMyTags(id);
						request.setAttribute("tags", mytags);
						request.setAttribute("direction", "outgoing");
						
						//Send to /tags/user
						RequestDispatcher rd = request.getRequestDispatcher("/tags/user");  
						rd.forward(request, response);
						break;
					case "create_tag":
						int uid = obj.get("user_id").getAsInt();
						String name = obj.get("name").getAsString();
						String song = obj.get("song").getAsString();
						String city = obj.get("city").getAsString();
						String artist = obj.get("artist").getAsString();
						double latitude = obj.get("lat").getAsDouble();
						double longitude = obj.get("long").getAsDouble();
						Tag tag = new Tag( name,  city,  song, artist,  uid,  latitude,  longitude);
						boolean status = db_manager.addTag(tag);
						request.setAttribute("status", status);
						request.setAttribute("direction", "outgoing");
						
						//Send to /tags/create
						RequestDispatcher rd1 = request.getRequestDispatcher("/tags/create");  
						rd1.forward(request, response);
						break;
						
					case "local_tags":
						break;

				}
				break;
			case "Map Request":
				break;
		}
			
		
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	

}
