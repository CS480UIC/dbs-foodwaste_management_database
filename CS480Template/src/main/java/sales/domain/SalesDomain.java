package sales.domain;

import java.sql.Date;

public class SalesDomain {
	//sale_id - int , current_date - date , profit - int
	//sale_id - int , sales_report - string 

	private Integer sale_id;
	private Date current_date;
	private Integer profit;
	private String sales_report;
	
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
	
	
}
