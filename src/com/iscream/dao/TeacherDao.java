package com.iscream.dao;

import com.iscream.entity.Teacher;

import java.util.List;

/**
 * Created by Saga on 14-3-10.
 */
public interface TeacherDao extends BaseDao {

    public Teacher get(int id);
    public Teacher getByTid(String tid);
    public Boolean delete(int id);
    public List<Teacher> query(String hql);
    public List<Teacher> queryAll();
    public List<Teacher> queryBySubject(String subject);
    public List<Teacher> queryByTidOrTname(String keyword);
}
