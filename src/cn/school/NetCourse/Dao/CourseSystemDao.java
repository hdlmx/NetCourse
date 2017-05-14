package cn.school.NetCourse.Dao;

import cn.school.NetCourse.hibernateSessionFactory.HibernateSessionFactory;
import cn.school.NetCourse.pojo.Course;
import cn.school.NetCourse.pojo.CourseSystem;
import cn.school.NetCourse.pojo.Major;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class CourseSystemDao {
    private static Session session = HibernateSessionFactory.getSession();
    private static Transaction tx = null;


    public void add(CourseSystem courseSystem) {

        if (courseSystem.getGrade() > 4 || courseSystem.getGrade() < 1) {

            return;
        }

        List<Course> list = search(courseSystem.getMajor(), courseSystem.getGrade());
        boolean isExist = false;
        for (Course course : list) {

            if (course.getCourseId().equals(courseSystem.getCourse().getCourseId())) {
                isExist = true;

                return;
            }

        }

        Integer grade = search(courseSystem.getMajor(), courseSystem.getCourse()).getGrade();
        System.out.println(grade);

        if (grade != null) {

            return;
        }

        try {
            tx = session.beginTransaction();
            session.save(courseSystem);
            tx.commit();
//			System.out.println(courseSystem);


        } catch (Exception e) {
            e.printStackTrace();
            if (tx != null)
                tx.rollback();
        }
    }

    public void delete(CourseSystem courseSystem) {
        try {
            tx = session.beginTransaction();
            session.delete(courseSystem);
            tx.commit();
//			System.out.println(courseSystem);

        } catch (Exception e) {
            e.printStackTrace();
            if (tx != null)
                tx.rollback();

        }
    }

    public void update(CourseSystem courseSystem) {
        try {
            tx = session.beginTransaction();
            session.update(courseSystem);
            tx.commit();
//			System.out.println(courseSystem);

        } catch (Exception e) {
            e.printStackTrace();
            if (tx != null)
                tx.rollback();

        }

    }

    public List<Course> search(Major major, Integer grade) {

        String hql = "from CourseSystem cs where cs.major=:major and cs.grade=:grade";
        Query query = session.createQuery(hql);
        query.setParameter("major", major);
        query.setParameter("grade", grade);
        List<CourseSystem> list = query.list();
        List<Course> courseList = new ArrayList<Course>();
        for (int i = 0; i < list.size(); i++) {
            courseList.add(list.get(i).getCourse());
//			System.out.println(list.get(i));
        }
        return courseList;
    }

	/*
     *
	 */
    // public Integer search(Major major, Course course) {
    //
    // String hql = "from CourseSystem cs where cs.major=:major and
    // cs.course=:course";
    // Query query = session.createQuery(hql);
    // query.setParameter("major", major);
    // query.setParameter("course", course);
    // List<CourseSystem> list = query.list();
    // Integer grade = null;
    // for (CourseSystem courseSystem : list) {
    // System.out.println(courseSystem);
    // grade = courseSystem.getGrade();
    // }
    // return grade;
    //
    // }

    public CourseSystem search(Major major, Course course) {
        String hql = "from CourseSystem cs where cs.major=:major and cs.course=:course";
        Query query = session.createQuery(hql);
        query.setParameter("major", major);
        query.setParameter("course", course);
        List<CourseSystem> list = query.list();
        CourseSystem courseSystem = new CourseSystem();
        if (list.size() == 0) {
            return courseSystem;
        } else {
            courseSystem = list.get(0);
            return courseSystem;
        }

    }

}
