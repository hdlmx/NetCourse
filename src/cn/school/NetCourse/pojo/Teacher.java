package cn.school.NetCourse.pojo;


public class Teacher {
	private String username;
	private String firstName;
	private String lastName;
	private String password;
	private Institute institute;
	// private Set<Course> courses = new HashSet<>();
	// private Set<Question> questions = new HashSet<>();

	public Teacher() {
		super();
	}

	public Teacher(String username, String firstName, String lastName, String password, Institute institute) {
		super();
		this.username = username;
		this.firstName = firstName;
		this.lastName = lastName;
		this.password = password;
		this.institute = institute;
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

	public Institute getInstitute() {
		return institute;
	}

	public void setInstitute(Institute institute) {
		this.institute = institute;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Override
	public String toString() {
		return "Teacher [firstName=" + firstName + ", lastName=" + lastName + ", institute=" + institute + "]";
	}

	// public Set<Course> getCourses() {
	// return courses;
	// }
	//
	// public void setCourses(Set<Course> courses) {
	// this.courses = courses;
	// }
	//
	// public Set<Question> getQuestions() {
	// return questions;
	// }
	//
	// public void setQuestions(Set<Question> questions) {
	// this.questions = questions;
	// }

	// @Override
	// public String toString() {
	// return "Teacher [username=" + username + ", password=" + password + ",
	// institute=" + institute + ", courses="
	// + courses + ", questions=" + questions + "]";
	// }

}
