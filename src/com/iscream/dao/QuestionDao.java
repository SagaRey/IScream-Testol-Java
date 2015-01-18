package com.iscream.dao;

import com.iscream.entity.Question;
import com.iscream.entity.Questioninfo;

import java.util.List;

/**
 * Created by Saga on 14-3-11.
 */
public interface QuestionDao extends BaseDao {

    public Questioninfo get(int id);
    public Questioninfo getByQno(String qno);
    public Boolean delete(int id);
    public List<Questioninfo> query(String hql);
    public List<Questioninfo> queryAll();
    public List<Questioninfo> queryByCondition(String subject,String type,String difficulty,String keyword);
    public Questioninfo randomByCondition(String subject,String type,String difficulty);
}
