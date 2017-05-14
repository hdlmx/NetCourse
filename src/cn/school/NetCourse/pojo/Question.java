package cn.school.NetCourse.pojo;

import java.util.Date;

public class Question {
    private Integer quesetionid;
    private String context;
    private Video video;
    private Teacher teacher;
    private Student student;
    private Date date;

    public Question() {
        super();
    }

    public Question(Integer quesetionid, String context, Video video, Teacher teacher, Student student) {
        super();
        this.quesetionid = quesetionid;
        this.context = context;
        this.video = video;
        this.teacher = teacher;
        this.student = student;
    }

    public Integer getQuesetionid() {
        return quesetionid;
    }

    public void setQuesetionid(Integer quesetionid) {
        this.quesetionid = quesetionid;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Video getVideo() {
        return video;
    }

    public void setVideo(Video video) {
        this.video = video;
    }
    

    public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Question [quesetionid=" + quesetionid + ", context=" + context + ", video=" + video + ", teacher="
				+ teacher + ", student=" + student + ", date=" + date + "]";
	}



}
