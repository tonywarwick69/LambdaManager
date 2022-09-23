package gui;

import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;

import connectDB.ConnectDB;
import dao.Category_DAO;
import dao.OrderDetail_DAO;
import dao.Order_DAO;
import entity.Category;
import entity.Order;
import entity.OrderDetail;

import javax.swing.JButton;
import javax.swing.JSeparator;
import javax.swing.JTable;

public class OrderDetailPage extends JFrame {

	private JPanel contentPane;
	private DefaultTableModel model;
	private JTable tableOrder;
	private OrderDetail_DAO odao;
	private JLabel lblOrderId;
	private JLabel lblID,lblProductID,lblPrice,lblQuantity,lblDiscount, lblTotal;
	 DecimalFormat df = new DecimalFormat("#0.00");
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					OrderDetailPage frame = new OrderDetailPage();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	public void receive_Order(String OrderId) {
		lblOrderId.setText(OrderId);
		
	}
	/**
	 * Create the frame.
	 */
	public OrderDetailPage() {
		setTitle("LambdaBuy");
		try {
			ConnectDB.getInstance().connect();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		odao=new OrderDetail_DAO();
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1384, 617);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel pMenu = new JPanel();
		pMenu.setBounds(0, 0, 195, 580);
		contentPane.add(pMenu);
		pMenu.setLayout(null);
		
		JButton btnOrder = new JButton("Quay lại");
		btnOrder.setBounds(0, 0, 195, 65);
		btnOrder.setFont(new Font("Tahoma", Font.BOLD, 15));
		pMenu.add(btnOrder);
		
		JPanel pContent = new JPanel();
		pContent.setBounds(198, 0, 1162, 580);
		contentPane.add(pContent);
		pContent.setLayout(null);
		
		JLabel lblTItle = new JLabel("Chi tiết đơn hàng số");
		lblTItle.setHorizontalAlignment(SwingConstants.CENTER);
		lblTItle.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblTItle.setBounds(280, 7, 280, 62);
		pContent.add(lblTItle);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(10, 68, 1127, 1);
		pContent.add(separator);
		
		btnOrder.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				OrderManagerPage om = new OrderManagerPage();
				om.setVisible(true);
				dispose();
			}
		});
		btnOrder.setFont(new Font("Tahoma", Font.BOLD, 15));
		pMenu.add(btnOrder);
		
		JButton btnNewButton = new JButton("Chi tiết hóa đơn");
		btnNewButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				DocDuLieuVaoTable();
				Double tongtien=0.0;
				int row = tableOrder.getSelectedRow();
				List<OrderDetail> list = odao.getTimKiemTheoMaHD(Integer.valueOf(lblOrderId.getText().toString()));
				for(OrderDetail o:list) {
					tongtien=tongtien+o.getUnitPrice();
				}
				lblTotal.setText(df.format(tongtien)+"");
				
			}
		});
		btnNewButton.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnNewButton.setBounds(0, 64, 195, 74);
		pMenu.add(btnNewButton);
		
		 lblOrderId = new JLabel("");
		 lblOrderId.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblOrderId.setBounds(560, 7, 145, 62);
		pContent.add(lblOrderId);
		
		JLabel lblLambdaBuy = new JLabel("LambdaBuy");
		lblLambdaBuy.setHorizontalAlignment(SwingConstants.CENTER);
		lblLambdaBuy.setFont(new Font("Tahoma", Font.BOLD, 20));
		lblLambdaBuy.setBounds(418, 68, 213, 69);
		pContent.add(lblLambdaBuy);
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 144, 1152, 385);
		pContent.add(scrollPane);
		
		tableOrder = new JTable();
		
		scrollPane.setColumnHeaderView(tableOrder);
		tableOrder.setModel(model = new DefaultTableModel(
				new Object[][] {
					
				},
				new String[] {
						"ID","Mã đơn hàng","Mã sản phẩm","Đơn giá","Số lượng","Khuyến mãi"
				}
				));
		scrollPane.setViewportView(tableOrder);
		
		JLabel lblTTotal = new JLabel("Tổng tiền ");
		lblTTotal.setHorizontalAlignment(SwingConstants.CENTER);
		lblTTotal.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblTTotal.setBounds(0, 539, 206, 31);
		pContent.add(lblTTotal);
		
		 lblTotal = new JLabel("Tổng tiền ");
		lblTotal.setHorizontalAlignment(SwingConstants.CENTER);
		lblTotal.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblTotal.setBounds(204, 539, 291, 31);
		pContent.add(lblTotal);
		
		
	}
	private void DocDuLieuVaoTable() {
		if(Integer.valueOf(lblOrderId.getText())<=0) {
			JOptionPane.showMessageDialog(null, "Chưa có hóa đơn");
		} else {
			List<OrderDetail> list = odao.getTimKiemTheoMaHD(Integer.valueOf(lblOrderId.getText().toString()));
			for(OrderDetail o:list) {
				model.addRow(new Object[] {
						o.getId(),o.getOrderId(),o.getProductId(),df.format(o.getUnitPrice()),o.getQuantity(),o.getDiscount()
				});
			}
		}
	}
}
