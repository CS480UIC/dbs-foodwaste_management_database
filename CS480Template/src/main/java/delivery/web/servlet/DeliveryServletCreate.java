package delivery.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.domain.Delivery;
import delivery.service.DeliveryException;
import delivery.service.DeliveryService;


/**
 * Servlet implementation class UserServlet
 */

public class DeliveryServletCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeliveryServletCreate() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DeliveryService entity1service = new DeliveryService();
		Map<String,String[]> paramMap = request.getParameterMap();
		Delivery form = new Delivery();
		List<String> info = new ArrayList<String>();

		for(String name : paramMap.keySet()) {
			String[] values = paramMap.get(name);
			info.add(values[0]);
		}
		form.setDelivery_id(Integer.parseInt(info.get(0)));
		form.setDelivery_date_time(java.sql.Date.valueOf(info.get(1)));
		form.setDelivery_address(info.get(2));	
		form.setDelivery_cost(Integer.parseInt(info.get(3)));	
		form.setRestaurant_id(Integer.parseInt(info.get(4)));	
		
		
		
		
		try {
			entity1service.create(form);
			response.sendRedirect( request.getContextPath() + "/jsps/main.jsp");
			
		} catch (ClassNotFoundException | DeliveryException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} 
		
	}

}
