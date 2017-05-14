package cn.school.NetCourse.pojo;

public class Admin {
	private String username;
	private String password;
	private int type;

	public Admin() {
		super();
	}

	public Admin(String username, String password, int type) {
		super();
		this.username = username;
		this.password = password;
		this.type = type;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Admin [username=" + username + ", password=" + password + ", type=" + type + "]";
	}
}
