package com.iscream.biz;

import com.iscream.dao.impl.TeacherDaoImpl;
import com.iscream.entity.Teacher;

/**
 * Created by Saga on 14-3-10.
 */
public class TeacherBiz {
    private TeacherDaoImpl teacherDaoImpl;

    public boolean verify(String tid,String password){
        Teacher teacher = teacherDaoImpl.getByTid(tid);
        if(teacher != null){
            return (teacher.getPassword().equals(password))?true:false;
        }else{
            return false;
        }
    }

    public void setTeacherDaoImpl(TeacherDaoImpl teacherDaoImpl) {
        this.teacherDaoImpl = teacherDaoImpl;
    }

    public TeacherDaoImpl getTeacherDaoImpl() {
        return teacherDaoImpl;
    }
}
