package restaurant.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import restaurant.domain.Restaurant;
import restaurant.service.RestaurantException;
import restaurant.service.RestaurantService;


/**
 * Servlet implementation class UserServlet
 */

public class RestaurantServletCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestaurantServletCreate() {
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
		RestaurantService entity1service = new RestaurantService();
		Map<String,String[]> paramMap = request.getParameterMap();
		Restaurant form = new Restaurant();
		List<String> info = new ArrayList<String>();

		for(String name : paramMap.keySet()) {
			String[] values = paramMap.get(name);
			info.add(values[0]);
		}
		form.setRestaurant_id(Integer.parseInt(info.get(0)));
		form.setStart_time(java.sql.Time.valueOf(info.get(1)));
		form.setEnd_time(java.sql.Time.valueOf(info.get(2)));	
		form.setRestaurant_address((info.get(3)));	
		form.setRestaurant_contact((info.get(4)));
		form.setRestaurant_name((info.get(5)));
		
		try {
			entity1service.create(form);
			response.sendRedirect( request.getContextPath() + "/jsps/main.jsp");
			
		} catch (ClassNotFoundException | RestaurantException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} 
		
	}

}
