package entity;



import java.util.List;




public class Category {

	Integer id;
	String name;
	String nameVN;
	



	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Category(String name, String nameVN) {
		super();
		this.name = name;
		this.nameVN = nameVN;
	}

	public Category(Integer id, String name, String nameVN) {
		super();
		this.id = id;
		this.name = name;
		this.nameVN = nameVN;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNameVN() {
		return nameVN;
	}

	public void setNameVN(String nameVN) {
		this.nameVN = nameVN;
	}


	
}
