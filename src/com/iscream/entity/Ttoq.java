package com.iscream.entity;

/**
 * Created by Saga on 14-3-6.
 */
public class Ttoq {
    private Integer id;
    private String tno;
    private Integer tqno;
    private String qno;

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

    public Integer getTqno() {
        return tqno;
    }

    public void setTqno(Integer tqno) {
        this.tqno = tqno;
    }

    public String getQno() {
        return qno;
    }

    public void setQno(String qno) {
        this.qno = qno;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Ttoq ttoq = (Ttoq) o;

        if (id != null ? !id.equals(ttoq.id) : ttoq.id != null) return false;
        if (qno != null ? !qno.equals(ttoq.qno) : ttoq.qno != null) return false;
        if (tno != null ? !tno.equals(ttoq.tno) : ttoq.tno != null) return false;
        if (tqno != null ? !tqno.equals(ttoq.tqno) : ttoq.tqno != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (tno != null ? tno.hashCode() : 0);
        result = 31 * result + (tqno != null ? tqno.hashCode() : 0);
        result = 31 * result + (qno != null ? qno.hashCode() : 0);
        return result;
    }
}
