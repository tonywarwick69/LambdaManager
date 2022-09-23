package gui;

import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.SQLException;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;

import connectDB.ConnectDB;
import dao.Product_DAO;
import entity.Product;

import javax.swing.JSeparator;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JButton;

public class ProductManagerPage extends JFrame {

	private JPanel contentPane;
	private DefaultTableModel modelProduct;
	private Product_DAO pdao;
	private JTable tableProduct;
	

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ProductManagerPage frame = new ProductManagerPage();
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
	public ProductManagerPage() {
		pdao=new Product_DAO();
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
		
		JLabel lblTItle = new JLabel("Quản lý sản phẩm");
		lblTItle.setHorizontalAlignment(SwingConstants.CENTER);
		lblTItle.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblTItle.setBounds(0, 10, 1137, 54);
		pContent.add(lblTItle);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(10, 69, 1127, 1);
		pContent.add(separator);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 82, 1137, 375);
		pContent.add(scrollPane);
		
		tableProduct = new JTable();
		tableProduct.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				
			}
		});
		scrollPane.setColumnHeaderView(tableProduct);
		tableProduct.setModel(modelProduct = new DefaultTableModel(
				new Object[][] {
					
				},
				new String[] {
						"Mã hàng","Tên hàng","Đơn giá","Hình ảnh","Ngày nhập","Available","Mã danh mục","Mô tả","Discount","Views","Đặc biệt"
				}
				));
		scrollPane.setViewportView(tableProduct);
		
		JButton btnEdit = new JButton("Edit");
		btnEdit.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				int row = tableProduct.getSelectedRow();
				if(row<0) {
					JOptionPane.showMessageDialog(null, "Chưa chọn dữ liệu để chỉnh sửa");
				} else {
					Edit_ProductManagerPage edit= new Edit_ProductManagerPage();
					edit.setVisible(true);
				}
			}
		});
		btnEdit.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnEdit.setBounds(850, 10, 103, 37);
		pContent.add(btnEdit);
		
		JButton btnDelete = new JButton("Delete");
		btnDelete.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				int row = tableProduct.getSelectedRow();
				if(row<0) {
					JOptionPane.showMessageDialog(null, "Chưa chọn dữ liệu để xóa");
				} else {
					int xoa;
					xoa = JOptionPane.showConfirmDialog(null, "Bạn có muốn xóa dòng đã chọn?", "Nhắc nhở", JOptionPane.YES_NO_OPTION);
					if(xoa == JOptionPane.YES_OPTION) {
						modelProduct.removeRow(row);
						int ma = Integer.parseInt(tableProduct.getValueAt(row, 0).toString());
						pdao.deleteProduct(ma);
				}
			}
			}
		});
		btnDelete.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnDelete.setBounds(967, 10, 127, 37);
		pContent.add(btnDelete);
		DocDuLieuDBVaoTable();
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
	private void DocDuLieuDBVaoTable() {
		List<Product> list = pdao.getAllProduct();
		for(Product p : list) {
			modelProduct.addRow(new Object[] {
					p.getId(),p.getName(),p.getUnitPrice(),p.getImage(),p.getProductDate(),p.getAvailable()==true ? "Còn hàng":"Hết hàng",p.getCategoryId(),p.getQuantity(),p.getDescription(),p.getDescription(),p.getDiscount(),p.getViewCount(),p.getSpecial()== true ? "Hiện":"Không hiện"
			});
		}
	}
}
