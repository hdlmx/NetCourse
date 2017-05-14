package cn.school.NetCourse.Dao;

import cn.school.NetCourse.hibernateSessionFactory.HibernateSessionFactory;
import cn.school.NetCourse.pojo.Question;
import cn.school.NetCourse.pojo.Student;
import cn.school.NetCourse.pojo.Teacher;
import cn.school.NetCourse.pojo.Video;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class QuestionDao {
	private static Session session = HibernateSessionFactory.getSession();
	private static Transaction tx = null;


	public void add(Question question) {
		try {
			tx = session.beginTransaction();
			session.save(question);
			tx.commit();
			// System.out.println(question);

		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}

	}

	public void delete(Question question) {
		try {
			tx = session.beginTransaction();
			session.delete(question);
			tx.commit();
			// System.out.println(question);

		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}

	}

	public void update(Question question) {
		try {
			tx = session.beginTransaction();
			session.update(question);
			tx.commit();
			// System.out.println(question);

		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}
	}

	public Question search(Integer integer) {

		Question question = (Question) session.get(Question.class, integer);
		// System.out.println(question);
		return question;

	}

	public List<Question> search(Teacher teacher) {
		String hql = "from Question q where q.teacher=:teacher";
		List<Question> list = session.createQuery(hql).setParameter("teacher", teacher).list();
		// for (Question question : list) {
		// System.out.println(question);
		// }
		return list;

	}

	public List<Question> search(Teacher teacher, Video video) {
		String hql = "from Question q where q.teacher=:teacher and q.video=:video";
		Query query = session.createQuery(hql);
		query.setParameter("teacher", teacher);
		query.setParameter("video", video);
		List<Question> list = query.list();
		// for (Question question : list) {
		// System.out.println(question);
		// }
		return list;

	}

	public List<Question> search(Student student) {

		String hql = "from Question q where q.student=:student";
		List<Question> list = session.createQuery(hql).list();
		// for (Question question : list) {
		// System.out.println(question);
		// }
		return list;

	}

	public List<Question> search(Student student, Video video) {
		String hql = "from Question q where q.student=:student and q.video=:video";
		Query query = session.createQuery(hql);
		query.setParameter("student", student);
		query.setParameter("video", video);
		List<Question> list = query.list();
		// for (Question question : list) {
		// System.out.println(question);
		// }
		return list;

	}

	public List<Question> search(Video video) {
		String hql = "from Question q where q.video=:video";
		Query query = session.createQuery(hql);
		query.setParameter("video", video);
		List<Question> list = query.list();
		for (Question question : list) {
			System.out.println(question);
		}
		return list;

	}

}
