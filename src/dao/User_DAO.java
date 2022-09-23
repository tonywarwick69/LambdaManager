package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
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
					String sdt = rs.getString("Telephone");
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
}
