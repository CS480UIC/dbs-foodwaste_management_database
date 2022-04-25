package offer.domain;

import java.sql.Date;

/**
 * items object
 * 
 * @author Ajay Marampalli
 * 
 */
public class Offer {
	/*
	 * Correspond to the Employee table
	 */
	
	private Integer offer_id;
	private String offer_item_name;
	private Integer percentage_discount;
	private Integer restaurant_id;
	/**
	 * @return the offer_id
	 */
	public Integer getOffer_id() {
		return offer_id;
	}
	/**
	 * @param offer_id the offer_id to set
	 */
	public void setOffer_id(Integer offer_id) {
		this.offer_id = offer_id;
	}
	/**
	 * @return the offer_item_name
	 */
	public String getOffer_item_name() {
		return offer_item_name;
	}
	/**
	 * @param offer_item_name the offer_item_name to set
	 */
	public void setOffer_item_name(String offer_item_name) {
		this.offer_item_name = offer_item_name;
	}
	/**
	 * @return the percentage_discount
	 */
	public Integer getPercentage_discount() {
		return percentage_discount;
	}
	/**
	 * @param percentage_discount the percentage_discount to set
	 */
	public void setPercentage_discount(Integer percentage_discount) {
		this.percentage_discount = percentage_discount;
	}
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
	
	

	
	
}
