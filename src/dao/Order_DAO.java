package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import connectDB.ConnectDB;
import entity.Order;

public class Order_DAO {
	List<Order> list = new ArrayList();
	public List<Order> getAllOrder(){
		List<Order> dsHD = new ArrayList();
		try {
        	ConnectDB.getInstance();
			Connection con= ConnectDB.getConnection();
            Statement st= con.createStatement();
            ResultSet rs= st.executeQuery("select * from QLBH.Orders;");
			while(rs.next()) {
				Integer id = rs.getInt("Id");
				String userId = rs.getString("UserId");
				Date orderDate = rs.getDate("OrderDate");
				String sdt = rs.getString("Telephone");
				String address= rs.getString("Address");
				Double amount =rs.getDouble("Amount");
				String description = rs.getString("Description");
				Integer status = rs.getInt("Status");
				Order o = new Order(id, userId, orderDate, sdt, address, amount,description,status);
				dsHD.add(o);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	return dsHD;
	}

}
