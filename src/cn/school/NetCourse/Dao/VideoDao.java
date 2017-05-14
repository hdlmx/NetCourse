package cn.school.NetCourse.Dao;

import cn.school.NetCourse.hibernateSessionFactory.HibernateSessionFactory;
import cn.school.NetCourse.pojo.Course;
import cn.school.NetCourse.pojo.Video;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class VideoDao {
	private static Session session = HibernateSessionFactory.getSession();
	private static Transaction tx = null;

	public void add(Video video) {
		try {
			tx = session.beginTransaction();
			session.save(video);
			tx.commit();
//			System.out.println(video);

		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}
	}

	public void delete(Video video) {
		try {
			tx = session.beginTransaction();
			session.delete(video);
			tx.commit();
//			System.out.println(video);

		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}

	}

	public void update(Video video) {
		try {
			tx = session.beginTransaction();
			session.update(video);
			tx.commit();
//			System.out.println(video);

		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();
		}

	}

	public Video search(Integer videoid) {
		Video video = (Video) session.get(Video.class, videoid);
//		System.out.println(video);
		return video;

	}

	public List<Video> search(String videoName) {
		String hql = "from Video v where v.videoName=:videoName";
		List<Video> list = session.createQuery(hql).setParameter("videoName", videoName).list();
//		for (Video video : list) {
//			System.out.println(video);
//		}
		return list;

	}

	public List<Video> search(Course course) {
		String hql = "from Video v where v.course=:course";
		List<Video> list = session.createQuery(hql).setParameter("course", course).list();
//		for (Video video : list) {
//			System.out.println(video);
//		}
		return list;

	}
}
