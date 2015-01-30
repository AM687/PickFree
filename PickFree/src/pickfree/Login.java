
package pickfree;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static pickfree.SignUp.md5;


public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        password = md5(password);
        
        Database db = (Database) getServletContext().getAttribute("db");
        String sql = "SELECT * FROM users WHERE username=? AND password=?";
        
        PreparedStatement ps;
        ResultSet rs;
        
        try{
            ps = db.prepareSql(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            
            rs = ps.executeQuery();
            
            if(rs.next()){
                HttpSession session = request.getSession();
                session.setAttribute("user", username);
                
                RequestDispatcher rd = request.getRequestDispatcher("Contribute.jsp");
                rd.forward(request, response);
            }
            else{
                RequestDispatcher rd = request.getRequestDispatcher("InvalidUser.jsp");
                rd.forward(request, response);
            }
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
        
        
    }


 
}
