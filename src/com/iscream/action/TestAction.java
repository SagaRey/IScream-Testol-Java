package com.iscream.action;

import com.iscream.biz.TestBiz;

/**
 * Created by Saga on 14-3-12.
 */
public class TestAction extends BaseAction {
    private TestBiz testBiz;

    public void setTestBiz(TestBiz testBiz) {
        this.testBiz = testBiz;
    }

    public TestBiz getTestBiz() {
        return testBiz;
    }

    public String test() throws Exception {
        return "success";
    }
}
