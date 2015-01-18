package com.iscream.dao.impl;

import com.iscream.dao.StudentDao;
import com.iscream.entity.Student;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import java.util.List;

/**
 * Created by Saga on 14-3-6.
 */
public class StudentDaoImpl extends BaseDaoImpl implements StudentDao{

    private String queryAllHql = "FROM Student";
    private String queryBySidOrSnameHql = "FROM Student WHERE Sid LIKE :sid OR Sname LIKE :sname";
    private String sid = "sid";
    private String sname = "sname";
    private String getBySidHql = "FROM Student WHERE sid = :sid";
//    private String queryAllHql;
//    private String queryBySidOrSnameHql;
//    private String sid;
//    private String sname;
//    private String getBySidHql;

    @Override
    public Student get(int id) {
        if (super.get(Student.class,id)!=null){
            return (Student)super.get(Student.class,id);
        }else {
            return null;
        }
    }

    @Override
    public Student getBySid(String sid) {
        begin();
        List<Student> list = null;
        try{
            Query query = session.createQuery(getBySidHql);
            query.setString(this.sid,sid);
            list = query.list();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return (list.size() == 0)?null:list.get(0);
        }
    }

    @Override
    public Boolean delete(int id) {
        return super.delete(get(id));
    }

    @Override
    public List<Student> query(String hql) {
//        begin();
//        List<Student> list = null;
//        try{
//            list = session.createQuery(str).list();
//        }catch (HibernateException e){
//            e.printStackTrace();
//        }finally {
//            end();
//            return list;
//        }
        return createQuery(hql);
    }

    @Override
    public List<Student> queryAll() {
        return createQuery(queryAllHql);
    }

    @Override
    public List<Student> queryBySidOrSname(String keyword) {
        begin();
        keyword = "%" + keyword + "%";
        List<Student> list = null;
        try{
            Query query = session.createQuery(queryBySidOrSnameHql);
            query.setString(sid,keyword);
            query.setString(sname,keyword);
            list = query.list();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return list;
        }
    }

    public String getQueryAllHql() {
        return queryAllHql;
    }

    public void setQueryAllHql(String queryAllHql) {
        this.queryAllHql = queryAllHql;
    }

    public String getQueryBySidOrSnameHql() {
        return queryBySidOrSnameHql;
    }

    public void setQueryBySidOrSnameHql(String queryBySidOrSnameHql) {
        this.queryBySidOrSnameHql = queryBySidOrSnameHql;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getGetBySidHql() {
        return getBySidHql;
    }

    public void setGetBySidHql(String getBySidHql) {
        this.getBySidHql = getBySidHql;
    }
}
