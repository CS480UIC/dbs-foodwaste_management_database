package restaurant.service;


import restaurant.dao.RestaurantDao;
import restaurant.domain.Restaurant;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class RestaurantService {
	private RestaurantDao restaurantDao = new RestaurantDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Restaurant form) throws RestaurantException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Restaurant restaurant = restaurantDao.findByRestaurantID(form.getRestaurant_id());
		if(restaurant.getRestaurant_id()!=null && restaurant.getRestaurant_id() == (form.getRestaurant_id())) throw new RestaurantException("This Restaurant ID has been registered!");
		restaurantDao.add(form);
	}
}
