package cn.school.NetCourse.pojo;

import java.util.HashSet;
import java.util.Set;

public class Student {
	private String username;
	private String firstName;
	private String lastName;
	private String password;
	private String email;
	private String userImagePath;
	private Major major;

	private Set<Question> questions = new HashSet<>();

	public Student() {
		super();
	}

	public Student(String username, String password, Major major, String firstName, String lastName,
			Set<Question> questions) {
		super();
		this.username = username;
		this.password = password;
		this.major = major;
		this.firstName = firstName;
		this.lastName = lastName;
		this.questions = questions;
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

	public Major getMajor() {
		return major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public Set<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(Set<Question> questions) {
		this.questions = questions;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserImagePath() {
		return userImagePath;
	}

	public void setUserImagePath(String userImagePath) {
		this.userImagePath = userImagePath;
	}

	@Override
	public String toString() {
		return "Student [firstName=" + firstName + ", lastName=" + lastName + ", major=" + major + "]";
	}

}