package sales.service;


import java.util.List;

import sales.dao.SalesDao;
import sales.domain.Sales;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class SalesService {
	private SalesDao salesDao = new SalesDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Sales form) throws SalesException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Sales sales = salesDao.findBySaleID(form.getSale_id());
		if(sales.getSale_id()!=null && sales.getSale_id() == (form.getSale_id())) throw new SalesException("This Sale ID has been registered!");
		salesDao.add(form);
	}
	public List<Object> findSalesQuery() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return salesDao.findSalesQuery();
		
	}
	public List<Object> findall() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return salesDao.findall();
		
	}
}
