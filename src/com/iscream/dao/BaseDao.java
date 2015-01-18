package com.iscream.dao;

import com.sun.org.apache.xpath.internal.operations.Bool;

import java.util.List;
import java.util.Objects;

/**
 * Created by Saga on 14-3-6.
 */
public interface BaseDao{

    public Object get(Class className,int id);
    public List createQuery(String hql);
    public Boolean save(Object object);
    public Boolean delete(Object object);
    public Boolean update(Object object);
    public Boolean saveOrUpdate(Object object);
}
