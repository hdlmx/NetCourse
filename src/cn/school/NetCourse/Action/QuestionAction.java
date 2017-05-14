package cn.school.NetCourse.Action;

import cn.school.NetCourse.Dao.QuestionDao;
import cn.school.NetCourse.Dao.TeacherDao;
import cn.school.NetCourse.Dao.VideoDao;
import cn.school.NetCourse.pojo.Question;
import cn.school.NetCourse.pojo.Student;
import cn.school.NetCourse.pojo.Teacher;
import cn.school.NetCourse.pojo.Video;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class QuestionAction implements RequestAware, SessionAware {
	private String context;
	private String videoId;
	private String teacherId;
	private Video video = new Video();
	private Teacher teacher = new Teacher();
	private Student student = new Student();
	private Question question = new Question();

	private VideoDao videoDao = new VideoDao();
	private TeacherDao teacherDao = new TeacherDao();
	private QuestionDao questionDao = new QuestionDao();

	private Map<String, Object> request;
	private Map<String, Object> session;

	public String addQuestion() {

		video = videoDao.search(Integer.parseInt(videoId));
		teacher = teacherDao.search(teacherId);
		Map<String, Object> getCurrentSession = ActionContext.getContext().getSession();
		student = (Student) getCurrentSession.get("student");
		question.setContext(context);
		question.setStudent(student);
		question.setVideo(video);
		question.setTeacher(teacher);

		questionDao.add(question);
		System.err.println(question);
		return "success";
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;

	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getVideoId() {
		return videoId;
	}

	public void setVideoId(String videoId) {
		this.videoId = videoId;
	}

	public String getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}

}
