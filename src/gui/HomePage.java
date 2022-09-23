package gui;

import java.awt.EventQueue;
import java.sql.SQLException;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import connectDB.ConnectDB;
import java.awt.Font;
import javax.swing.SwingConstants;
import javax.swing.JButton;
import javax.swing.JSeparator;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;



public class HomePage extends JFrame {

	private JPanel contentPane;
	private JLabel lblTenTK,lblVaitro;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					HomePage frame = new HomePage();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	public void sendlogin(String tentk,int vaitro) {
		
		//vaitro = 0 => Error; vaitro=1=>Admin=>Approve; vaitro=2=>Customer=>Reject

		lblTenTK.setText(tentk);
		lblVaitro.setText(String.valueOf(vaitro));
	}
	/**
	 * Create the frame.
	 */
	public HomePage() {
		setTitle("LambdaBuy");
		try {
			ConnectDB.getInstance().connect();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1369, 631);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel pHeader = new JPanel();
		pHeader.setBounds(0, 0, 1345, 51);
		contentPane.add(pHeader);
		pHeader.setLayout(null);
		
		 lblTenTK = new JLabel("Tên tài khoản");
		lblTenTK.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblTenTK.setBounds(1202, 10, 114, 31);
		pHeader.add(lblTenTK);
		lblVaitro=new JLabel("Vai trò");
		
		JLabel lblNewLabel = new JLabel("Xin chào:");
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblNewLabel.setBounds(1054, 10, 126, 31);
		pHeader.add(lblNewLabel);
		
		JPanel pMenu = new JPanel();
		pMenu.setBounds(0, 50, 195, 458);
		contentPane.add(pMenu);
		pMenu.setLayout(null);
		
		JButton btnProduct = new JButton("Quản lý sản phẩm");
		btnProduct.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				ProductManagerPage pm = new ProductManagerPage();
				pm.setVisible(true);
				dispose();
			}
		});
		btnProduct.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnProduct.setBounds(0, 0, 195, 65);
		pMenu.add(btnProduct);
		
		JButton btnCategory = new JButton("Quản lý danh mục");
		btnCategory.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				CategoryManagerPage cg = new CategoryManagerPage();
				cg.setVisible(true);
				dispose();
			}
		});
		btnCategory.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnCategory.setBounds(0, 63, 195, 65);
		pMenu.add(btnCategory);
		
		JButton btnOrder = new JButton("Quản lý đơn hàng");
		btnOrder.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				OrderManagerPage om = new OrderManagerPage();
				om.setVisible(true);
				dispose();
			}
		});
		btnOrder.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnOrder.setBounds(0, 127, 195, 65);
		pMenu.add(btnOrder);
		
		JButton btnUser = new JButton("Quản lý người dùng");
		btnUser.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				UserManagerPage um = new UserManagerPage();
				um.setVisible(true);
				dispose();
			}
		});
		btnUser.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnUser.setBounds(0, 191, 195, 65);
		pMenu.add(btnUser);
		
		JButton btnStats = new JButton("Quản lý thống kê");
		btnStats.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				StatisticManagerPage sm = new StatisticManagerPage();
				sm.setVisible(true);
				dispose();
			}
		});
		btnStats.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnStats.setBounds(0, 255, 195, 65);
		pMenu.add(btnStats);
		
		JPanel pContent = new JPanel();
		pContent.setBounds(198, 51, 1147, 457);
		contentPane.add(pContent);
		pContent.setLayout(null);
		
		JLabel lblTItle = new JLabel("Quản lý bán hàng LambdaBuy");
		lblTItle.setHorizontalAlignment(SwingConstants.CENTER);
		lblTItle.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblTItle.setBounds(10, 10, 891, 62);
		pContent.add(lblTItle);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(10, 71, 1127, 1);
		pContent.add(separator);
		
		JButton btnProductDirect = new JButton("Quản lý sản phẩm");
		btnProductDirect.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnProductDirect.setBounds(100, 189, 250, 30);
		pContent.add(btnProductDirect);
		
		JPanel pProduct = new JPanel();
		pProduct.setBounds(100, 100, 250, 90);
		pContent.add(pProduct);
		pProduct.setLayout(null);
		
		JLabel lblSoluongSP = new JLabel("số sản phẩm");
		lblSoluongSP.setBounds(149, 26, 74, 34);
		pProduct.add(lblSoluongSP);
		
		JPanel pProduct_1 = new JPanel();
		pProduct_1.setLayout(null);
		pProduct_1.setBounds(450, 100, 250, 90);
		pContent.add(pProduct_1);
		
		JLabel lblSoluongDH = new JLabel("số đơn hàng");
		lblSoluongDH.setBounds(149, 26, 74, 34);
		pProduct_1.add(lblSoluongDH);
		
		JButton btnOrderDirect = new JButton("Quản lý đơn hàng");
		btnOrderDirect.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnOrderDirect.setBounds(450, 189, 250, 30);
		pContent.add(btnOrderDirect);
		
		JPanel pProduct_2 = new JPanel();
		pProduct_2.setLayout(null);
		pProduct_2.setBounds(800, 100, 250, 90);
		pContent.add(pProduct_2);
		
		JLabel lblSoluongUser = new JLabel("số người dùng");
		lblSoluongUser.setHorizontalAlignment(SwingConstants.TRAILING);
		lblSoluongUser.setBounds(150, 23, 74, 34);
		pProduct_2.add(lblSoluongUser);
		
		JButton btnUserDirect = new JButton("Quản lý người dùng");
		btnUserDirect.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnUserDirect.setBounds(800, 189, 250, 30);
		pContent.add(btnUserDirect);
		
		
	}
}
