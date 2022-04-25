package sales.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sales.domain.Sales;
import sales.service.SalesException;
import sales.service.SalesService;


/**
 * Servlet implementation class UserServlet
 */

public class SalesServletCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalesServletCreate() {
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
		SalesService entity1service = new SalesService();
		Map<String,String[]> paramMap = request.getParameterMap();
		Sales form = new Sales();
		List<String> info = new ArrayList<String>();

		for(String name : paramMap.keySet()) {
			String[] values = paramMap.get(name);
			info.add(values[0]);
		}
		form.setSale_id(Integer.parseInt(info.get(0)));
		form.setDaily_sale_amount(Integer.parseInt(info.get(1)));
		form.setProfit(Integer.parseInt(info.get(2)));	
		form.setSales_report(info.get(3));	
		form.setCurrent_date(java.sql.Date.valueOf(info.get(4)));
		form.setRestaurant_id(Integer.parseInt(info.get(5)));		
		
		try {
			entity1service.create(form);
			response.sendRedirect( request.getContextPath() + "/jsps/main.jsp");
			
		} catch (ClassNotFoundException | SalesException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} 
		
	}

}
