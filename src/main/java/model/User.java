package model;

public class User {
	
	private int idUser;
	private String  fullName;
	private String email;
	private String  password;
	private String  role;
	
	
	
	
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String fullName, String email, String password, String role) {
		super();
		this.fullName = fullName;
		this.email = email;
		this.password = password;
		this.role = role;
	}
	public User(int idUser, String fullName, String email, String password, String role) {
		super();
		this.idUser = idUser;
		this.fullName = fullName;
		this.email = email;
		this.password = password;
		this.role = role;
	}
	//--------------------------------------
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
	

}
