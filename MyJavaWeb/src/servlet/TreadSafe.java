package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TreadSafe
 */
//解决线程安全问题：增加synchnorized关键字让方法同步
@WebServlet("/Servlet/TreadSafe")
public class TreadSafe extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String name="";//实例变量，多线程共享
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TreadSafe() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<head><title>Servlet线程安全问题</title></head>");
		out.println("<body>");
		String username=request.getParameter("username");
		name=new String(username.getBytes("iso-8859-1"),"UTF-8");
		try {
			Thread.sleep(3000);//休眠3秒
		} catch (Exception e) {
			e.printStackTrace();
		}
		out.println("<h3>您好，"+ name + "!</h3>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
