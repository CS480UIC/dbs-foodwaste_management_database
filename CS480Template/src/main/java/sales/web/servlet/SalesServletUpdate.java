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

import sales.dao.SalesDao;
import sales.domain.Sales;

/**
 * Servlet implementation class UserServlet
 */

public class SalesServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SalesServletUpdate() {
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
		SalesDao salesdao = new SalesDao();
		Sales sales = null;

		if(method.equals("search"))
		{
			try {
				sales = salesdao.findBySaleID(Integer.parseInt(request.getParameter("sale_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(sales.getSale_id()!=null){
				request.setAttribute("sales", sales);
				request.getRequestDispatcher("/jsps/sales/sales_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "sales not found");
				request.getRequestDispatcher("/jsps/sales/sales_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
			Sales form = new Sales();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			//TODO
			form.setSale_id(Integer.parseInt(request.getParameter("sale_id")));
			form.setDaily_sale_amount(Integer.parseInt(request.getParameter("daily_sale_amount")));
			form.setProfit(Integer.parseInt(request.getParameter("profit")));
			form.setSales_report(request.getParameter("sales_report"));
			form.setCurrent_date(java.sql.Date.valueOf(request.getParameter("current_date")));
			form.setRestaurant_id(Integer.parseInt(request.getParameter("restaurant_id")));
						
			try {
				System.out.println("updated sales form");
				salesdao.update(form);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "sales Updated");
			request.getRequestDispatcher("/jsps/sales/sales_read_output.jsp").forward(request, response);
		}
	}
}



