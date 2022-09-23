package connectDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	public static Connection con = null;
	private static ConnectDB instance = new ConnectDB();
	
	
	public static ConnectDB getInstance() {
		return instance;
	}
	public void connect() throws SQLException {
		con = DriverManager.getConnection("jdbc:mysql://awseb-e-m2myz3mhwg-stack-awsebrdsdatabase-s6qb6q4thnim.cq6prej213eb.ap-southeast-1.rds.amazonaws.com:3306/QLBH", 
				"sa", "sapassword");
	}
	
	public void disconnect() {
		if(con != null)
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public static Connection getConnection() {
		return con;
	}
}
