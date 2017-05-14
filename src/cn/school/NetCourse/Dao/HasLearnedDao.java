package cn.school.NetCourse.Dao;

import cn.school.NetCourse.hibernateSessionFactory.HibernateSessionFactory;
import cn.school.NetCourse.pojo.Course;
import cn.school.NetCourse.pojo.HasLearned;
import cn.school.NetCourse.pojo.Student;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class HasLearnedDao {
	private static Session session = HibernateSessionFactory.getSession();
	private static Transaction tx = null;

	public void add(HasLearned hasLearned) {

		List<HasLearned> learned = list(hasLearned.getStudent());
		boolean isExist = false;
		for (HasLearned hasLearned1 : learned) {
			if (hasLearned.getCourse().getCourseId().equals(hasLearned1.getCourse().getCourseId())) {
				isExist = true;
				return;

			}
		}

		if (isExist == false) {
			try {
				tx = session.beginTransaction();
				session.save(hasLearned);
				tx.commit();
				// System.out.println(hasLearned);

			} catch (Exception e) {
				e.printStackTrace();
				if (tx != null) {
					tx.rollback();
				}
			}
		}

	}

	public void delete(HasLearned hasLearned) {
		try {
			//tx = session.beginTransaction();
			session.delete(hasLearned);
			tx.commit();

		} catch (Exception e) {

			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}

	}

	public List<HasLearned> list(Student student) {
		String hql = "from HasLearned h where h.student=:student";
		List<HasLearned> list = session.createQuery(hql).setParameter("student", student).list();
		return list;
	}

	public List<Course> search(Student student) {
		String hql = "from HasLearned h where h.student=:student";
		List<HasLearned> list = session.createQuery(hql).setParameter("student", student).list();
		List<Course> courses = new ArrayList<>();
		for (HasLearned hasLearned : list) {
			courses.add(hasLearned.getCourse());
			System.out.println(hasLearned.getCourse());
		}

		return courses;

	}

	public boolean isAdd(Student student, Course course) {
		String hql = "from HasLearned h where h.student=:student and h.course=:course";
		Query query = session.createQuery(hql);
		query.setParameter("student", student);
		query.setParameter("course", course);
		if (query.list().size() == 0) {
			return false;
		} else {
			return true;
		}
	}

}
