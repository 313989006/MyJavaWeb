package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyLoginServletDemo
 */
/*@WebServlet("/Servlet/MyLoginServletDemo")*/
public class MyNewLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD><TITLE>用servlet测试get和post方法</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("<h2>调用了doGet方法</h2><p>");
		out.println("<h2>用户输入信息如下：</h2>");
		String username =request.getParameter("username");
		if (username==null || username=="")
		{
			username="未输入";
		}
		String password =request.getParameter("password");
			if (password==null || password=="")
			{
				password="未输入";
			}
		out.println("<h2>用户名 :" + username + "</h2>");
		out.println("<h2>密 码 :"+ password + "</h2>");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/*	doGet(request, response);*/
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD><TITLE>用servlet测试get和post方法</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("<h2>调用了doPost方法</h2><p>");
		out.println("<h2>用户输入信息如下：</h2>");
		String username =request.getParameter("username");
		if (username==null || username=="")
		{
			username="未输入";
		}
		String password =request.getParameter("password");
			if (password==null || password=="")
			{
				password="未输入";
			}
		out.println("<h2>用户名: "+ username + "</h2>");
		out.println("<h2>密 码 : "+ password + "</h2>");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();
	}

}
