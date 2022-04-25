 package restaurant.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




//import java.util.ArrayList;
//import java.util.List;

import restaurant.domain.Restaurant;

/**
 * DDL functions performed in database
 */
public class RestaurantDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "foodwaste_management_database"; //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "CS480_ANI"; //TODO change password

	public Restaurant findByRestaurantID(Integer restaurant_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Restaurant restaurant = new Restaurant();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
		    String sql = "select * from restaurant where restaurant_id=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,restaurant_id);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	Integer restuarant_id1 = Integer.parseInt(resultSet.getString("restaurant_id"));
		    	if(restuarant_id1.equals(restaurant_id)){
		    		restaurant.setRestaurant_id(Integer.parseInt(resultSet.getString("restaurant_id")));
		    		restaurant.setStart_time(java.sql.Time.valueOf(resultSet.getString("start_time")));
		    		restaurant.setEnd_time(java.sql.Time.valueOf(resultSet.getString("end_time")));
		    		restaurant.setRestaurant_address(resultSet.getString("restaurant_address"));
		    		restaurant.setRestaurant_contact(resultSet.getString("restaurant_contact"));
		    		restaurant.setRestaurant_name(resultSet.getString("restaurant_name"));
		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return restaurant;
	}	
	
	/**
	 * insert Delivery
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Restaurant form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "insert into restaurant(restaurant_id,start_time,end_time,restaurant_address,restaurant_contact,restaurant_name) values(?,?,?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,form.getRestaurant_id());
		    preparestatement.setTime(2,form.getStart_time());
		    preparestatement.setTime(3,form.getEnd_time());
		    preparestatement.setString(4,form.getRestaurant_address());
		    preparestatement.setString(5,form.getRestaurant_contact());
		    preparestatement.setString(6,form.getRestaurant_name());
		    preparestatement.executeUpdate();
		    connect.close();
		    
		    
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param form
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void update(Restaurant form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "UPDATE restaurant SET start_time=?,end_time=?,restaurant_address=?,restaurant_contact=?,restaurant_name=? where restaurant_id = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setTime(1,form.getStart_time());
			preparestatement.setTime(2,form.getEnd_time());
		    preparestatement.setString(3,form.getRestaurant_address());
		    preparestatement.setString(4,form.getRestaurant_contact());
		    preparestatement.setString(5,form.getRestaurant_name());
		    preparestatement.setInt(6,form.getRestaurant_id());		    
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param restaurant_p
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void delete(String restaurant_p) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "delete from restaurant where restaurant_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,Integer.parseInt(restaurant_p));
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
