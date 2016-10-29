package com.GeoTagger;

public class GTMDRequest {


	/*
	This class is a wrapper for the type of request that is received on the server and the data that is contained within the request
	i.e.
	 	Request{
	 		type: db_request,
	 		json:{
	 			getMyTags
	 			}
	
	*/
	
	private String type;
	private String json;

	public void setType(String type) {
		this.type = type;
	}
	
	public String getType() {
		return this.type;
	}
	
	public String getJson(){
		return this.json;	
	}
	
	public void setJson(String json){
		this.json = json;
	}
	
	
	
	
}
