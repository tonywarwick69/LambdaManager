package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import connectDB.ConnectDB;
import entity.Category;

public class Category_DAO {
	List<Category> list = new ArrayList();
	public List<Category> getAllCategory(){
		List<Category> dsdm = new ArrayList();
		try {
        	ConnectDB.getInstance();
			Connection con= ConnectDB.getConnection();
            Statement st= con.createStatement();
            ResultSet rs= st.executeQuery("select * from QLBH.Categories;");
			while(rs.next()) {
				int id = rs.getInt("Id");
				String name= rs.getString("Name");
				String nameVN=rs.getString("NameVN");
				Category c= new Category(id,name,nameVN);
				dsdm.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	return dsdm;
	}
}
