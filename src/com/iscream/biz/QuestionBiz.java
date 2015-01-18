package com.iscream.biz;

import com.iscream.dao.impl.QuestionDaoImpl;

/**
 * Created by Saga on 14-3-11.
 */
public class QuestionBiz {
    private QuestionDaoImpl questionDaoImpl;

    public void setQuestionDaoImpl(QuestionDaoImpl questionDaoImpl) {
        this.questionDaoImpl = questionDaoImpl;
    }

    public QuestionDaoImpl getQuestionDaoImpl() {
        return questionDaoImpl;
    }
}
