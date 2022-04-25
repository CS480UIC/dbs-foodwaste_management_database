package items.domain;

import java.sql.Date;

/**
 * items object
 * 
 * @author Ajay Marampalli
 * 
 */
public class Items {
	/*
	 * Correspond to the Employee table
	 */
	
	private Integer item_id;
	private Integer item_price;
	private String item_name;
	private Date item_in_date;
	private Date item_expiry_date;
	/**
	 * @return the item_id
	 */
	public Integer getItem_id() {
		return item_id;
	}
	/**
	 * @param item_id the item_id to set
	 */
	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}
	/**
	 * @return the item_price
	 */
	public Integer getItem_price() {
		return item_price;
	}
	/**
	 * @param item_price the item_price to set
	 */
	public void setItem_price(Integer item_price) {
		this.item_price = item_price;
	}
	/**
	 * @return the item_name
	 */
	public String getItem_name() {
		return item_name;
	}
	/**
	 * @param item_name the item_name to set
	 */
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	/**
	 * @return the item_in_date
	 */
	public Date getItem_in_date() {
		return item_in_date;
	}
	/**
	 * @param item_in_date the item_in_date to set
	 */
	public void setItem_in_date(Date item_in_date) {
		this.item_in_date = item_in_date;
	}
	/**
	 * @return the item_expiry_date
	 */
	public Date getItem_expiry_date() {
		return item_expiry_date;
	}
	/**
	 * @param item_expiry_date the item_expiry_date to set
	 */
	public void setItem_expiry_date(Date item_expiry_date) {
		this.item_expiry_date = item_expiry_date;
	}
	
	

	
	
}
