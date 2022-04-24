package delivery.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.dao.Delivery1Dao;
import delivery.domain.Delivery;


/**
 * Servlet implementation class UserServlet
 */

public class DeliveryServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeliveryServletDelete() {
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
		Delivery1Dao delivery1Dao = new Delivery1Dao();
		Delivery delivery = null;
		if(method.equals("search"))
		{
			try {
				delivery = delivery1Dao.findByDeliveryID(Integer.parseInt(request.getParameter("delivery_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
			if(delivery.getDelivery_cost()!=null){
						System.out.println(delivery);
						request.setAttribute("delivery", delivery);
						request.getRequestDispatcher("/jsps/delivery/delivery_delete_output.jsp").forward(request, response);			
				}
				else{
				request.setAttribute("msg", "Entity not found");
				request.getRequestDispatcher("/jsps/entity1/entity1_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				delivery1Dao.delete(request.getParameter("delivery_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "Delivery Deleted");
			request.getRequestDispatcher("/jsps/delivery/delivery_read_output.jsp").forward(request, response);
		}
	}
}



