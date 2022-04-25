package offer.service;


import java.util.List;

import offer.dao.OfferDao;
import offer.domain.Offer;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class OfferService {
	private OfferDao offerDao = new OfferDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Offer form) throws OfferException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Offer offer = offerDao.findByOfferID(form.getOffer_id());
		if(offer.getOffer_id()!=null && offer.getOffer_id() == (form.getOffer_id())) throw new OfferException("This Offer ID has been registered!");
		offerDao.add(form);
	}
	
	public List<Object> findall() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return offerDao.findOffers();
		
	}
}
