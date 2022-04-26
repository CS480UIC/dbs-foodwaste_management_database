package employee.domain;

import java.sql.Date;

public class EmployeeDomain {

	//employee_id - int , employee_contact - string, employee_join_date - date , restaurant_id - int 
	
	private Integer employee_id;
	private String employee_contact;
	private Date employee_join_date;
	private Integer restaurant_id;
	/**
	 * @return the employee_id
	 */
	public Integer getEmployee_id() {
		return employee_id;
	}
	/**
	 * @param employee_id the employee_id to set
	 */
	public void setEmployee_id(Integer employee_id) {
		this.employee_id = employee_id;
	}
	/**
	 * @return the employee_contact
	 */
	public String getEmployee_contact() {
		return employee_contact;
	}
	/**
	 * @param employee_contact the employee_contact to set
	 */
	public void setEmployee_contact(String employee_contact) {
		this.employee_contact = employee_contact;
	}
	/**
	 * @return the employee_join_date
	 */
	public Date getEmployee_join_date() {
		return employee_join_date;
	}
	/**
	 * @param employee_join_date the employee_join_date to set
	 */
	public void setEmployee_join_date(Date employee_join_date) {
		this.employee_join_date = employee_join_date;
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
