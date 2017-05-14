package cn.school.NetCourse.Dao;

import cn.school.NetCourse.hibernateSessionFactory.HibernateSessionFactory;
import cn.school.NetCourse.pojo.Course;
import cn.school.NetCourse.pojo.Teacher;
import cn.school.NetCourse.pojo.Video;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;
import java.util.Set;

public class CourseDao {
    private static Session session = HibernateSessionFactory.getSession();
    private static Transaction tx = null;


    public void add(Course course) {

        try {
            tx = session.beginTransaction();
            session.save(course);
            tx.commit();
            System.out.println(course);

        } catch (Exception e) {
            e.printStackTrace();
            if (tx != null)
                tx.rollback();
        }
    }



    public void delete(Course course) {
        try {
            tx = session.beginTransaction();
            session.delete(course);
            tx.commit();
            // System.out.println(course);

        } catch (Exception e) {
            e.printStackTrace();
            if (tx != null)
                tx.rollback();
        }

    }


    public void update(Course course) {
        try {
            tx = session.beginTransaction();
            session.update(course);
            tx.commit();

        } catch (Exception e) {
            e.printStackTrace();
            if (tx != null)
                tx.rollback();
        }

    }


    public Course search(Integer id) {
        // tx = session.beginTransaction();
        Course course = (Course) session.get(Course.class, id);
        // System.out.println(course);
        return course;

    }


    public List<Course> search(String name) {
        String hql = "from Course c where c.courseName=:name";
        List<Course> list = session.createQuery(hql).setParameter("name", name).list();
        // for (Course course : list) {
        // System.out.println(course);
        // }
        return list;

    }

    public List<Course> searchCourses(String courseName) {
        String hql = "from Course c where c.courseName like:name";
//		List<Course> list = session.createQuery(hql).list();
        Query query = session.createQuery(hql);
        query.setParameter("name", "%" + courseName + "%");
        List<Course> list = query.list();
        for (Course course : list) {
            System.out.println(course);
        }
        return list;

    }


    public List<Course> search(Teacher teacher) {
        String hql = "from Course c Where c.teacher=:teacher";
        List<Course> list = session.createQuery(hql).setParameter("teacher", teacher).list();
        // for (Course course : list) {
        // System.out.println(course);
        // }
        return list;

    }

    public List<Course> search(Teacher teacher, Integer course) {
        String hql = "from Course c Where c.teacher=:teacher and c.courseId=:course";
        Query query = session.createQuery(hql);
        query.setParameter("teacher", teacher);
        query.setParameter("course", course);
        List<Course> list = query.list();
        // for (Course course : list) {
        // System.out.println(course);
        // }
        return list;

    }


    public Set<Video> search(Course course) {
        Course course2 = (Course) session.get(Course.class, course.getCourseId());
        Set<Video> set = course2.getVideos();
        // for(Video video:set){
        // System.out.println(video);
        // }
        return set;

    }

}
