package com.iscream.action;

import com.iscream.biz.StudentBiz;
import com.iscream.util.Common;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * Created by Saga on 14-3-6.
 */
public class StudentAction extends BaseAction{

    private StudentBiz studentBiz;

    public String login() throws Exception {
        String sid = request.getParameter("sid");
        String password = request.getParameter("password");
        if(Common.isNotEmpty(sid) && Common.isNotEmpty(password)){
            return (studentBiz.verify(sid,password))?SUCCESS:LOGIN;
        }else{
            return LOGIN;
        }
    }

    public void setStudentBiz(StudentBiz studentBiz) {
        this.studentBiz = studentBiz;
    }

    public StudentBiz getStudentBiz() {
        return studentBiz;
    }

}
