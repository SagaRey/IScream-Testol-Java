package com.iscream.dao.impl;

import com.iscream.dao.BaseDao;
import com.iscream.util.HibernateSessionFactory;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Saga on 14-3-6.
 */
public class BaseDaoImpl implements BaseDao{

    protected Session session;
    protected SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void begin(){
//        session = sessionFactory.openSession();
        session = HibernateSessionFactory.getSession();
    }

    public void end(){
        session.close();
    }

    @Override
    public Object get(Class className, int id) {
        begin();
        Object object = null;
        try{
            object = session.get(className, id);
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return object;
        }
    }

    @Override
    public List createQuery(String hql) {
        begin();
        List list = null;
        try{
            list = session.createQuery(hql).list();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return list;
        }
    }

    @Override
    public Boolean save(Object object) {
        begin();
        Boolean bool = false;
        try{
            session.beginTransaction();
            session.save(object);
            session.getTransaction().commit();
            bool = true;
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return bool;
        }
    }

    @Override
    public Boolean delete(Object object) {
        begin();
        Boolean bool = false;
        try{
            session.beginTransaction();
            session.delete(object);
            session.getTransaction().commit();
            bool = true;
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return bool;
        }
    }

    @Override
    public Boolean update(Object object) {
        begin();
        Boolean bool = false;
        try{
            session.beginTransaction();
            session.update(object);
            session.getTransaction().commit();
            bool = true;
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return bool;
        }
    }

    @Override
    public Boolean saveOrUpdate(Object object){
        begin();
        Boolean bool = false;
        try{
            session.beginTransaction();
            session.saveOrUpdate(object);
            session.getTransaction().commit();
            bool = true;
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return bool;
        }
    }

    public List queryByPage(String hql,int offset,int pageSize){
        begin();
        List list = null;
        try{
            list = session.createQuery(hql).setFirstResult(offset).setMaxResults(pageSize).list();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return list;
        }
    }

    public List queryByPage(String hql,Object value,int offset,int pageSize){
        begin();
        List list = null;
        try{
            list = session.createQuery(hql).setParameter(0,value).setFirstResult(offset).setMaxResults(pageSize).list();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return list;
        }
    }

    public List queryByPage(String hql,Object[] values,int offset,int pageSize){
        begin();
        List list = null;
        try{
            Query query = session.createQuery(hql);
            for(int i = 0 ; i < values.length ; i++){
                query.setParameter(i,values[i]);
            }
            list = query.setFirstResult(offset).setMaxResults(pageSize).list();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            end();
            return list;
        }
    }
}
