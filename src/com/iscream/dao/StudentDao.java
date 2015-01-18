package com.iscream.dao;

import com.iscream.entity.Student;

import java.util.List;

/**
 * Created by Saga on 14-3-6.
 */
public interface StudentDao extends BaseDao{

    public Student get(int id);
    public Student getBySid(String sid);
    public Boolean delete(int id);
    public List<Student> query(String hql);
    public List<Student> queryAll();
    public List<Student> queryBySidOrSname(String keyword);
}
