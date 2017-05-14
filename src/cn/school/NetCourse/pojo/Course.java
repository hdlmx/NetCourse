package cn.school.NetCourse.pojo;

import java.util.HashSet;
import java.util.Set;

public class Course {
	private Integer courseId;
	private String courseName;
	private Teacher teacher;
	private String image;
	private String courseTitle;
	private String courseIntroduce;
	private Set<Video> videos = new HashSet<>();

	public Course() {
		super();
	}

	public Course(Integer courseId, String courseName, Teacher teacher, String image, String courseTitle,
			String courseIntroduce, Set<Video> videos) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.teacher = teacher;
		this.image = image;
		this.courseTitle = courseTitle;
		this.courseIntroduce = courseIntroduce;
		this.videos = videos;
	}

	public Integer getCourseId() {
		return courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Set<Video> getVideos() {
		return videos;
	}

	public void setVideos(Set<Video> videos) {
		this.videos = videos;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public String getCourseIntroduce() {
		return courseIntroduce;
	}

	public void setCourseIntroduce(String courseIntroduce) {
		this.courseIntroduce = courseIntroduce;
	}

	@Override
	public String toString() {
		return "Course [courseId=" + courseId + ", courseName=" + courseName + ", teacher=" + teacher.getUsername()
				+ "]";
	}

}