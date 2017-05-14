package cn.school.NetCourse.Action;

import cn.school.NetCourse.Dao.*;
import cn.school.NetCourse.pojo.*;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class PlayAction implements RequestAware {
	private Map<String, Object> request;
	MajorDao majorDao = new MajorDao();
	CourseDao courseDao = new CourseDao();
	VideoDao videoDao = new VideoDao();
	CourseSystemDao courseSystemDao = new CourseSystemDao();
	CourseSystem courseSystem = new CourseSystem();
	QuestionDao questionDao = new QuestionDao();

	public String play() {

		HttpServletRequest httpRequest = ServletActionContext.getRequest();
		String courseid = httpRequest.getParameter("course");
		String videoid = httpRequest.getParameter("video");
		String majorid = null;
		majorid = httpRequest.getParameter("major");
		System.err.println("MajorId" + majorid);

		Integer courseId = Integer.parseInt(courseid);
		Integer voideId = Integer.parseInt(videoid);
		Integer majorId = null;
		Major major = null;

		Course course = courseDao.search(courseId);
		if (majorid == "") {
			 System.err.println(majorid);
			

		} else {
			majorId = Integer.parseInt(majorid);
			major = majorDao.search(majorId);
			courseSystem = courseSystemDao.search(major, course);
			request.put("major", major);

		}


		List<Video> videos = videoDao.search(course);

		Video toPlay = null;
		/*
		 */

		if (voideId == 1) {
			toPlay = videos.get(0);
		} else {
			toPlay = videoDao.search(voideId);

		}
		List<Question> questions = questionDao.search(toPlay);

		request.put("course", course);
		request.put("videos", videos);
		request.put("toPlay", toPlay);
		request.put("questions", questions);

		return "success";
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}

}
