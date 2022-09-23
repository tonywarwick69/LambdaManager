package gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import connectDB.ConnectDB;
import dao.User_DAO;
import entity.User;

import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import javax.swing.SwingConstants;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.swing.JPasswordField;

public class LoginPage extends JFrame {

	private JPanel contentPane;
	private JTextField txtUserId;
	private JPasswordField txtPassword;
	private User_DAO udao;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					LoginPage frame = new LoginPage();
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
	public LoginPage() {
		try {
			ConnectDB.getInstance().connect();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		udao= new User_DAO();
		setTitle("LambdaBuy Manager");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 818, 471);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblTitle = new JLabel("Đăng nhập quản lý LambdaBuy");
		lblTitle.setHorizontalAlignment(SwingConstants.CENTER);
		lblTitle.setFont(new Font("Tahoma", Font.BOLD, 20));
		lblTitle.setBounds(226, 35, 381, 47);
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
		
		txtPassword = new JPasswordField();
		txtPassword.setColumns(10);
		txtPassword.setBounds(236, 190, 350, 47);
		contentPane.add(txtPassword);
		
		JButton btnLogin = new JButton("ĐĂNG NHẬP");
		btnLogin.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				Connection conn;
				try {
					int flag=1;
					conn = DriverManager.getConnection("jdbc:mysql://awseb-e-m2myz3mhwg-stack-awsebrdsdatabase-s6qb6q4thnim.cq6prej213eb.ap-southeast-1.rds.amazonaws.com:3306/QLBH", 	"sa", "sapassword");
					Statement st= conn.createStatement();
					ResultSet rs= st.executeQuery("select * from QLBH.Users;");
					while(rs.next()) {
						if(rs.getString(1).equals(txtUserId.getText()) && rs.getString(2).equals(txtPassword.getText())) {
							flag=0;
							break;
						} 
					}
					if(flag==0) {
						
						HomePage home = new HomePage();
						String tentk = txtUserId.getText();
						int vaitro=0;
						ArrayList<User> listtk = udao.getTimVaitro(tentk);
						for(User tk : listtk) {
							 vaitro = tk.getAdmin();
						}
						home.sendlogin(tentk, vaitro);
						home.setVisible(true);
						dispose();
					}  else {
						JOptionPane.showMessageDialog(null,"Nhập sai tên tài khoản hoặc mật khẩu");
					}
						
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
			}
		});
		btnLogin.setFont(new Font("Tahoma", Font.BOLD, 18));
		btnLogin.setBounds(299, 288, 177, 47);
		contentPane.add(btnLogin);
		
		JLabel lblRegister = new JLabel(">>BẤM VÀO ĐÂY ĐỂ ĐĂNG KÝ TÀI KHOẢN<<");
		lblRegister.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				RegisterPage reg= new RegisterPage();
				reg.setVisible(true);
				dispose();
			}
		});
		lblRegister.setHorizontalAlignment(SwingConstants.CENTER);
		lblRegister.setFont(new Font("Tahoma", Font.PLAIN, 15));
		lblRegister.setBounds(236, 389, 357, 28);
		contentPane.add(lblRegister);
	}
}
