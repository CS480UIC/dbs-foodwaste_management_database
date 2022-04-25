 package offer.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;





//import java.util.ArrayList;
//import java.util.List;

import offer.domain.Offer;

/**
 * DDL functions performed in database
 */
public class OfferDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "foodwaste_management_database"; //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "CS480_ANI"; //TODO change password

	public Offer findByOfferID(Integer offer_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Offer offer = new Offer();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
		    String sql = "select * from offers where offer_id=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,offer_id);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	Integer offer_id1 = Integer.parseInt(resultSet.getString("offer_id"));
		    	if(offer_id1.equals(offer_id)){
		    		offer.setOffer_id(Integer.parseInt(resultSet.getString("offer_id")));
		    		offer.setOffer_item_name(resultSet.getString("offer_item_name"));
		    		offer.setPercentage_discount(Integer.parseInt(resultSet.getString("percentage_discount")));
		    		offer.setRestaurant_id(Integer.parseInt(resultSet.getString("restaurant_id")));
		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return offer;
	}	
	
	/**
	 * insert Delivery
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Offer form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "insert into offers(offer_id,offer_item_name,percentage_discount,restaurant_id) values(?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,form.getOffer_id());
		    preparestatement.setString(2,form.getOffer_item_name());
		    preparestatement.setInt(3,form.getPercentage_discount());
		    preparestatement.setInt(4,form.getRestaurant_id());
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
	public void update(Offer form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "UPDATE offers SET offer_item_name = ?,percentage_discount= ? where offer_id = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,form.getOffer_item_name());
			preparestatement.setInt(2,form.getPercentage_discount());
		    preparestatement.setInt(3,form.getOffer_id());
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
	public void delete(String offer_p) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "delete from offers where offer_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,Integer.parseInt(offer_p));
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
