package com.iscream.entity;

import java.sql.Timestamp;

/**
 * Created by Saga on 14-3-6.
 */
public class Testinfo {
    private Integer id;
    private String tno;
    private String tid;
    private String tname;
    private String subject;
    private Integer difficulty;
    private Integer quantity;
    private Integer duration;
    private Integer total;
    private Timestamp date;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTno() {
        return tno;
    }

    public void setTno(String tno) {
        this.tno = tno;
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

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public Integer getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(Integer difficulty) {
        this.difficulty = difficulty;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Testinfo testinfo = (Testinfo) o;

        if (date != null ? !date.equals(testinfo.date) : testinfo.date != null) return false;
        if (difficulty != null ? !difficulty.equals(testinfo.difficulty) : testinfo.difficulty != null) return false;
        if (duration != null ? !duration.equals(testinfo.duration) : testinfo.duration != null) return false;
        if (id != null ? !id.equals(testinfo.id) : testinfo.id != null) return false;
        if (quantity != null ? !quantity.equals(testinfo.quantity) : testinfo.quantity != null) return false;
        if (subject != null ? !subject.equals(testinfo.subject) : testinfo.subject != null) return false;
        if (tid != null ? !tid.equals(testinfo.tid) : testinfo.tid != null) return false;
        if (tname != null ? !tname.equals(testinfo.tname) : testinfo.tname != null) return false;
        if (tno != null ? !tno.equals(testinfo.tno) : testinfo.tno != null) return false;
        if (total != null ? !total.equals(testinfo.total) : testinfo.total != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (tno != null ? tno.hashCode() : 0);
        result = 31 * result + (tid != null ? tid.hashCode() : 0);
        result = 31 * result + (tname != null ? tname.hashCode() : 0);
        result = 31 * result + (subject != null ? subject.hashCode() : 0);
        result = 31 * result + (difficulty != null ? difficulty.hashCode() : 0);
        result = 31 * result + (quantity != null ? quantity.hashCode() : 0);
        result = 31 * result + (duration != null ? duration.hashCode() : 0);
        result = 31 * result + (total != null ? total.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        return result;
    }
}
