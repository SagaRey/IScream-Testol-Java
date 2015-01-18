package com.iscream.biz;

import com.iscream.dao.impl.ManagerDaoImpl;

/**
 * Created by Saga on 14-3-10.
 */
public class ManagerBiz {
    private ManagerDaoImpl managerDaoImpl;

    public void setManagerDaoImpl(ManagerDaoImpl managerDaoImpl) {
        this.managerDaoImpl = managerDaoImpl;
    }

    public ManagerDaoImpl getManagerDaoImpl() {
        return managerDaoImpl;
    }
}
