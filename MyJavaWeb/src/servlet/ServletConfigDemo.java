package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletConfigDemo
 */
/*@WebServlet("/Servlet/ServletConfigDemo")*/
public class ServletConfigDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String myInstitute=null;
	private String myMajor=null;
	private int count=0;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		myInstitute =config.getInitParameter("MyInstitute");
		if (myInstitute ==null)
		{
			myInstitute="";
		}
		myMajor =config.getInitParameter("MyMajor");
		if (myMajor ==null)
		{
			myMajor ="";
		}
		String strcount=config.getInitParameter("count");
		try
		{
			count = Integer.parseInt(strcount);
		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		//response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");//设定文档类型及字符集
		PrintWriter out=response.getWriter();//得到输出字符输出流
		out.println("<HTML>");
		out.println("<HEAD><TITLE>获取初始化参数</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("<H3>所在学院："+ myInstitute + "<H3>");
		out.println("<H3>所学专业："+ myMajor + "<H3>");
		count++;
		out.println("<H3>此Servlet所访问的次数："+ count + "<H3>");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
