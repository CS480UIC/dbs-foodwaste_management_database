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

import restaurant.dao.RestaurantDao;
import restaurant.domain.Restaurant;

/**
 * Servlet implementation class UserServlet
 */

public class RestaurantServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RestaurantServletUpdate() {
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

		String method = request.getParameter("method");
		RestaurantDao restaurantdao = new RestaurantDao();
		Restaurant restaurant = null;

		if(method.equals("search"))
		{
			try {
				restaurant = restaurantdao.findByRestaurantID(Integer.parseInt(request.getParameter("restaurant_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(restaurant.getRestaurant_address()!=null){
				request.setAttribute("restaurant", restaurant);
				request.getRequestDispatcher("/jsps/restaurant/restaurant_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "restaurant not found");
				request.getRequestDispatcher("/jsps/restaurant/restaurant_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
			Restaurant form = new Restaurant();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			//TODO
			form.setRestaurant_id(Integer.parseInt(request.getParameter("restaurant_id")));
			form.setStart_time(java.sql.Time.valueOf(request.getParameter("start_time")));
			form.setEnd_time(java.sql.Time.valueOf(request.getParameter("end_time")));
			form.setRestaurant_address(request.getParameter("restaurant_address"));
			form.setRestaurant_contact(request.getParameter("restaurant_contact"));
			form.setRestaurant_name(request.getParameter("restaurant_name"));
			
			try {
				System.out.println("updated restaurant form");
				restaurantdao.update(form);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "restaurant Updated");
			request.getRequestDispatcher("/jsps/restaurant/restaurant_read_output.jsp").forward(request, response);
		}
	}
}



