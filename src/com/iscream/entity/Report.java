package com.iscream.entity;

/**
 * Created by Saga on 14-3-6.
 */
public class Report {
    private Integer id;
    private String cno;
    private Integer score;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Report report = (Report) o;

        if (cno != null ? !cno.equals(report.cno) : report.cno != null) return false;
        if (id != null ? !id.equals(report.id) : report.id != null) return false;
        if (score != null ? !score.equals(report.score) : report.score != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (cno != null ? cno.hashCode() : 0);
        result = 31 * result + (score != null ? score.hashCode() : 0);
        return result;
    }
}
