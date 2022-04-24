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

import delivery.dao.Delivery1Dao;
import delivery.domain.Delivery;

/**
 * Servlet implementation class UserServlet
 */

public class DeliveryServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeliveryServletUpdate() {
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
		Delivery1Dao deliverydao = new Delivery1Dao();
		Delivery delivery = null;

		if(method.equals("search"))
		{
			try {
				delivery = deliverydao.findByDeliveryID(Integer.parseInt(request.getParameter("delivery_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(delivery.getDelivery_id()!=null){
				request.setAttribute("delivery", delivery);
				request.getRequestDispatcher("/jsps/delivery/delivery_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "Delivery not found");
				request.getRequestDispatcher("/jsps/delivery/delivery_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
			Delivery form = new Delivery();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			//TODO
			form.setDelivery_id(Integer.parseInt(request.getParameter("delivery_id")));
			form.setDelivery_date_time(java.sql.Date.valueOf(request.getParameter("delivery_date_time")));
			form.setDelivery_address(request.getParameter("delivery_address"));	
			form.setDelivery_cost(Integer.parseInt(request.getParameter("delivery_cost")));	

			try {
				System.out.println("updated delivery form");
				deliverydao.update(form);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "Delivery Updated");
			request.getRequestDispatcher("/jsps/delivery/delivery_read_output.jsp").forward(request, response);
		}
	}
}



