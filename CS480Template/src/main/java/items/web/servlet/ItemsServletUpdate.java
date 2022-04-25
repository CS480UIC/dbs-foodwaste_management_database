package items.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import items.dao.ItemsDao;
import items.domain.Items;

/**
 * Servlet implementation class UserServlet
 */

public class ItemsServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ItemsServletUpdate() {
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
		ItemsDao itemsdao = new ItemsDao();
		Items items = null;

		if(method.equals("search"))
		{
			try {
				items = itemsdao.findByItemID(Integer.parseInt(request.getParameter("item_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(items.getItem_name()!=null){
				request.setAttribute("items", items);
				request.getRequestDispatcher("/jsps/items/items_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "items not found");
				request.getRequestDispatcher("/jsps/items/items_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
			Items form = new Items();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			//TODO
			form.setItem_id(Integer.parseInt(request.getParameter("item_id")));
			form.setItem_price(Integer.parseInt(request.getParameter("item_price")));
			form.setItem_name(request.getParameter("item_name"));
			form.setItem_in_date(java.sql.Date.valueOf(request.getParameter("item_in_date")));
			form.setItem_expiry_date(java.sql.Date.valueOf(request.getParameter("item_expiry_date")));
			
			try {
				System.out.println("updated items form");
				itemsdao.update(form);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "items Updated");
			request.getRequestDispatcher("/jsps/items/items_read_output.jsp").forward(request, response);
		}
	}
}



