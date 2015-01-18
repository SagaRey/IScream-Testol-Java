package com.iscream.action;

import com.iscream.biz.QuestionBiz;
import com.iscream.entity.Questioninfo;
import com.iscream.util.Common;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Saga on 14-3-11.
 */
public class QuestionAction extends BaseAction {
    private QuestionBiz questionBiz;

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String query() throws Exception {
        List<Questioninfo> list = questionBiz.getQuestionDaoImpl().queryAll();
        request.getSession().setAttribute("questionInfoList",list);
        return SUCCESS;
    }

    public void setQuestionBiz(QuestionBiz questionBiz) {
        this.questionBiz = questionBiz;
    }

    public QuestionBiz getQuestionBiz() {
        return questionBiz;
    }

    public String querybycondition() throws Exception {

        String subject = Common.isNotEmpty(request.getParameter("subject"))?request.getParameter("subject"):"";
        String type = Common.isNotEmpty(request.getParameter("type"))?request.getParameter("type"):"";
        String difficulty = Common.isNotEmpty(request.getParameter("difficulty"))?request.getParameter("difficulty"):"";
        String keyword = Common.isNotEmpty(request.getParameter("keyword"))?request.getParameter("keyword"):"";
        List<Questioninfo> list =  questionBiz.getQuestionDaoImpl().queryByCondition(subject,type,difficulty,keyword);
        request.getSession().setAttribute("questionInfoList",list);
        return SUCCESS;
    }

    public String practice() throws Exception {
        String subject = Common.isNotEmpty(request.getParameter("subject"))?request.getParameter("subject"):"";
        String type = Common.isNotEmpty(request.getParameter("type"))?request.getParameter("type"):"";
        String difficulty = Common.isNotEmpty(request.getParameter("difficulty"))?request.getParameter("difficulty"):"";
        Questioninfo questioninfo =  questionBiz.getQuestionDaoImpl().randomByCondition(subject,type,difficulty);
        List<Questioninfo> list = new ArrayList<Questioninfo>();
        if(questioninfo != null){
            list.add(questioninfo);
            request.getSession().setAttribute("questionInfoList", list);
        }
        request.getSession().setAttribute("subject",subject);
        request.getSession().setAttribute("type", type);
        request.getSession().setAttribute("difficulty", difficulty);
//        System.out.println(list.get(0) + "===");
        return SUCCESS;
    }
}
