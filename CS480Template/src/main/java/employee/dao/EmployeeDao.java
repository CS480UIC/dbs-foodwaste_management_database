 package employee.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;




//import java.util.ArrayList;
//import java.util.List;

import employee.domain.Employee;
import employee.domain.EmployeeDomain;
import user.domain.User;

/**
 * DDL functions performed in database
 */
public class EmployeeDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "foodwaste_management_database"; //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "CS480_ANI"; //TODO change password

	public Employee findByEmployeeID(Integer employee_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Employee employee = new Employee();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
		    String sql = "select * from employee where employee_id=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,employee_id);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	Integer employee_id1 = Integer.parseInt(resultSet.getString("employee_id"));
		    	if(employee_id1.equals(employee_id)){
		    		employee.setEmployee_contact(resultSet.getString("employee_contact"));
		    		employee.setEmployee_id(Integer.parseInt(resultSet.getString("employee_id")));
		    		employee.setEmployee_join_date(java.sql.Date.valueOf(resultSet.getString("employee_join_date")));
		    		employee.setRestaurant_id(employee_id1);
		    		
		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return employee;
	}	
	
	/**
	 * insert Delivery
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Employee form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "insert into employee(employee_id,employee_contact,employee_join_date,restaurant_id) values(?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,form.getEmployee_id());
		    preparestatement.setString(2,form.getEmployee_contact());
		    preparestatement.setDate(3,form.getEmployee_join_date());
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
	public void update(Employee form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "UPDATE employee SET employee_contact = ?,employee_join_date=? where employee_id = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,form.getEmployee_contact());
			preparestatement.setDate(2,form.getEmployee_join_date());
		    preparestatement.setInt(3,form.getEmployee_id());
		    
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
	public void delete(String employee_p) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			
			String sql = "delete from employee where employee_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,Integer.parseInt(employee_p));
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Object> findEmployee() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		List<Object> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dbs_foodwaste_management_database", MySQL_user, MySQL_password);
			String sql = "SELECT * from employee \r\n"
					+ "ORDER by employee_join_date;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			ResultSet resultSet = preparestatement.executeQuery();			
			while(resultSet.next()){
				EmployeeDomain employee = new EmployeeDomain();
				
				employee.setEmployee_id(Integer.parseInt(resultSet.getString("employee_id")));
				employee.setEmployee_contact(resultSet.getString("employee_contact"));
				employee.setEmployee_join_date(java.sql.Date.valueOf(resultSet.getString("employee_join_date")));
				employee.setRestaurant_id(Integer.parseInt(resultSet.getString("restaurant_id")));
				list.add(employee);	    		
			 }
			connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return list;
		
	}
}
