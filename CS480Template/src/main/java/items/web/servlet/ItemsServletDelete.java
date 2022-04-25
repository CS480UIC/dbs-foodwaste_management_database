package items.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import items.dao.ItemsDao;
import items.domain.Items;


/**
 * Servlet implementation class UserServlet
 */

public class ItemsServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemsServletDelete() {
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
		ItemsDao itemsDao = new ItemsDao();
		Items items = null;
		if(method.equals("search"))
		{
			try {
				items = itemsDao.findByItemID(Integer.parseInt(request.getParameter("item_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
			if(items.getItem_name()!=null){
						System.out.println("employee");
						request.setAttribute("items", items);
						request.getRequestDispatcher("/jsps/items/items_delete_output.jsp").forward(request, response);			
				}
				else{
				request.setAttribute("msg", "items not found");
				request.getRequestDispatcher("/jsps/items/items_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				itemsDao.delete(request.getParameter("item_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "items Deleted");
			request.getRequestDispatcher("/jsps/items/items_read_output.jsp").forward(request, response);
		}
	}
}



