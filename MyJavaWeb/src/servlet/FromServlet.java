package servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FromServlet
 */
@WebServlet("/Servlet/FromServlet")
public class FromServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FromServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		//用系统时间的总毫秒数设置三种不同作用域对象的值
		String str =""+ new Date().getTime();//先转换为String类型
		request.setAttribute("fromRequest", str);
		HttpSession session =request.getSession();
		session.setAttribute("fromSession", str);
		ServletContext context=getServletConfig().getServletContext();
		context.setAttribute("fromContext", str);
		context.getRequestDispatcher("/Servlet/DisplayServlet").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
