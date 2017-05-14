package cn.school.NetCourse.Action;

import cn.school.NetCourse.Dao.CourseDao;
import cn.school.NetCourse.Dao.HasLearnedDao;
import cn.school.NetCourse.Dao.MajorDao;
import cn.school.NetCourse.pojo.Course;
import cn.school.NetCourse.pojo.Major;
import cn.school.NetCourse.pojo.Student;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class CourseAction implements RequestAware {

	CourseDao courseDao = new CourseDao();
	MajorDao majorDao = new MajorDao();
	Course courses = new Course();
	Major majors = new Major();
	HasLearnedDao hasLearnedDao = new HasLearnedDao();
	private Map<String, Object> request;
	private String courseName;

	public String major() {
		HttpServletRequest httpRequest = ServletActionContext.getRequest();
		String course = httpRequest.getParameter("course");
		String major = httpRequest.getParameter("major");
		Integer courseId = Integer.parseInt(course);
		Integer majorId = null;
		if (major == null) {

		} else {
			majorId = Integer.parseInt(major);
			majors = majorDao.search(majorId);
			request.put("major", majors);
		}


		courses = courseDao.search(courseId);
		//
		System.out.println(majors.getMajorName() + courses.getCourseName());
		request.put("course", courses);
		courseIsAdd();
		return "success";

	}

	public String myCourse() {

		Map<String, Object> getCurrentSession = ActionContext.getContext().getSession();
		Student user = (Student) getCurrentSession.get("student");
		List<Course> haslearned = hasLearnedDao.search(user);
		request.put("mycourse", haslearned);
		return "success";
	}

	public void courseIsAdd() {

		Map<String, Object> getCurrentSession = ActionContext.getContext().getSession();
		Student user = (Student) getCurrentSession.get("student");
		HttpServletRequest httpRequest = ServletActionContext.getRequest();
		String course = httpRequest.getParameter("course");
		Integer courseId = Integer.parseInt(course);

		if (user == null) {
			request.put("isadd", 0);
		} else {
			Course fromCourse = courseDao.search(courseId);
			boolean isAdd = hasLearnedDao.isAdd(user, fromCourse);
			if (isAdd == false) {
				request.put("isadd", 0);
			} else {
				request.put("isadd", 1);
			}

		}

	}

	public String searchCourse() {
		List<Course> list = courseDao.searchCourses(courseName);
		if (list.size() != 0) {
			request.put("courseReslut", list);
			request.put("Key", courseName);
			return "success";

		} else {
			request.put("Key", courseName);
			return "fail";
		}

	}

	@Override
	public void setRequest(Map<String, Object> arg0) {

		this.request = arg0;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

}
