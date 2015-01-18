package com.iscream.entity;

import java.sql.Timestamp;

/**
 * Created by Saga on 14-3-6.
 */
public class Testcard {
    private Integer id;
    private Timestamp date;
    private String cno;
    private String sid;
    private String tno;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getTno() {
        return tno;
    }

    public void setTno(String tno) {
        this.tno = tno;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Testcard testcard = (Testcard) o;

        if (cno != null ? !cno.equals(testcard.cno) : testcard.cno != null) return false;
        if (date != null ? !date.equals(testcard.date) : testcard.date != null) return false;
        if (id != null ? !id.equals(testcard.id) : testcard.id != null) return false;
        if (sid != null ? !sid.equals(testcard.sid) : testcard.sid != null) return false;
        if (tno != null ? !tno.equals(testcard.tno) : testcard.tno != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (cno != null ? cno.hashCode() : 0);
        result = 31 * result + (sid != null ? sid.hashCode() : 0);
        result = 31 * result + (tno != null ? tno.hashCode() : 0);
        return result;
    }
}
