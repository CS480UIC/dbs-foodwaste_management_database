package restaurant.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import restaurant.dao.RestaurantDao;
import restaurant.domain.Restaurant;


/**
 * Servlet implementation class UserServlet
 */

public class RestaurantServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestaurantServletDelete() {
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
		RestaurantDao restaurantDao = new RestaurantDao();
		Restaurant restaurant = null;
		if(method.equals("search"))
		{
			try {
				restaurant = restaurantDao.findByRestaurantID(Integer.parseInt(request.getParameter("restaurant_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
			if(restaurant.getRestaurant_address()!=null){
						System.out.println(restaurant);
						request.setAttribute("restaurant", restaurant);
						request.getRequestDispatcher("/jsps/restaurant/restaurant_delete_output.jsp").forward(request, response);			
				}
				else{
				request.setAttribute("msg", "Entity not found");
				request.getRequestDispatcher("/jsps/restaurant/restaurant_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				restaurantDao.delete(request.getParameter("restaurant_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "Restaurant Deleted");
			request.getRequestDispatcher("/jsps/restaurant/restaurant_read_output.jsp").forward(request, response);
		}
	}
}



