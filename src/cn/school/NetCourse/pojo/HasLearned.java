package cn.school.NetCourse.pojo;

public class HasLearned {
	private Integer id;
	private Student student;
	private Course course;

	public HasLearned() {
		super();
	}


	public HasLearned(Integer id, Student student, Course course) {
		super();
		this.id = id;
		this.student = student;
		this.course = course;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	@Override
	public String toString() {
		return "HasLearned [id=" + id + ", student=" + student.getUsername() + ", course=" + course.getCourseName() + "]";
	}



}
