package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connectDB.ConnectDB;

import entity.Product;

public class Product_DAO {
	List<Product> list=new ArrayList<>();
	public List<Product> getAllProduct() {
		List<Product> dsHang =new ArrayList<>();
		 try {
	        	ConnectDB.getInstance();
				Connection con= ConnectDB.getConnection();
	            Statement st= con.createStatement();
	            ResultSet rs= st.executeQuery("select * from QLBH.Products;");
				while(rs.next()) {
					int mahang = rs.getInt("Id");
					String tenhang = rs.getString("Name");
					Double dongia = rs.getDouble("UnitPrice");
					String image = rs.getString("Image");
					Date date= rs.getDate("ProductDate");
					Boolean available =rs.getBoolean("Available");
					int categoryid = rs.getInt("CategoryId");
					int soluong = rs.getInt("Quantity");
					String desc = rs.getString("Description");
					Double discount = rs.getDouble("Discount");
					int views= rs.getInt("ViewCount");
					Boolean special = rs.getBoolean("Special");
					Product p = new Product(mahang, tenhang, dongia, image, date, available,categoryid,soluong,desc,discount,views,special);
					dsHang.add(p);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return dsHang;
	}
	public boolean deleteProduct(int id) {
		ConnectDB.getInstance();
		Connection con = ConnectDB.getConnection();
		PreparedStatement stmt = null;
		String sql = "DELETE FROM Products WHERE Id = '" + id + "'";
		int n = 0;
		try {
			stmt = con.prepareStatement(sql);
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
