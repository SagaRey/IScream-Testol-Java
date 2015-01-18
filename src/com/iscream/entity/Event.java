package com.iscream.entity;

import java.sql.Timestamp;

/**
 * Created by Saga on 14-3-6.
 */
public class Event {
    private Integer id;
    private Timestamp date;
    private String cno;
    private String operate;
    private Integer tqno;
    private String optionA;
    private String optionB;
    private String optionC;
    private String optionD;
    private String optionE;
    private String optionF;
    private Integer optionG;
    private Integer score;

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

    public String getOperate() {
        return operate;
    }

    public void setOperate(String operate) {
        this.operate = operate;
    }

    public Integer getTqno() {
        return tqno;
    }

    public void setTqno(Integer tqno) {
        this.tqno = tqno;
    }

    public String getOptionA() {
        return optionA;
    }

    public void setOptionA(String optionA) {
        this.optionA = optionA;
    }

    public String getOptionB() {
        return optionB;
    }

    public void setOptionB(String optionB) {
        this.optionB = optionB;
    }

    public String getOptionC() {
        return optionC;
    }

    public void setOptionC(String optionC) {
        this.optionC = optionC;
    }

    public String getOptionD() {
        return optionD;
    }

    public void setOptionD(String optionD) {
        this.optionD = optionD;
    }

    public String getOptionE() {
        return optionE;
    }

    public void setOptionE(String optionE) {
        this.optionE = optionE;
    }

    public String getOptionF() {
        return optionF;
    }

    public void setOptionF(String optionF) {
        this.optionF = optionF;
    }

    public Integer getOptionG() {
        return optionG;
    }

    public void setOptionG(Integer optionG) {
        this.optionG = optionG;
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

        Event event = (Event) o;

        if (cno != null ? !cno.equals(event.cno) : event.cno != null) return false;
        if (date != null ? !date.equals(event.date) : event.date != null) return false;
        if (id != null ? !id.equals(event.id) : event.id != null) return false;
        if (operate != null ? !operate.equals(event.operate) : event.operate != null) return false;
        if (optionA != null ? !optionA.equals(event.optionA) : event.optionA != null) return false;
        if (optionB != null ? !optionB.equals(event.optionB) : event.optionB != null) return false;
        if (optionC != null ? !optionC.equals(event.optionC) : event.optionC != null) return false;
        if (optionD != null ? !optionD.equals(event.optionD) : event.optionD != null) return false;
        if (optionE != null ? !optionE.equals(event.optionE) : event.optionE != null) return false;
        if (optionF != null ? !optionF.equals(event.optionF) : event.optionF != null) return false;
        if (optionG != null ? !optionG.equals(event.optionG) : event.optionG != null) return false;
        if (score != null ? !score.equals(event.score) : event.score != null) return false;
        if (tqno != null ? !tqno.equals(event.tqno) : event.tqno != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (cno != null ? cno.hashCode() : 0);
        result = 31 * result + (operate != null ? operate.hashCode() : 0);
        result = 31 * result + (tqno != null ? tqno.hashCode() : 0);
        result = 31 * result + (optionA != null ? optionA.hashCode() : 0);
        result = 31 * result + (optionB != null ? optionB.hashCode() : 0);
        result = 31 * result + (optionC != null ? optionC.hashCode() : 0);
        result = 31 * result + (optionD != null ? optionD.hashCode() : 0);
        result = 31 * result + (optionE != null ? optionE.hashCode() : 0);
        result = 31 * result + (optionF != null ? optionF.hashCode() : 0);
        result = 31 * result + (optionG != null ? optionG.hashCode() : 0);
        result = 31 * result + (score != null ? score.hashCode() : 0);
        return result;
    }
}
