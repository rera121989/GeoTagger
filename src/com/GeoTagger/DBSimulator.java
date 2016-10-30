package com.GeoTagger;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DBSimulator {

	private String username;
	private String password;
	private List<Tag> tags;
	private List<User> users;
	
	public DBSimulator(){
		
		username = "root";
		password = "root1";
		
	//TAGS-------
		tags = new ArrayList<Tag>();
		
		
    	//All by User 1
    	tags.add(new Tag(1, "Joshua Tree Enterance", "Joshua Tree", "Violent Femmes", "Blister in the Sun", new Date(), 1, 34.093715, -116.265253));
    	tags.add(new Tag(2, "Jumbo Rocks", "Joshua Tree", "Rolling Stones", "Wild Horses", new Date(), 1, 33.991836, -116.062401));
    	tags.add(new Tag(3, "Skull Rock", "Joshua Tree", "Kansas", "Dust in the Wind", new Date(), 1, 33.997816, -116.059883));
    	tags.add(new Tag(4, "Cactus Garden", "Joshua Tree", "Weezer", "Island in the Sun", new Date(), 1, 33.925222, -115.928956));
    	tags.add(new Tag(14, "CS3337", "CSULA", "311", "I'll be Here Awhile", new Date(), 1, 34.066702, -118.166550));
		
		//All by User 2
    	tags.add(new Tag(5, "DT View", "Los Angeles", "Paradise", "Coldplay", new Date(), 2, 34.031311, -118.433909));
    	tags.add(new Tag(6, "Calm Beach ", "Long Beach", "Red Hot Chili Peppers", "Californication", new Date(), 2, 33.760474, -118.154751));
    	tags.add(new Tag(7, "Crowded Beach", "Santa Monica", "Oasis", "Supersonic", new Date(), 2, 34.010725, -118.499151));
    	
    	
    	//All by User 3
    	tags.add(new Tag(8, "Mt. Baldy Peak", "Mt. Baldy", "Rolling Stones", "Wild Horses", new Date(), 3, 34.235691, -117.656502));
    	tags.add(new Tag(9, "Twin Peak", "San Bernardino", "Led Zeppelin", "Stairway To Heaven", new Date(), 3, 34.236915, -117.228218));
    	tags.add(new Tag(10, "Big Bear Lake Shore", "San Bernardino", "Journey", "Don't Stop Believing", new Date(), 3, 34.255649, -116.957711));
    	tags.add(new Tag(11, "Lake Arrowhead View", "San Bernardino", "Led Zeppelins", "Over the Hills and Far Away", new Date(), 3, 34.259395, -117.174811));
    	
    	
    	//All by User 4
    	tags.add(new Tag(12, "Griffith Observatory", "Los Angeles", "Coldplay", "Yellow", new Date(), 4, 34.119295, -118.300365));
    	tags.add(new Tag(13, "LACMA Lights", "Los Angeles", "The Neighborhood", "Sweater Weather", new Date(), 4, 34.062936, -118.359178));
    	
	//USERS----------
		users = new ArrayList<User>();
		users.add(new User(1, "asornoso", "adam1"));
		users.add(new User(2, "bkan", "brian1"));
		users.add(new User(3, "rromero", "raymond1"));
		users.add(new User(4, "xwang", "chealsa1"));
		

		
	}
	
	public boolean login(String username, String password){
		if (username == this.username && password == this.password){
			return true;
		}
		else{
			return false;
		}
	}
	
	
	public List<Tag> getTags(){
		return this.tags;
	}
	
	public  List<User> getUsers(){
		return this.users;
	}
	
	public boolean addTag(Tag tag){
		return tags.add(tag);
	}
	
	public boolean addUser(User user){
		return users.add(user);
	}
	
	public boolean removeTag(int id){
		for(Tag tag: tags){
			if(tag.getId() == id){
				tags.remove(id);
				return true;
			}
		}
		return false;
	}
	
	public boolean removeUser(int id){
		for(User user: users){
			if(user.getUserId() == id){
				users.remove(id);
				return true;
			}
		}
		return false;
	}
	
	
	public int getTagsLength(){
		return this.tags.size();
	}
	
	public int getUsersLength(){
		return this.users.size();
	}
	
	
	
	
	
}
