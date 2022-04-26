package restaurant.domain;

public class RestaurantDomain {
	// restaurant_name - string , delivery_id - int , delivery_address - string 
	
	private String restaurant_name;
	private Integer delivery_id;
	private String delivery_address;
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
	
	

}
