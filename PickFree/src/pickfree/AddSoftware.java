
package pickfree;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddSoftware extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String os = request.getParameter("os");
        String level = request.getParameter("level");
        String functionality = request.getParameter("functionality");
        String url = request.getParameter("url");
        String description = request.getParameter("description");
        
        Database db = (Database) getServletContext().getAttribute("db");
        String sql = "INSERT INTO software (id, name, os, level, functionality, url, description) VALUES (NULL,?,?,?,?,?,?)";
        
        PreparedStatement ps;
        
        try{
            ps = db.prepareSql(sql);
            ps.setString(1, name);
            ps.setString(2, os);
            ps.setString(3, level);
            ps.setString(4, functionality);
            ps.setString(5, url);
            ps.setString(6, description);
            
            ps.executeUpdate();

            RequestDispatcher rd = request.getRequestDispatcher("SuccesfullAddition.jsp");
            rd.forward(request, response);    
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
        
        
    }

 
}
