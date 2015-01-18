import com.iscream.dao.impl.BaseDaoImpl;
import com.iscream.dao.impl.StudentDaoImpl;
import com.iscream.dao.impl.TeacherDaoImpl;
import com.iscream.entity.Manager;
import com.iscream.entity.Student;
import com.iscream.entity.Teacher;
import org.hibernate.Session;
import org.hibernate.Query;
import com.iscream.util.HibernateSessionFactory;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Saga on 14-3-1.
 */
public class Main {

    public static void main(final String[] args) throws Exception {
        TeacherDaoImpl dao;
        Teacher teacher;
        List<Teacher> list;
        dao = new TeacherDaoImpl();
        teacher = dao.get(1);
        System.out.println(teacher.getTid());
        teacher = dao.getByTid("11610001");
        System.out.println(teacher.getTid());
        list = dao.queryAll();
        System.out.println(list.get(0).getId());
        list = dao.queryBySubject("毛泽东思想");
        System.out.println(list.get(0).getId());
        list = dao.queryByTidOrTname("于");
        System.out.println(list.get(0).getId());
    }
}