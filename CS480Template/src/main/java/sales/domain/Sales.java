package sales.domain;

import java.sql.Date;

/**
 * Delivery object
 * 
 * @author Ajay Marampalli
 * 
 */
public class Sales {
	/*
	 * Correspond to the user table
	 */
	
	private Integer sale_id;
	private Integer daily_sale_amount;
	private Integer profit;
	private String sales_report;
	private Date current_date;
	private Integer restaurant_id;
	/**
	 * @return the sale_id
	 */
	public Integer getSale_id() {
		return sale_id;
	}
	/**
	 * @param sale_id the sale_id to set
	 */
	public void setSale_id(Integer sale_id) {
		this.sale_id = sale_id;
	}
	/**
	 * @return the daily_sale_amount
	 */
	public Integer getDaily_sale_amount() {
		return daily_sale_amount;
	}
	/**
	 * @param daily_sale_amount the daily_sale_amount to set
	 */
	public void setDaily_sale_amount(Integer daily_sale_amount) {
		this.daily_sale_amount = daily_sale_amount;
	}
	/**
	 * @return the profit
	 */
	public Integer getProfit() {
		return profit;
	}
	/**
	 * @param profit the profit to set
	 */
	public void setProfit(Integer profit) {
		this.profit = profit;
	}
	/**
	 * @return the sales_report
	 */
	public String getSales_report() {
		return sales_report;
	}
	/**
	 * @param sales_report the sales_report to set
	 */
	public void setSales_report(String sales_report) {
		this.sales_report = sales_report;
	}
	/**
	 * @return the current_date
	 */
	public Date getCurrent_date() {
		return current_date;
	}
	/**
	 * @param current_date the current_date to set
	 */
	public void setCurrent_date(Date current_date) {
		this.current_date = current_date;
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
