package delivery.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.service.DeliveryService;

/**
 * Servlet implementation class findAll
 */

public class DeliveryQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DeliveryService deliveryservice = new DeliveryService();
		try {
			request.setAttribute("DeliveryList", deliveryservice.findall());
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			List<Object> li = deliveryservice.findall();
			for(int i = 0; i < li.size();i++){
				System.out.println(li.get(i).toString());
			}
			
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
		request.getRequestDispatcher("/jsps/delivery/q7_list_delivery.jsp").forward(request, response);
	}

}
