package delivery.service;


import java.util.List;

import delivery.dao.Delivery1Dao;
import delivery.domain.Delivery;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class DeliveryService {
	private Delivery1Dao deliveryDao = new Delivery1Dao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Delivery form) throws DeliveryException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Delivery delivery = deliveryDao.findByDeliveryID(form.getDelivery_id());
		if(delivery.getDelivery_id()!=null && delivery.getDelivery_id() == (form.getDelivery_id())) throw new DeliveryException("This Delivery ID has been registered!");
		deliveryDao.add(form);
	}

	public List<Object> findall() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return deliveryDao.findall();
		
	}
}
