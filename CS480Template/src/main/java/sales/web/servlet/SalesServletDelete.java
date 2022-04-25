package sales.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sales.dao.SalesDao;
import sales.domain.Sales;


/**
 * Servlet implementation class UserServlet
 */

public class SalesServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalesServletDelete() {
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
		SalesDao salesDao = new SalesDao();
		Sales sales = null;
		if(method.equals("search"))
		{
			try {
				sales = salesDao.findBySaleID(Integer.parseInt(request.getParameter("sale_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
			if(sales.getSale_id()!=null){
						System.out.println(sales);
						request.setAttribute("sales", sales);
						request.getRequestDispatcher("/jsps/sales/sales_delete_output.jsp").forward(request, response);			
				}
				else{
				request.setAttribute("msg", "sales not found");
				request.getRequestDispatcher("/jsps/sales/sales_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				salesDao.delete(request.getParameter("sale_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "sales Deleted");
			request.getRequestDispatcher("/jsps/sales/sales_read_output.jsp").forward(request, response);
		}
	}
}



