 package sales.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




//import java.util.ArrayList;
//import java.util.List;

import sales.domain.Sales;

/**
 * DDL functions performed in database
 */
public class SalesDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "foodwaste_management_database"; //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "CS480_ANI"; //TODO change password

	public Sales findBySaleID(Integer sale_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Sales sales = new Sales();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
		    String sql = "select * from sales where sale_id=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,sale_id);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	Integer sale_id1 = Integer.parseInt(resultSet.getString("sale_id"));
		    	if(sale_id1.equals(sale_id)){
		    		
		    		sales.setSale_id(Integer.parseInt(resultSet.getString("sale_id")));
		    		sales.setDaily_sale_amount(Integer.parseInt(resultSet.getString("daily_sale_amount")));
		    		sales.setProfit(Integer.parseInt(resultSet.getString("profit")));
		    		sales.setSales_report(resultSet.getString("sales_report"));
		    		sales.setCurrent_date(java.sql.Date.valueOf(resultSet.getString("current_date")));
		    		sales.setRestaurant_id(Integer.parseInt(resultSet.getString("restaurant_id")));		    		
		    		
		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return sales;
	}	
	
	/**
	 * insert Delivery
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Sales form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "insert into sales values(?,?,?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,form.getSale_id());
		    preparestatement.setInt(2,form.getDaily_sale_amount());
		    preparestatement.setInt(3,form.getProfit());
		    preparestatement.setString(4,form.getSales_report());
		    preparestatement.setDate(5,form.getCurrent_date());
		    preparestatement.setInt(6,form.getRestaurant_id());
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
	public void update(Sales form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "UPDATE `sales` SET `daily_sale_amount` = ?,`profit`=?,`sales_report`=?,`current_date`=?,`restaurant_id`=? where `sale_id` = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,form.getDaily_sale_amount());
			preparestatement.setInt(2,form.getProfit());
		    preparestatement.setString(3,form.getSales_report());
		    preparestatement.setDate(4,form.getCurrent_date());
		    preparestatement.setInt(5,form.getRestaurant_id());
		    preparestatement.setInt(6,form.getSale_id());
		    		    
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param sales_p
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void delete(String sales_p) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "delete from sales where sale_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,Integer.parseInt(sales_p));
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
