package listenerTest;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionIdListener;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionListenerDemo
 *
 */
@WebListener
public class SessionListenerDemo
		implements HttpSessionAttributeListener, HttpSessionListener, HttpSessionBindingListener, HttpSessionIdListener
{

	/**
	 * Default constructor.
	 */
	public SessionListenerDemo()
	{
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
	 */
	public void sessionCreated(HttpSessionEvent arg0)
	{
		System.out.println("SessionListenerDemo --sessionCreated");
		System.out.println("   创建的session id =" + arg0.getSession().getId());
	}

	/**
	 * @see HttpSessionBindingListener#valueBound(HttpSessionBindingEvent)
	 */
	/*
	 * public void valueBound(HttpSessionBindingEvent arg0) {
	 * 
	 * }
	 */

	/**
	 * @see HttpSessionIdListener#sessionIdChanged(HttpSessionEvent, String)
	 */
	public void sessionIdChanged(HttpSessionEvent arg0, String arg1)
	{
		System.out.println("SessionListenerDemo --sessionIdChanged");
	}

	/**
	 * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
	 */
	public void sessionDestroyed(HttpSessionEvent arg0)
	{
		System.out.println("SessionListenerDemo --sessionDestroyed");
		System.out.println("   销毁的session id =" + arg0.getSession());
	}

	/**
	 * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
	 */
	public void attributeAdded(HttpSessionBindingEvent arg0)
	{
		System.out.println("SessionListenerDemo --attributeAdded");
		System.out.println("   添加属性：" + arg0.getName() + "=" + arg0.getValue());
	}

	/**
	 * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
	 */
	public void attributeRemoved(HttpSessionBindingEvent arg0)
	{
		System.out.println("SessionListenerDemo --attributeRemoved");
		System.out.println("   删除属性：" + arg0.getName());
	}

	/**
	 * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
	 */
	public void attributeReplaced(HttpSessionBindingEvent arg0)
	{
		System.out.println("SessionListenerDemo --attributeReplaced");
		System.out.println("   替换属性之前：" + arg0.getName() + "=" + arg0.getValue());
		System.out.println("   替换属性之后：" + arg0.getName() + "=" + arg0.getSession().getAttribute(arg0.getName()));
	}

	@Override
	public void valueBound(HttpSessionBindingEvent arg0)
	{
		// TODO Auto-generated method stub

	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent arg0)
	{
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpSessionBindingListener#valueUnbound(HttpSessionBindingEvent)
	 */

}
