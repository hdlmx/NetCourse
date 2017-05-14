package cn.school.NetCourse.Action;

import cn.school.NetCourse.Dao.CourseDao;
import cn.school.NetCourse.Dao.HasLearnedDao;
import cn.school.NetCourse.Dao.StudentDao;
import cn.school.NetCourse.pojo.Course;
import cn.school.NetCourse.pojo.HasLearned;
import cn.school.NetCourse.pojo.Student;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class UserAction implements SessionAware, RequestAware {
	private Map<String, Object> session;
	private Map<String, Object> request;
	private String username;
	private String password;
	private String firstName;
	private String lastName;
	private String orginPassword;
	private String newPassword;
	private String confimPassword;
	private String email;
	StudentDao studentDao = new StudentDao();
	Student student = new Student();
	HasLearnedDao hasLearnedDao = new HasLearnedDao();
	CourseDao courseDao = new CourseDao();

	// 用户登录
	public String login() {
		// HttpServletRequest httpRequest = ServletActionContext.getRequest();

		Student user = studentDao.search(username);

		if (user != null && password.equals(user.getPassword())) {
			student = user;
			session.put("student", student);
			return "success";
		} else {
			return "fail";
		}

	}

	// 登录退出
	public String exit() {
		// Map<String, Object> getCurrentSession =
		// ActionContext.getContext().getSession();
		// System.err.println("输出当前session：");
		// Student user = (Student) getCurrentSession.get("student");
		this.student = null;
		session.put("student", student);
		// System.err.println(user);

		return "success";
	}

	// 用户注册
	public String reg() {
		Student user = studentDao.search(username);
		if (user == null) {
			student.setUsername(username);
			student.setPassword(password);
			student.setEmail(email);
			studentDao.add(student);
			return "success";
		}
		// System.out.println(username + password + email);
		else {
			return "fail";
		}
	}

	// 学生修改个人信息
	public String modify() {
		Map<String, Object> getCurrentSession = ActionContext.getContext().getSession();
		Student user = (Student) getCurrentSession.get("student");
		// 如果输入的原始密码正确则修改信息，并且把当前session中的student设为null，重新登录，否则返回错误
		if (user.getPassword().equals(orginPassword)) {

			user.setEmail(email);
			user.setFirstName(firstName);
			user.setLastName(lastName);
			user.setPassword(confimPassword);
			studentDao.update(user);
			session.put("student", null);
			return "success";

		} else {
			return "fail";
		}

	}

	// 收藏课程
	public String addCourse() {
		Map<String, Object> getCurrentSession = ActionContext.getContext().getSession();
		Student user = (Student) getCurrentSession.get("student");
		HttpServletRequest httpRequest = ServletActionContext.getRequest();
		String course = httpRequest.getParameter("course");
		Integer courseId = Integer.parseInt(course);
		if (user == null) {
			return "fail";
		} else {
			HasLearned hasLearned = new HasLearned();
			Course fromCourse = courseDao.search(courseId);
			hasLearned.setCourse(fromCourse);
			hasLearned.setStudent(user);
			hasLearnedDao.add(hasLearned);
			List<Course> courses=hasLearnedDao.search(user);
			request.put("mycourse", courses);
			request.put("myIndex", 0);
			return "success";

		}

	}

	/*
	 * 跳转到个人设置页面，在请求域中放入myindex指针用于没有myClass,jps页面来半段包含哪个页面
	 * myindex==1表示包含的是student_class.jsp页面 myindex==2表示包含的是student_dynamic.jsp页面
	 * myindex==3表示包含的是student_setting.jsp页面
	 */
	public String myCourse() {
		Map<String, Object> getCurrentSession = ActionContext.getContext().getSession();
		System.err.println("输出当前session：");
		Student user = (Student) getCurrentSession.get("student");
		List<Course> haslearned = hasLearnedDao.search(user);
		request.put("mycourse", haslearned);
		request.put("myIndex", 0);
		return "success";

	}

	public String dynamic() {
		request.put("myIndex", 2);
		return "success";
	}

	public String setting() {
		request.put("myIndex", 3);
		return "success";
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
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

	public String getOrginPassword() {
		return orginPassword;
	}

	public void setOrginPassword(String orginPassword) {
		this.orginPassword = orginPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getConfimPassword() {
		return confimPassword;
	}

	public void setConfimPassword(String confimPassword) {
		this.confimPassword = confimPassword;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
