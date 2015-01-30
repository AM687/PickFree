
package pickfree;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SignUp extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        
        Database db = (Database) getServletContext().getAttribute("db");
        String sql = "SELECT * FROM users WHERE username=? OR email=?";
        
        PreparedStatement ps;
        ResultSet rs;
        
        try{
            ps = db.prepareSql(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            
            rs = ps.executeQuery();
            
            if(rs.next()){
                RequestDispatcher rd = request.getRequestDispatcher("UserExists.jsp");
                rd.forward(request, response);
            }
            else{
                sql = "INSERT INTO users (id, username, password, email) VALUES (NULL,?,?,?)";
                ps = db.prepareSql(sql);
                ps.setString(1, username);
                ps.setString(2, password);
                ps.setString(3, email);
                ps.executeUpdate();
                
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                rd.forward(request, response);
            }
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
        
        
    }

 
}
