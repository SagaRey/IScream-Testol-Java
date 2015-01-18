package com.iscream.entity;

import java.sql.Timestamp;

/**
 * Created by Saga on 14-3-6.
 */
public class Test {
    private Integer id;
    private Timestamp date;
    private String tno;
    private String subject;
    private String tid;
    private Integer quantity;
    private Integer duration;
    private Integer difficulty;
    private Integer total;

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

    public String getTno() {
        return tno;
    }

    public void setTno(String tno) {
        this.tno = tno;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
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

    public Integer getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(Integer difficulty) {
        this.difficulty = difficulty;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Test test = (Test) o;

        if (date != null ? !date.equals(test.date) : test.date != null) return false;
        if (difficulty != null ? !difficulty.equals(test.difficulty) : test.difficulty != null) return false;
        if (duration != null ? !duration.equals(test.duration) : test.duration != null) return false;
        if (id != null ? !id.equals(test.id) : test.id != null) return false;
        if (quantity != null ? !quantity.equals(test.quantity) : test.quantity != null) return false;
        if (subject != null ? !subject.equals(test.subject) : test.subject != null) return false;
        if (tid != null ? !tid.equals(test.tid) : test.tid != null) return false;
        if (tno != null ? !tno.equals(test.tno) : test.tno != null) return false;
        if (total != null ? !total.equals(test.total) : test.total != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (tno != null ? tno.hashCode() : 0);
        result = 31 * result + (subject != null ? subject.hashCode() : 0);
        result = 31 * result + (tid != null ? tid.hashCode() : 0);
        result = 31 * result + (quantity != null ? quantity.hashCode() : 0);
        result = 31 * result + (duration != null ? duration.hashCode() : 0);
        result = 31 * result + (difficulty != null ? difficulty.hashCode() : 0);
        result = 31 * result + (total != null ? total.hashCode() : 0);
        return result;
    }
}
