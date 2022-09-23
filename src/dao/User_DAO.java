package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connectDB.ConnectDB;
import entity.User;


public class User_DAO {
	List<User> list=new ArrayList<>();
	public List<User> getAllUser() {
		List<User> dsUser =new ArrayList<>();
		 try {
	        	ConnectDB.getInstance();
				Connection con= ConnectDB.getConnection();
	            Statement st= con.createStatement();
	            ResultSet rs= st.executeQuery("select * from QLBH.Users;");
				while(rs.next()) {
					String id = rs.getString("Id");
					String password = rs.getString("Password");
					String fullname = rs.getString("Fullname");
					int sdt = rs.getInt("Telephone");
					String email= rs.getString("Email");
					String photo =rs.getString("Photo");
					Boolean activated = rs.getBoolean("Activated");
					int admin = rs.getInt("Admin");
					User u = new User(id, password, fullname, sdt, email, photo,activated,admin);
					dsUser.add(u);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return dsUser;
	}
	public ArrayList<User> getTimVaitro(String tentk){
		ArrayList<User> dstk = new ArrayList<User>();
		try {
			ConnectDB.getInstance();
			Connection con= ConnectDB.getConnection();
            Statement st= con.createStatement();
			ResultSet rsTimKiem= st.executeQuery("Select Id,Password,Admin from QLBH.Users where Id='" + tentk +"' ");
			while(rsTimKiem.next()) {
				String taikhoan =rsTimKiem.getString("Id");
				String matkhau =rsTimKiem.getString("Password");
				int vaitro = rsTimKiem.getInt("Admin");
				User u = new User(taikhoan,matkhau,vaitro);
				dstk.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dstk;
	}
	public boolean create(User u) {
		ConnectDB.getInstance();
		Connection con = ConnectDB.getConnection();
		PreparedStatement stmt = null;
		String sql = "insert into Users values(?, ?, ?, ?, ?,?,?,?)";
		int n = 0;
		try {
			stmt = con.prepareStatement(sql);
			stmt.setString(1, u.getId());
			stmt.setString(2, u.getPassword());
			stmt.setString(3, u.getFullname());
			stmt.setInt(4, u.getTelephone());
			stmt.setString(5, u.getEmail());
			stmt.setString(6, u.getPhoto());
			stmt.setBoolean(7, u.getActivated());
			stmt.setInt(8, u.getAdmin());
			
			n = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return n > 0;
	}
}
