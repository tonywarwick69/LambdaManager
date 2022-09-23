package gui;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

import connectDB.ConnectDB;
import dao.User_DAO;
import entity.User;

import javax.swing.JComboBox;
import javax.swing.JPasswordField;

public class RegisterPage extends JFrame {

	private JPanel contentPane;
	private JTextField txtUserId;
	private JPasswordField txtPassword;
	private JPasswordField txtConfirmPassword;
	private JTextField txtName;
	private JTextField txtEmail;
	private JComboBox cboActivated,cboRole;
	private JButton btnRegister;
	private JTextField txtSDT;
	private JLabel lblTitle1_1_1_2;
	private User_DAO udao;

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
		udao= new User_DAO();
		setTitle("LambdaBuy Manager");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1309, 677);
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
		txtUserId.setFont(new Font("Tahoma", Font.PLAIN, 16));
		txtUserId.setBounds(282, 92, 350, 47);
		contentPane.add(txtUserId);
		txtUserId.setColumns(10);
		
		txtPassword = new JPasswordField();
		txtPassword.setFont(new Font("Tahoma", Font.PLAIN, 16));
		txtPassword.setColumns(10);
		txtPassword.setBounds(282, 189, 350, 47);
		contentPane.add(txtPassword);
		
		 btnRegister = new JButton("ĐĂNG KÝ");
		btnRegister.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				StringBuilder sb=new StringBuilder();
				if(txtUserId.getText().equals("")) {
					sb.append("Bắt buộc nhập tên tài khoản! \n");
					txtUserId.setBackground(Color.YELLOW);
				} else {
					txtUserId.setBackground(Color.WHITE);
				}
				String password= new String(txtPassword.getPassword());
				if(txtPassword.equals("")) {
					sb.append("Bắt buộc nhập mật khẩu! \n");
					txtPassword.setBackground(Color.YELLOW);
				} else {
					txtPassword.setBackground(Color.WHITE);
				}
				String confirmpassword= new String(txtConfirmPassword.getPassword());
				if(!password.equals(confirmpassword)) {
					sb.append("Mật khẩu nhập và mật khẩu tái xác nhân phải giống nhau \n");
					txtPassword.setBackground(Color.YELLOW);
					txtConfirmPassword.setBackground(Color.YELLOW);
				} else {
					txtPassword.setBackground(Color.WHITE);
					txtConfirmPassword.setBackground(Color.WHITE);
				}
				if(sb.length()>0) {
					JOptionPane.showMessageDialog(null, sb.toString());
					return;
				} else {
					Object o = e.getSource();
					if(o.equals(btnRegister)) {
							String tentk = txtUserId.getText();
							String matkhau = txtPassword.getText();
							String name= txtName.getText();
							int sdt=Integer.parseInt(txtSDT.getText());
							String email = txtEmail.getText();
							String photo="user.png";
							boolean activated = cboActivated.getSelectedItem().toString()=="Kích hoạt"?true:false;
							//vaitro = 0 = false; "Admin" vaitro = 1 ; "User" vaitro = 2; "Shipper" vaitro = 3
							int vaitro=0;
							 switch ( cboRole.getSelectedItem().toString() ) {
						        case "Admin":   vaitro = 1; break;
						        case "User":   vaitro = 2; break;
						        case "Shipper":   vaitro = 3; break;
						        default: vaitro=0; break;
						    }
							
							User tk = new User(tentk, matkhau,name,sdt,email,photo,activated,vaitro);
							
							if(!udao.create(tk))
								JOptionPane.showMessageDialog(null, "Đăng ký thất bại");
							else {
								JOptionPane.showMessageDialog(null, "Đăng ký thành công");
								LoginPage login =new LoginPage();
								login.setVisible(true);
								dispose();
							}
						
					}
				}
			}
		});
		btnRegister.setFont(new Font("Tahoma", Font.BOLD, 18));
		btnRegister.setBounds(935, 408, 177, 47);
		contentPane.add(btnRegister);
		
		JLabel lblLogin = new JLabel(">>BẤM VÀO ĐÂY ĐỂ ĐĂNG NHẬP<<");
		lblLogin.setHorizontalAlignment(SwingConstants.CENTER);
		lblLogin.setFont(new Font("Tahoma", Font.PLAIN, 15));
		lblLogin.setBounds(518, 595, 357, 28);
		contentPane.add(lblLogin);
		
		txtConfirmPassword = new JPasswordField();
		txtConfirmPassword.setFont(new Font("Tahoma", Font.PLAIN, 16));
		txtConfirmPassword.setColumns(10);
		txtConfirmPassword.setBounds(282, 293, 350, 47);
		contentPane.add(txtConfirmPassword);
		
		JLabel lblTitle1_1_1 = new JLabel("Nhập lại mật khẩu:");
		lblTitle1_1_1.setHorizontalAlignment(SwingConstants.CENTER);
		lblTitle1_1_1.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblTitle1_1_1.setBounds(57, 294, 182, 40);
		contentPane.add(lblTitle1_1_1);
		
		txtName = new JTextField();
		txtName.setFont(new Font("Tahoma", Font.PLAIN, 16));
		txtName.setColumns(10);
		txtName.setBounds(282, 409, 350, 47);
		contentPane.add(txtName);
		
		JLabel lblTitle1_1_1_1 = new JLabel("Tên đầy đủ:");
		lblTitle1_1_1_1.setHorizontalAlignment(SwingConstants.CENTER);
		lblTitle1_1_1_1.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblTitle1_1_1_1.setBounds(57, 410, 141, 40);
		contentPane.add(lblTitle1_1_1_1);
		
		txtEmail = new JTextField();
		txtEmail.setFont(new Font("Tahoma", Font.PLAIN, 16));
		txtEmail.setColumns(10);
		txtEmail.setBounds(935, 97, 350, 47);
		contentPane.add(txtEmail);
		
		JLabel lblTitle1_1_1_1_1 = new JLabel("Email:");
		lblTitle1_1_1_1_1.setHorizontalAlignment(SwingConstants.CENTER);
		lblTitle1_1_1_1_1.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblTitle1_1_1_1_1.setBounds(710, 100, 141, 40);
		contentPane.add(lblTitle1_1_1_1_1);
		
		JLabel lblTitle1_2_1 = new JLabel("Kích hoạt:");
		lblTitle1_2_1.setHorizontalAlignment(SwingConstants.CENTER);
		lblTitle1_2_1.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblTitle1_2_1.setBounds(710, 190, 141, 40);
		contentPane.add(lblTitle1_2_1);
		
		JLabel lblTitle1_2_2 = new JLabel("Vai trò:");
		lblTitle1_2_2.setHorizontalAlignment(SwingConstants.CENTER);
		lblTitle1_2_2.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblTitle1_2_2.setBounds(710, 296, 141, 40);
		contentPane.add(lblTitle1_2_2);
		
		cboRole = new JComboBox();
		cboRole.setFont(new Font("Tahoma", Font.PLAIN, 16));
		cboRole.setBounds(935, 292, 350, 48);
		contentPane.add(cboRole);
		cboRole.addItem("Admin");
		cboRole.addItem("User");
		cboRole.addItem("Shipper");
		
		 cboActivated = new JComboBox();
		cboActivated.setFont(new Font("Tahoma", Font.PLAIN, 16));
		cboActivated.setBounds(935, 186, 350, 48);
		contentPane.add(cboActivated);
		cboActivated.addItem("Kích hoạt");
		cboActivated.setSelectedItem(null);
		
		txtSDT = new JTextField();
		txtSDT.setFont(new Font("Tahoma", Font.PLAIN, 16));
		txtSDT.setColumns(10);
		txtSDT.setBounds(282, 507, 350, 47);
		contentPane.add(txtSDT);
		
		lblTitle1_1_1_2 = new JLabel("Số điện thoại:");
		lblTitle1_1_1_2.setHorizontalAlignment(SwingConstants.CENTER);
		lblTitle1_1_1_2.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblTitle1_1_1_2.setBounds(57, 507, 141, 40);
		contentPane.add(lblTitle1_1_1_2);
	}
}
