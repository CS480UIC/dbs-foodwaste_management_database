package offer.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import offer.dao.OfferDao;
import offer.domain.Offer;

/**
 * Servlet implementation class UserServlet
 */

public class OfferServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OfferServletUpdate() {
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
		OfferDao offerdao = new OfferDao();
		Offer offer = null;

		if(method.equals("search"))
		{
			try {
				offer = offerdao.findByOfferID(Integer.parseInt(request.getParameter("offer_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(offer.getOffer_item_name()!=null){
				request.setAttribute("offer", offer);
				request.getRequestDispatcher("/jsps/offers/offers_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "offer not found");
				request.getRequestDispatcher("/jsps/offers/offers_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
			Offer form = new Offer();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			//TODO
			form.setOffer_id(Integer.parseInt(request.getParameter("offer_id")));
			form.setPercentage_discount(Integer.parseInt(request.getParameter("percentage_discount")));
			form.setOffer_item_name(request.getParameter("offer_item_name"));
			form.setRestaurant_id(Integer.parseInt(request.getParameter("restaurant_id")));
			
			
			try {
				System.out.println("updated offer form");
				offerdao.update(form);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "offer Updated");
			request.getRequestDispatcher("/jsps/offers/offers_read_output.jsp").forward(request, response);
		}
	}
}



