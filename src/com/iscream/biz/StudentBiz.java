package com.iscream.biz;

import com.iscream.dao.StudentDao;
import com.iscream.dao.impl.StudentDaoImpl;
import com.iscream.entity.Student;

/**
 * Created by Saga on 14-3-10.
 */
public class StudentBiz {

    private StudentDaoImpl studentDaoImpl;

    public boolean verify(String sid,String password){
        Student student = studentDaoImpl.getBySid(sid);
        if(student != null){
            return (student.getPassword().equals(password))?true:false;
        }else{
            return false;
        }
    }

    public void setStudentDaoImpl(StudentDaoImpl studentDaoImpl) {
        this.studentDaoImpl = studentDaoImpl;
    }

    public StudentDaoImpl getStudentDaoImpl() {
        return studentDaoImpl;
    }
}
