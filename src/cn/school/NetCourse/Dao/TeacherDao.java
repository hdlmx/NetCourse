package cn.school.NetCourse.Dao;

import cn.school.NetCourse.hibernateSessionFactory.HibernateSessionFactory;
import cn.school.NetCourse.pojo.Institute;
import cn.school.NetCourse.pojo.Teacher;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class TeacherDao {
	private static Session session = HibernateSessionFactory.getSession();
	private static Transaction tx = null;

	public void add(Teacher teacher) {

		try {
			tx = session.beginTransaction();
			session.save(teacher);
			tx.commit();
//			System.out.println(teacher);
		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}

	}

	public void delete(Teacher teacher) {
		try {
			tx = session.beginTransaction();
			session.delete(teacher);
			tx.commit();
//			System.out.println(teacher);
		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}

	}

	public void update(Teacher teacher) {
		try {
			tx = session.beginTransaction();
			session.update(teacher);
			tx.commit();
//			System.out.println(teacher);
		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}

	}

	public Teacher search(String username) {
		Teacher teacher = (Teacher) session.get(Teacher.class, username);
//		System.out.println(teacher);
		return teacher;

	}
	
	public List<Teacher> search(Institute institute){
		String hql="from Teacher t where t.institute=:institute";
		List<Teacher> list=session.createQuery(hql).setParameter("institute", institute).list();
//		for(Teacher teacher:list){
//			System.out.println(teacher);
//		}
		return list;
	}

}
