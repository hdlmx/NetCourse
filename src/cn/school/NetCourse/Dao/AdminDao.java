package cn.school.NetCourse.Dao;

import cn.school.NetCourse.hibernateSessionFactory.HibernateSessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class AdminDao {
	private static Session session = HibernateSessionFactory.getSession();
	private static Transaction tx = null;
	
	

}
