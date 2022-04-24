package employee.service;


import employee.dao.EmployeeDao;
import employee.domain.Employee;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class EmployeeService {
	private EmployeeDao employeeDao = new EmployeeDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Employee form) throws EmployeeException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Employee employee = employeeDao.findByEmployeeID(form.getEmployee_id());
		if(employee.getEmployee_id()!=null && employee.getEmployee_id() == (form.getEmployee_id())) throw new EmployeeException("This Employee ID has been registered!");
		employeeDao.add(form);
	}
}
