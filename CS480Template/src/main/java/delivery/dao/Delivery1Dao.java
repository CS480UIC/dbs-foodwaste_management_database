 package delivery.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//import java.util.ArrayList;
//import java.util.List;

import delivery.domain.Delivery;
import delivery.domain.DeliveryDomain;
import user.domain.User;

/**
 * DDL functions performed in database
 */
public class Delivery1Dao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "foodwaste_management_database"; //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "CS480_ANI"; //TODO change password

	public Delivery findByDeliveryID(Integer delivery_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Delivery delivery = new Delivery();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
		    String sql = "select * from delivery where delivery_id=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,delivery_id);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	Integer delivery_id1 = Integer.parseInt(resultSet.getString("delivery_id"));
		    	if(delivery_id1.equals(delivery_id)){
		    		System.out.println("delivery_date_time"+resultSet.getString("delivery_date_time"));
		    		delivery.setDelivery_address(resultSet.getString("delivery_address"));
		    		delivery.setDelivery_cost(Integer.parseInt(resultSet.getString("delivery_cost")));
		    		delivery.setDelivery_date_time(java.sql.Date.valueOf(resultSet.getString("delivery_date_time")));
		    		delivery.setDelivery_id(Integer.parseInt(resultSet.getString("delivery_id")));
		    		delivery.setRestaurant_id(Integer.parseInt(resultSet.getString("restaurant_id")));
		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return delivery;
	}	
	
	/**
	 * insert Delivery
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Delivery form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "insert into delivery(delivery_id,delivery_date_time,delivery_address,delivery_cost,restaurant_id) values(?,?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,form.getDelivery_id());
		    preparestatement.setDate(2,form.getDelivery_date_time());
		    preparestatement.setString(3,form.getDelivery_address());
		    preparestatement.setInt(4,form.getDelivery_cost());
		    preparestatement.setInt(5,form.getRestaurant_id());
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
	public void update(Delivery form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "UPDATE delivery SET delivery_date_time = ?,delivery_address=?,delivery_cost=? where delivery_id = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setDate(1,form.getDelivery_date_time());
			preparestatement.setString(2,form.getDelivery_address());
		    preparestatement.setInt(3,form.getDelivery_cost());
		    preparestatement.setInt(4,form.getDelivery_id());
		    
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param delivery_p
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void delete(String delivery_p) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "delete from delivery where delivery_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,Integer.parseInt(delivery_p));
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Object> findall() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		List<Object> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			String sql = "SELECT * from delivery\r\n"
					+ "GROUP BY delivery_address HAVING delivery_cost>50;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			ResultSet resultSet = preparestatement.executeQuery();			
			while(resultSet.next()){
				DeliveryDomain delivery = new DeliveryDomain();
				//delivery_id - int ,delivery_date_time - date , delivery_address - string , delivery_cost - int , restaurant_id - int
				
				delivery.setDelivery_id(Integer.parseInt(resultSet.getString("delivery_id")));
				delivery.setDelivery_date_time(java.sql.Date.valueOf(resultSet.getString("delivery_date_time")));
				delivery.setDelivery_address(resultSet.getString("delivery_address"));
				delivery.setDelivery_cost(Integer.parseInt(resultSet.getString("delivery_cost")));
				delivery.setRestaurant_id(Integer.parseInt(resultSet.getString("restaurant_id")));
				list.add(delivery);
			 }
			connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return list;
		
	}
}
