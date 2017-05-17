package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EnterDemo
 */
@WebServlet("/Servlet/EnterDemo")
public class EnterDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnterDemo() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		response.setContentType("text/html;charset=UTF-8");
		String name=request.getParameter("username");
		String pwd=request.getParameter("password");
		if ("zhangsan".equals(name)&&"123456".equals(pwd)) {
			ServletContext context=getServletContext();
			//得到RequestDispatcher对象，调用forward()
			RequestDispatcher rd=context.getRequestDispatcher("/Servlet/welcome.html");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd1=request.getRequestDispatcher("/Servlet/LoginDemo");
			rd1.include(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
