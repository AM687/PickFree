
package pickfree;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;





public class dbServletListener implements ServletContextListener {


    @Override
    public void contextInitialized(ServletContextEvent event) {
        ServletContext sc = event.getServletContext();
 
    	String dbUrl = sc.getInitParameter("dbUrl");
    	String dbUser = sc.getInitParameter("dbUser");
    	String dbPass = sc.getInitParameter("dbPass");
    	String database = sc.getInitParameter("database");
    	
        Database db = new Database(dbUrl + database, dbUser, dbPass);
    	
    	sc.setAttribute("db", db);
    }


    @Override
    public void contextDestroyed(ServletContextEvent arg0) {
    }
}
