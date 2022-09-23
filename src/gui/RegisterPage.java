package gui;

import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

import connectDB.ConnectDB;

public class RegisterPage extends JFrame {

	private JPanel contentPane;
	private JTextField txtUserId;
	private JTextField txtPassword;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					RegisterPage frame = new RegisterPage();
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
	public RegisterPage() {
		try {
			ConnectDB.getInstance().connect();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		setTitle("LambdaBuy Manager");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 818, 471);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblTitle = new JLabel("Đăng ký tài khoản quản lý LambdaBuy");
		lblTitle.setHorizontalAlignment(SwingConstants.CENTER);
		lblTitle.setFont(new Font("Tahoma", Font.BOLD, 20));
		lblTitle.setBounds(118, 35, 489, 47);
		contentPane.add(lblTitle);
		
		JLabel lblTitle1 = new JLabel("Tên đăng nhập:");
		lblTitle1.setHorizontalAlignment(SwingConstants.CENTER);
		lblTitle1.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblTitle1.setBounds(57, 100, 141, 40);
		contentPane.add(lblTitle1);
		
		JLabel lblTitle1_1 = new JLabel("Mật khẩu:");
		lblTitle1_1.setHorizontalAlignment(SwingConstants.CENTER);
		lblTitle1_1.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblTitle1_1.setBounds(57, 190, 141, 40);
		contentPane.add(lblTitle1_1);
		
		txtUserId = new JTextField();
		txtUserId.setBounds(236, 99, 350, 47);
		contentPane.add(txtUserId);
		txtUserId.setColumns(10);
		
		txtPassword = new JTextField();
		txtPassword.setColumns(10);
		txtPassword.setBounds(236, 190, 350, 47);
		contentPane.add(txtPassword);
		
		JButton btnLogin = new JButton("ĐĂNG KÝ");
		btnLogin.setFont(new Font("Tahoma", Font.BOLD, 18));
		btnLogin.setBounds(299, 288, 177, 47);
		contentPane.add(btnLogin);
		
		JLabel lblLogin = new JLabel(">>BẤM VÀO ĐÂY ĐỂ ĐĂNG NHẬP<<");
		lblLogin.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
			}
		});
		lblLogin.setHorizontalAlignment(SwingConstants.CENTER);
		lblLogin.setFont(new Font("Tahoma", Font.PLAIN, 15));
		lblLogin.setBounds(236, 389, 357, 28);
		contentPane.add(lblLogin);
	}

}
