package com.iscream.biz;

import com.iscream.dao.impl.TestDaoImpl;

/**
 * Created by Saga on 14-3-12.
 */
public class TestBiz {

    private TestDaoImpl testDaoImpl;

    public void setTestDaoImpl(TestDaoImpl testDaoImpl) {
        this.testDaoImpl = testDaoImpl;
    }

    public TestDaoImpl getTestDaoImpl() {
        return testDaoImpl;
    }
}
