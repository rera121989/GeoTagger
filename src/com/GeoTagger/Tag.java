package com.GeoTagger;

import java.util.Date;

public class Tag {
	private int id;
	private String name;
	private String city;
	private String song_name;
	private String song_artist;
	private Date time;
	private int user_id;
	private double latitude;
	private double longitude;

	public Tag() {
	}
	
	public Tag(int id, String name, String city,  String song_artist, String song_name, Date time, int user_id, double latitude, double longitude) {
		this.id = id;
		this.name = name;
		this.city = city;
		this.song_name = song_name;
		this.song_artist = song_artist;
		this.time = time;
		this.user_id = user_id;
		this.latitude = latitude;
		this.longitude = longitude;
	}
	
	public Tag(int id, String name, String city, String song_artist, String song_name, int user_id, double latitude, double longitude) {
		this.id = id;
		this.name = name;
		this.city = city;
		this.song_name = song_name;
		this.song_artist = song_artist;
		this.time = new Date();
		this.user_id = user_id;
		this.latitude = latitude;
		this.longitude = longitude;
	}
	
	public Tag( String name, String city, String song_artist, String song_name,  int user_id, double latitude, double longitude) {
		this.name = name;
		this.city = city;
		this.song_name = song_name;
		this.song_artist = song_artist;
		this.time = new Date();
		this.user_id = user_id;
		this.latitude = latitude;
		this.longitude = longitude;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getSong_name() {
		return song_name;
	}
	public void setSong_name(String song_name) {
		this.song_name = song_name;
	}
	public String getSong_artist() {
		return song_artist;
	}
	public void setSong_artist(String song_artist) {
		this.song_artist = song_artist;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(int longitude) {
		this.longitude = longitude;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(int latitude) {
		this.latitude = latitude;
	}
	
}
