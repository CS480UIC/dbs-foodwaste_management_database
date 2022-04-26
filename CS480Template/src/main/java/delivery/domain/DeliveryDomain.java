package delivery.domain;

import java.sql.Date;

public class DeliveryDomain {
	//delivery_id - int ,delivery_date_time - date , delivery_address - string , delivery_cost - int , restaurant_id - int
	
	private Integer delivery_id;
	private Date delivery_date_time;
	private String delivery_address;
	private Integer delivery_cost;
	private Integer restaurant_id;
	/**
	 * @return the delivery_id
	 */
	public Integer getDelivery_id() {
		return delivery_id;
	}
	/**
	 * @param delivery_id the delivery_id to set
	 */
	public void setDelivery_id(Integer delivery_id) {
		this.delivery_id = delivery_id;
	}
	/**
	 * @return the delivery_date_time
	 */
	public Date getDelivery_date_time() {
		return delivery_date_time;
	}
	/**
	 * @param delivery_date_time the delivery_date_time to set
	 */
	public void setDelivery_date_time(Date delivery_date_time) {
		this.delivery_date_time = delivery_date_time;
	}
	/**
	 * @return the delivery_address
	 */
	public String getDelivery_address() {
		return delivery_address;
	}
	/**
	 * @param delivery_address the delivery_address to set
	 */
	public void setDelivery_address(String delivery_address) {
		this.delivery_address = delivery_address;
	}
	/**
	 * @return the delivery_cost
	 */
	public Integer getDelivery_cost() {
		return delivery_cost;
	}
	/**
	 * @param delivery_cost the delivery_cost to set
	 */
	public void setDelivery_cost(Integer delivery_cost) {
		this.delivery_cost = delivery_cost;
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
