package cn.school.NetCourse.pojo;

public class CourseSystem {
	private Integer id;
	private Major major;
	private Integer grade;
	private Course course;

	public CourseSystem() {
		super();
	}

	public CourseSystem(Integer id, Major major, Integer grade, Course course) {
		super();
		this.id = id;
		this.major = major;
		this.grade = grade;
		this.course = course;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Major getMajor() {
		return major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	@Override
	public String toString() {
		return "CourseSystem [id=" + id + ", major=" + major.getMajorName() + ", grade=" + grade + ", course="
				+ course.getCourseName() + "]";
	}

}
