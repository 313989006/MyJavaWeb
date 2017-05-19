package filter;

import java.io.IOException;
import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

/**
 * Servlet Filter implementation class FilterDemo
 */
@WebFilter(
		dispatcherTypes = {
				DispatcherType.REQUEST, 
				DispatcherType.FORWARD, 
				DispatcherType.INCLUDE, 
				DispatcherType.ERROR
		}, 
		servletNames=("DisplayServlet")
		,
		urlPatterns = { "/Filter/FilterDemo" }, 
		initParams = { 
				@WebInitParam(name = "name", value = "charset")
		})
public class FilterDemo implements Filter {

    /**
     * Default constructor. 
     */
    public FilterDemo() {
    }
    /**
     * @see Filter#init(FilterConfig)
     */
    public void init(FilterConfig fConfig) throws ServletException {
    }


	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("老表深不可测");
		chain.doFilter(request, response);
		System.out.println("什么事情老表都能扯");
	}


	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
	}
}
