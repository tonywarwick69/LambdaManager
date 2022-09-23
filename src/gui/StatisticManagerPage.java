package gui;

import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.SQLException;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

import connectDB.ConnectDB;
import javax.swing.JButton;
import javax.swing.JSeparator;

public class StatisticManagerPage extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					StatisticManagerPage frame = new StatisticManagerPage();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public StatisticManagerPage() {
		setTitle("LambdaBuy");
		try {
			ConnectDB.getInstance().connect();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1369, 555);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel pHeader = new JPanel();
		pHeader.setBounds(0, 0, 1345, 51);
		contentPane.add(pHeader);
		pHeader.setLayout(null);
		
		JPanel pMenu = new JPanel();
		pMenu.setBounds(0, 50, 195, 458);
		contentPane.add(pMenu);
		pMenu.setLayout(null);
		
		JButton btnProduct = new JButton("Quản lý sản phẩm");
		btnProduct.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnProduct.setBounds(0, 0, 195, 65);
		pMenu.add(btnProduct);
		
		JButton btnCategory = new JButton("Quản lý danh mục");
		btnCategory.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnCategory.setBounds(0, 63, 195, 65);
		pMenu.add(btnCategory);
		
		JButton btnOrder = new JButton("Quản lý đơn hàng");
		btnOrder.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnOrder.setBounds(0, 127, 195, 65);
		pMenu.add(btnOrder);
		
		JButton btnUser = new JButton("Quản lý người dùng");
		btnUser.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnUser.setBounds(0, 191, 195, 65);
		pMenu.add(btnUser);
		
		JButton btnStats = new JButton("Quản lý thống kê");
		btnStats.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnStats.setBounds(0, 255, 195, 65);
		pMenu.add(btnStats);
		
		JPanel pContent = new JPanel();
		pContent.setBounds(198, 51, 1147, 457);
		contentPane.add(pContent);
		pContent.setLayout(null);
		
		JLabel lblTItle = new JLabel("Quản lý thống kê");
		lblTItle.setHorizontalAlignment(SwingConstants.CENTER);
		lblTItle.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblTItle.setBounds(10, 10, 891, 62);
		pContent.add(lblTItle);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(10, 69, 1127, 1);
		pContent.add(separator);
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
		
		btnStats.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				StatisticManagerPage sm = new StatisticManagerPage();
				sm.setVisible(true);
				dispose();
			}
		});
		
	}
}
