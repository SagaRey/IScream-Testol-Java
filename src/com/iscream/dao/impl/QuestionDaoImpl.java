package com.iscream.dao.impl;

import com.iscream.dao.QuestionDao;
import com.iscream.entity.Question;
import com.iscream.entity.Questioninfo;
import org.hibernate.HibernateException;
import org.hibernate.Query;

import java.util.List;

/**
 * Created by Saga on 14-3-11.
 */
public class QuestionDaoImpl extends BaseDaoImpl implements QuestionDao{

    private String queryAllHql = "FROM Questioninfo";
    private String getByQnoHql = "FROM Questioninfo WHERE qno = :qno";
    private String qno = "qno";
    private String queryByConditionHql = "FROM Questioninfo WHERE subject LIKE :subject AND type LIKE :type AND difficulty LIKE :difficulty AND question LIKE :keyword";
    private String randomByConditionHql = "FROM Questioninfo WHERE subject LIKE :subject AND type LIKE :type AND difficulty LIKE :difficulty ORDER BY rand()";
    private String subject = "subject";
    private String type = "type";
    private String difficulty = "difficulty";
    private String keyword = "keyword";

    @Override
    public Questioninfo get(int id) {
        if (super.get(Questioninfo.class,id)!=null){
            return (Questioninfo)super.get(Questioninfo.class,id);
        }else {
            return null;
        }
    }

    @Override
    public Questioninfo getByQno(String qno) {
        begin();
        List<Questioninfo> list = null;
        try{
            Query query = session.createQuery(getByQnoHql);
            query.setString(this.qno,qno);
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
    public List<Questioninfo> query(String hql) {
        return createQuery(hql);
    }

    @Override
    public List<Questioninfo> queryAll() {
        return createQuery(queryAllHql);
    }

    @Override
    public List<Questioninfo> queryByCondition(String subject,String type,String difficulty,String keyword) {
        begin();
        subject = "%" + subject + "%";
        type = "%" + type + "%";
        difficulty = "%" + difficulty + "%";
        keyword = "%" + keyword + "%";
        List<Questioninfo> list = null;
        try{
            Query query = session.createQuery(queryByConditionHql);
            query.setString(this.subject,subject);
            query.setString(this.type,type);
            query.setString(this.difficulty,difficulty);
            query.setString(this.keyword,keyword);
            list = query.list();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return list;
        }
    }

    @Override
    public Questioninfo randomByCondition(String subject, String type, String difficulty) {
        begin();
        subject = "%" + subject + "%";
        type = "%" + type + "%";
        difficulty = "%" + difficulty + "%";
        List<Questioninfo> list = null;
        try{
            Query query = session.createQuery(randomByConditionHql).setMaxResults(1);
            query.setString(this.subject,subject);
            query.setString(this.type,type);
            query.setString(this.difficulty,difficulty);
            list = query.list();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return (list.size() == 0?null:list.get(0));
        }
    }
}
