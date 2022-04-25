package restaurant.domain;

import java.sql.Date;
import java.sql.Time;

/**
 * Delivery object
 * 
 * @author Ajay Marampalli
 * 
 */
public class Restaurant {
	/*
	 * Correspond to the user table
	 */
	
	private Integer restaurant_id;
	private Time start_time;
	private Time end_time;
	private String restaurant_address;
	private String restaurant_contact;
	private String restaurant_name;
	/**
	 * @return the restaurant_id
	 */
	public Integer getRestaurant_id() {
		return restaurant_id;
	}
	/**
	 * @param restaurant_id the restaurant_id to set
	 */
	public void setRestaurant_id(Integer restaurant_id) {
		this.restaurant_id = restaurant_id;
	}
	/**
	 * @return the start_time
	 */
	public Time getStart_time() {
		return start_time;
	}
	/**
	 * @param start_time the start_time to set
	 */
	public void setStart_time(Time start_time) {
		this.start_time = start_time;
	}
	/**
	 * @return the end_time
	 */
	public Time getEnd_time() {
		return end_time;
	}
	/**
	 * @param end_time the end_time to set
	 */
	public void setEnd_time(Time end_time) {
		this.end_time = end_time;
	}
	/**
	 * @return the restaurant_address
	 */
	public String getRestaurant_address() {
		return restaurant_address;
	}
	/**
	 * @param restaurant_address the restaurant_address to set
	 */
	public void setRestaurant_address(String restaurant_address) {
		this.restaurant_address = restaurant_address;
	}
	/**
	 * @return the restaurant_contact
	 */
	public String getRestaurant_contact() {
		return restaurant_contact;
	}
	/**
	 * @param restaurant_contact the restaurant_contact to set
	 */
	public void setRestaurant_contact(String restaurant_contact) {
		this.restaurant_contact = restaurant_contact;
	}
	/**
	 * @return the restaurant_name
	 */
	public String getRestaurant_name() {
		return restaurant_name;
	}
	/**
	 * @param restaurant_name the restaurant_name to set
	 */
	public void setRestaurant_name(String restaurant_name) {
		this.restaurant_name = restaurant_name;
	}
	
	
	
}
