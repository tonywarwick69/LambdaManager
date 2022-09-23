package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import connectDB.ConnectDB;

import entity.OrderDetail;

public class OrderDetail_DAO {
	List<OrderDetail> list = new ArrayList();
	public List<OrderDetail> getAllOrderDetail(){
		List<OrderDetail> dsHD = new ArrayList();
		try {
        	ConnectDB.getInstance();
			Connection con= ConnectDB.getConnection();
            Statement st= con.createStatement();
            ResultSet rs= st.executeQuery("select * from QLBH.OrderDetails;");
			while(rs.next()) {
				Integer id = rs.getInt("Id");
				Integer orderid = rs.getInt("OrderId");
				Integer ProductId = rs.getInt("ProductId");
				Double price = rs.getDouble("UnitPrice");
				int Quantity =rs.getInt("Quantity");
				Double Discount = rs.getDouble("Discount");
				OrderDetail o = new OrderDetail(id, orderid, ProductId, price, Quantity, Discount);
				dsHD.add(o);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	return dsHD;
	}
	public ArrayList<OrderDetail> getTimKiemTheoMaHD(int ma){
		ArrayList<OrderDetail> dshd = new ArrayList<OrderDetail>();
		try {
			ConnectDB.getInstance();
			Connection con= ConnectDB.getConnection();
            Statement st= con.createStatement();
			ResultSet rs= st.executeQuery("select * from QLBH.OrderDetails where OrderId= '" + ma +"' ");
			while(rs.next()) {
				int macthd = rs.getInt("Id");
				int mahd= rs.getInt("OrderId");
				int masp = rs.getInt("ProductId");
				Double dongia=rs.getDouble("UnitPrice");
				Integer sl =rs.getInt("Quantity");
				Double km = rs.getDouble("discount");
				OrderDetail od = new OrderDetail(macthd,mahd,masp,dongia,sl,km);
				dshd.add(od);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return dshd;
	}
}
