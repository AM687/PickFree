
package pickfree;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Database {
    private Connection conn = null;
    
    public Database(String url, String user_name, String password) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            this.conn = DriverManager.getConnection(url, user_name, password);
	} 
        catch (ClassNotFoundException e) {
            e.printStackTrace();
	} 
        catch (SQLException e) {
            e.printStackTrace();
	}
    }
 
    public Connection getConnection() {
        return this.conn;
    }
 
    public ResultSet runSql(String sql) throws SQLException {
	Statement sta = conn.createStatement();
	return sta.executeQuery(sql);
    }
    
    public PreparedStatement prepareSql(String sql) throws SQLException {
        PreparedStatement ps =conn.prepareStatement(sql);
	return ps;
    }
}
