package com.iscream.entity;

/**
 * Created by Saga on 14-3-6.
 */
public class Manager {
    private Integer id;
    private String mid;
    private String password;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Manager manager = (Manager) o;

        if (id != null ? !id.equals(manager.id) : manager.id != null) return false;
        if (mid != null ? !mid.equals(manager.mid) : manager.mid != null) return false;
        if (password != null ? !password.equals(manager.password) : manager.password != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (mid != null ? mid.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        return result;
    }
}
