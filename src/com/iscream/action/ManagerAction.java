package com.iscream.action;

import com.iscream.biz.ManagerBiz;

/**
 * Created by Saga on 14-3-10.
 */
public class ManagerAction extends BaseAction {
    private ManagerBiz managerBiz;

    public String login() throws Exception{
        return SUCCESS;
    }

    public void setManagerBiz(ManagerBiz managerBiz) {
        this.managerBiz = managerBiz;
    }

    public ManagerBiz getManagerBiz() {
        return managerBiz;
    }
}
