package com.iscream.entity;

/**
 * Created by Saga on 14-3-6.
 */
public class Teacher {
    private Integer id;
    private String tid;
    private String tname;
    private String password;
    private String subject;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Teacher teacher = (Teacher) o;

        if (id != null ? !id.equals(teacher.id) : teacher.id != null) return false;
        if (password != null ? !password.equals(teacher.password) : teacher.password != null) return false;
        if (subject != null ? !subject.equals(teacher.subject) : teacher.subject != null) return false;
        if (tid != null ? !tid.equals(teacher.tid) : teacher.tid != null) return false;
        if (tname != null ? !tname.equals(teacher.tname) : teacher.tname != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (tid != null ? tid.hashCode() : 0);
        result = 31 * result + (tname != null ? tname.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (subject != null ? subject.hashCode() : 0);
        return result;
    }
}
