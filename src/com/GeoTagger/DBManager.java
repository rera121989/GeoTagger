package com.GeoTagger;

import java.util.ArrayList;
import java.util.List;

public class DBManager {
	
	private DBSimulator db;
	
	public DBManager(String username, String password){
		db = new DBSimulator();
		if(this.login(username, password)){
			System.out.println("Connected to database");
		}
		else{
			System.out.println("Error connecting to database");
		}
	
	}
	
	
	public boolean login(String username, String password){
		return this.db.login(username, password);
	}
	
//	public GTMDResponse receiveRequest(GTMDRequest request){
//		
//	
//	}
	
	//Get tags for a user
	public List<Tag> getMyTags(int id){
		List<Tag> tags = new ArrayList<Tag>();
		List<Tag> my_tags = new ArrayList<Tag>();
		
		tags = db.getTags();
		
		for(Tag tag: tags){
			if(tag.getUser_id() == id){
				my_tags.add(tag);
			}
		}
		
		return my_tags;
		
	}
	
	//Get tags for a location
	public List<Tag> getLocalTags(int lat, int lon){
		List<Tag> tags = new ArrayList<Tag>();
		List<Tag> local_tags = new ArrayList<Tag>();
		
		tags = db.getTags();
		
		for(Tag tag: tags){
			if(Math.abs(lat - tag.getLatitude()) < 0.001 && Math.abs(lon - tag.getLongitude()) <  0.001){
				local_tags.add(tag);
			}
		}
		
		return local_tags;
		
	}
	
	//Add a Tag
	public boolean addTag(Tag tag){
		int max = 0;
		
		List<Tag> tags = db.getTags();
		
		for(Tag t: tags){
			int current = t.getId();
			if(current > max){
				max = current;
			}
		}
		
		tag.setId(max+1);
		
		return db.addTag(tag);
	}
	//Remove Tags
	public boolean removeTag(int id){
		return db.removeTag(id);	
	}
	
	//Get All users
	public  List<User> getUsers(int id){
		return db.getUsers();
	}
	
	//Add a User
	public boolean addUser(User user){
		int max = 0;
		
		List<User> users = db.getUsers();
		
		for(User u: users){
			int current = u.getUserId();
			if(current > max){
				max = current;
			}
		}
		
		user.setUserId(max+1);
		
		return db.addUser(user);
	}
	
	//Remove a User
	public boolean removeUser(int id){
		return db.removeUser(id);
	}
	

}
