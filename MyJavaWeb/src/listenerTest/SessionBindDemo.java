package listenerTest;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 * Application Lifecycle Listener implementation class SessionBindDemo
 *
 */
@WebListener
public class SessionBindDemo implements HttpSessionBindingListener {
	private String name;
	
    /**
     * Default constructor. 
     */
    public SessionBindDemo() {
    	
    }
    

	public SessionBindDemo(String name)
	{
		super();
		this.name = name;
	}


	@Override
	public String toString()
	{
		return "SessionBindDemo [name=" + name + "]";
	}


	/**
     * @see HttpSessionBindingListener#valueBound(HttpSessionBindingEvent)
     */
    public void valueBound(HttpSessionBindingEvent arg0)  { 
         System.out.println("绑定之前#####" + arg0.getName()+ " = " + arg0.getValue());
    }

	/**
     * @see HttpSessionBindingListener#valueUnbound(HttpSessionBindingEvent)
     */
    public void valueUnbound(HttpSessionBindingEvent arg0)  { 
    	System.out.println("解绑之后@@@@" + arg0.getName());
    }
	
}
