package entity;

import java.util.List;

public class User {

	String id;
	String password;
	String fullname;
	int telephone;
	String email;
	String photo;
	Boolean activated;
	int admin;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String password, String fullname, int telephone, String email, String photo, Boolean activated,
			int admin) {
		super();
		this.password = password;
		this.fullname = fullname;
		this.telephone = telephone;
		this.email = email;
		this.photo = photo;
		this.activated = activated;
		this.admin = admin;
	}

	public User(String id, String password, String fullname, int telephone, String email, String photo,
			Boolean activated, int admin) {
		super();
		this.id = id;
		this.password = password;
		this.fullname = fullname;
		this.telephone = telephone;
		this.email = email;
		this.photo = photo;
		this.activated = activated;
		this.admin = admin;
	}

	public User(String taikhoan, String matkhau, int vaitro) {
		// TODO Auto-generated constructor stub
		super();
		this.id = id;
		this.password = password;
		this.admin = admin;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
	public int getTelephone() {
		return telephone;
	}

	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Boolean getActivated() {
		return activated;
	}

	public void setActivated(Boolean activated) {
		this.activated = activated;
	}

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}


}