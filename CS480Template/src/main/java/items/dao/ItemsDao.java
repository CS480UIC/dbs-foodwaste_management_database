 package items.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import items.domain.ItemDomain;

//import java.util.ArrayList;
//import java.util.List;

import items.domain.Items;
import items.domain.QueryDomain;
import items.domain.QueryDomain2;
import user.domain.User;

/**
 * DDL functions performed in database
 */
public class ItemsDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "foodwaste_management_database"; //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "CS480_ANI"; //TODO change password

	public Items findByItemID(Integer item_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Items items = new Items();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
		    String sql = "select * from items where item_id=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,item_id);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	Integer item_id1 = Integer.parseInt(resultSet.getString("item_id"));
		    	if(item_id1.equals(item_id)){
		    		items.setItem_expiry_date(java.sql.Date.valueOf(resultSet.getString("item_expiry_date")));
		    		items.setItem_id(Integer.parseInt(resultSet.getString("item_id")));
		    		items.setItem_in_date(java.sql.Date.valueOf(resultSet.getString("item_in_date")));
		    		items.setItem_name(resultSet.getString("item_name"));
		    		items.setItem_price(Integer.parseInt(resultSet.getString("item_price")));
		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return items;
	}	
	
	/**
	 * insert Delivery
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Items form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "insert into items(item_id,item_price,item_name,item_in_date,item_expiry_date) values(?,?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,form.getItem_id());
		    preparestatement.setInt(2,form.getItem_price());
		    preparestatement.setString(3,form.getItem_name());
		    preparestatement.setDate(4,form.getItem_in_date());
		    preparestatement.setDate(5,form.getItem_expiry_date());
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
	public void update(Items form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "UPDATE items SET item_price = ?,item_name=?,item_in_date=?,item_expiry_date=? where item_id = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,form.getItem_price());
			preparestatement.setString(2,form.getItem_name());
		    preparestatement.setDate(3,form.getItem_in_date());
		    preparestatement.setDate(4,form.getItem_expiry_date());
		    preparestatement.setInt(5,form.getItem_id());
		    
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
	public void delete(String item_p) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "delete from items where item_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,Integer.parseInt(item_p));
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	//
	public List<Object> findItemQuery() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		List<Object> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			String sql = "SELECT DISTINCT(item_name),COUNT(*) as count,SUM(item_price) as sum from items\r\n"
					+ "WHERE item_price>120;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			ResultSet resultSet = preparestatement.executeQuery();			
			while(resultSet.next()){
				QueryDomain item_query = new QueryDomain();
				item_query.setItem_name(resultSet.getString("item_name"));
				item_query.setCount(Integer.parseInt(resultSet.getString("count")));
				item_query.setSum(Integer.parseInt(resultSet.getString("sum")));
	    		
	    		
	    		//item_name , count - int , sum - int
	    		list.add(item_query);
			 }
			connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return list;
		
	}
	
	public List<Object> findItemQuery2() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		List<Object> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			String sql = "SELECT CONCAT('modified ',item_name) as concat_string ,LOWER(item_name) as lower_string from items\r\n"
					+ "WHERE item_price>200;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			ResultSet resultSet = preparestatement.executeQuery();			
			while(resultSet.next()){
				QueryDomain2 item_query2 = new QueryDomain2();
				item_query2.setConcat_string(resultSet.getString("concat_string"));
				item_query2.setLower_string(resultSet.getString("lower_string"));	    		
				//concat_string - string , lower_string - string
	    		list.add(item_query2);
			 }
			connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return list;
		
	}

	public List<Object> findItemQuery3() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		List<Object> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			String sql = "SELECT item_id,item_name from items\r\n"
					+ "WHERE item_price>(SELECT item_price from items WHERE item_id=33);";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			ResultSet resultSet = preparestatement.executeQuery();			
			while(resultSet.next()){
				ItemDomain item_query3 = new ItemDomain();			
				item_query3.setItem_id(Integer.parseInt(resultSet.getString("item_id")));
				item_query3.setItem_name(resultSet.getString("item_name"));			
	    		list.add(item_query3);
			 }
			connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return list;
		
	}
}
