package cn.school.NetCourse.hibernateSessionFactory;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateSessionFactory {
//	private static String CONFIG_FILE_LOCATION = "hibernate.cfg.xml";
	private static final ThreadLocal<Session> threadLocal = new ThreadLocal<>();
//	private static Configuration configuration = new Configuration();
//	private static String configFile = CONFIG_FILE_LOCATION;
//	private static ServiceRegistry registry = new StandardServiceRegistryBuilder()
//			.applySettings(configuration.getProperties()).build();
//	private static SessionFactory sessionFactory;
	private static Configuration cof = new Configuration().configure();
	private static ServiceRegistry registry = new StandardServiceRegistryBuilder().applySettings(cof.getProperties()).build();
	private static SessionFactory sFactory = cof.buildSessionFactory(registry);
	private static Session session = sFactory.openSession();
//	private static Transaction tx = session.beginTransaction();
	
	public static Session getSession()throws HibernateException {
		Session session = (Session) threadLocal.get();
		if (session == null || !session.isOpen()) {
			if (sFactory == null) {
//				rebulitSessionFactory();

			}
			session = (sFactory != null) ? sFactory.openSession() : null;
			threadLocal.set(session);
		}
		return session;
	}
	public static void closeSession(){
		if(session!=null)session.close();
	}
//	static {
//		try {
//			configuration.configure(configFile);
//			sessionFactory = configuration.buildSessionFactory(registry);
//
//		} catch (Exception e) {
//			System.out.println("%%%%Error Creating SessionFactory%%%%");
//			e.printStackTrace();
//		}
//	}
//
//	private HibernateSessionFactory() {
//	}
//
//	public static Session getSession() throws HibernateException {
//		Session session = (Session) threadLocal.get();
//		if (session == null || !session.isOpen()) {
//			if (sessionFactory == null) {
//				rebulitSessionFactory();
//
//			}
//			session = (sessionFactory != null) ? sessionFactory.openSession() : null;
//			threadLocal.set(session);
//		}
//		return session;
//
//	}
//
//	private static void rebulitSessionFactory() {
//		try {
//			configuration.configure(configFile);
//			sessionFactory = configuration.buildSessionFactory(registry);
//		} catch (Exception e) {
//			System.err.println("%%%%Error Creating SessionFactory%%%%");
//			e.printStackTrace();
//
//		}
//	}
//
//	public static void closeSession() throws HibernateException {
//		Session session = (Session) threadLocal.get();
//		threadLocal.set(null);
//		if (session != null) {
//			session.close();
//		}
//
//	}
//
//	public static SessionFactory getSessionFactory() {
//		return sessionFactory;
//	}
//
//	public static void setConfigFile(String configFile) {
//		HibernateSessionFactory.configFile = configFile;
//	}
//
//	public static Configuration getConfiguration() {
//		return configuration;
//	}
}
