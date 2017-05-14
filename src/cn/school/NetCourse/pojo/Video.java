package cn.school.NetCourse.pojo;

public class Video {

	private Integer videoId;
	private String videoName;
	private Course course;
	private String path;

	public Video() {
		super();
	}

	public Video(Integer videoId, String videoName, Course course, String path) {
		super();
		this.videoId = videoId;
		this.videoName = videoName;
		this.course = course;
		this.path = path;
	}

	public Integer getVideoId() {
		return videoId;
	}

	public void setVideoId(Integer videoId) {
		this.videoId = videoId;
	}

	public String getVideoName() {
		return videoName;
	}

	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	@Override
	public String toString() {
		return "Video [videoId=" + videoId + ", videoName=" + videoName + ", course=" + course.getCourseName() + ", path=" + path + "]";
	}

	
	

}
