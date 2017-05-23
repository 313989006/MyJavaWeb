package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ABCHomePage
 */
//@WebServlet("/Servlet/ABCHomePage")
public class ABCHomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ABCHomePage() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD>");
		out.println("<TITLE>ABC公司主页</TITLE>");
		out.println("</HEAD>");
		out.println("<BODY>");
		ServletContext context=getServletContext();
		
		RequestDispatcher rd=context.getRequestDispatcher("/servlet/HeaderServlet");
		rd.include(request, response);
		//rd.forward(request, response);
		
		out.println("<font size=4 color='#000099'>");
		out.println("&nbsp;&nbsp;ABC Limitted founded in 1890 is a multinational company spread across six nations.<BR><BR>");
		out.println("We deal with garment export online sales of designer wares.<BR><BR>");
		out.println("To have a look at our fascinating collection check out at <a href='www.abcdesign.com'>ABC Designs</a></font><BR><BR>");
		rd=context.getRequestDispatcher("/Servlet/Footer.html");
		rd.include(request, response);
		//rd.forward(request, response);
		out.println("</HEAD>");
		out.println("</HTML>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
