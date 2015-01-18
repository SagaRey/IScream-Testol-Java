package com.iscream.dao.impl;

import com.iscream.dao.TeacherDao;
import com.iscream.entity.Teacher;
import org.hibernate.HibernateException;
import org.hibernate.Query;

import java.util.List;

/**
 * Created by Saga on 14-3-10.
 */
public class TeacherDaoImpl extends BaseDaoImpl implements TeacherDao {

    private String queryAllHql = "FROM Teacher";
    private String queryByTidOrTnameHql = "FROM Teacher WHERE Tid LIKE :tid OR Tname LIKE :tname";
    private String tid = "tid";
    private String tname = "tname";
    private String getByTidHql = "FROM Teacher WHERE tid = :tid";
    private String queryBySubjectHql = "FROM Teacher WHERE subject = :subject";
    private String subject = "subject";

    @Override
    public Teacher get(int id) {
        if (super.get(Teacher.class,id)!=null){
            return (Teacher)super.get(Teacher.class,id);
        }else {
            return null;
        }
    }

    @Override
    public Teacher getByTid(String tid) {
        begin();
        List<Teacher> list = null;
        try{
            Query query = session.createQuery(getByTidHql);
            query.setString(this.tid,tid);
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
    public List<Teacher> query(String hql) {
        return createQuery(hql);
    }

    @Override
    public List<Teacher> queryAll() {
        return createQuery(queryAllHql);
    }

    @Override
    public List<Teacher> queryBySubject(String subject) {
        begin();
        List<Teacher> list = null;
        try{
            Query query = session.createQuery(queryBySubjectHql);
            query.setString(this.subject,subject);
            list = query.list();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return list;
        }
    }

    @Override
    public List<Teacher> queryByTidOrTname(String keyword) {
        begin();
        keyword = "%" + keyword + "%";
        List<Teacher> list = null;
        try{
            Query query = session.createQuery(queryByTidOrTnameHql);
            query.setString(tid,keyword);
            query.setString(tname,keyword);
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

    public String getQueryByTidOrTnameHql() {
        return queryByTidOrTnameHql;
    }

    public void setQueryByTidOrTnameHql(String queryByTidOrTnameHql) {
        this.queryByTidOrTnameHql = queryByTidOrTnameHql;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getGetByTidHql() {
        return getByTidHql;
    }

    public void setGetByTidHql(String getByTidHql) {
        this.getByTidHql = getByTidHql;
    }

    public String getQueryBySubjectHql() {
        return queryBySubjectHql;
    }

    public void setQueryBySubjectHql(String queryBySubjectHql) {
        this.queryBySubjectHql = queryBySubjectHql;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
}
