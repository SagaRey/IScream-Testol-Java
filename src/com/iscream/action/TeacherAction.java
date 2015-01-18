package com.iscream.action;

import com.iscream.biz.TeacherBiz;
import com.iscream.entity.Teacher;
import com.iscream.util.Common;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Saga on 14-3-10.
 */
public class TeacherAction extends BaseAction{
    private TeacherBiz teacherBiz;

    @Override
    public String execute() throws Exception {
        return  (request.getSession().getAttribute("tid") == null)?LOGIN:SUCCESS;
    }

    public String login() throws Exception {
        String tid = request.getParameter("tid");
        String password = request.getParameter("password");
        if(Common.isNotEmpty(tid) && Common.isNotEmpty(password)){
            if(teacherBiz.verify(tid,password)){
                request.getSession().setAttribute("tid",tid);
                return SUCCESS;
            }else{
                return LOGIN;
            }
        }else{
            return LOGIN;
        }
    }

    public void setTeacherBiz(TeacherBiz teacherBiz) {
        this.teacherBiz = teacherBiz;
    }

    public TeacherBiz getTeacherBiz() {
        return teacherBiz;
    }
}
