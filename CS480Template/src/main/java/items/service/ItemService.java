package items.service;


import items.dao.ItemsDao;
import items.domain.Items;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class ItemService {
	private ItemsDao itemsDao = new ItemsDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Items form) throws EmployeeException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Items items = itemsDao.findByItemID(form.getItem_id());
		if(items.getItem_id()!=null && items.getItem_id() == (form.getItem_id())) throw new EmployeeException("This Item ID has been registered!");
		itemsDao.add(form);
	}
}
