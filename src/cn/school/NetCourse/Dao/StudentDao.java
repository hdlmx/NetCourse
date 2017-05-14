package cn.school.NetCourse.Dao;

import cn.school.NetCourse.hibernateSessionFactory.HibernateSessionFactory;
import cn.school.NetCourse.pojo.Student;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class StudentDao {
	private static Session session = HibernateSessionFactory.getSession();
	private static Transaction tx = null;

	public void add(Student student) {
		try {
			tx = session.beginTransaction();
			session.save(student);
			tx.commit();
//			System.out.println(student);
		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}
	}

	public void delete(Student student) {
		try {
			tx = session.beginTransaction();
			session.delete(student);
			tx.commit();
//			System.out.println(student);

		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}
	}

	public void update(Student student) {
		try {
			tx = session.beginTransaction();
			session.update(student);
			tx.commit();
//			System.out.println(student);

		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}

	}

	public Student search(String username) {
		Student student = (Student) session.get(Student.class, username);
//		System.out.println(student);
		return student;
	}

}
