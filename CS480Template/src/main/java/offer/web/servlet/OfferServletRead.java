package offer.web.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import offer.dao.OfferDao;
import offer.domain.Offer;


/**
 * Servlet implementation class UserServlet
 */

public class OfferServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OfferServletRead() {
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
		Offer offer = null;
		OfferDao offerDao = new OfferDao();
		
		try {
			offer = offerDao.findByOfferID(Integer.parseInt(request.getParameter("offer_id")));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(offer.getOffer_item_name()!=null){
					System.out.println(offer);
					request.setAttribute("offer", offer);
					request.getRequestDispatcher("/jsps/offers/offers_read_output.jsp").forward(request, response);
			}
			else{
			request.setAttribute("msg", "offer not found");
			request.getRequestDispatcher("/jsps/offers/offers_read_output.jsp").forward(request, response);
		}
	}
}



