package com.iscream.entity;

import java.sql.Timestamp;

/**
 * Created by Saga on 14-3-6.
 */
public class Eventinfo {
    private Integer id;
    private Timestamp date;
    private String cno;
    private String operate;
    private String type;
    private String sid;
    private String sname;
    private String subject;
    private String tno;
    private Integer tqno;
    private String qno;
    private Integer chapter;
    private Integer point;
    private Integer score;
    private String optionA;
    private String optionB;
    private String optionC;
    private String optionD;
    private String optionE;
    private String optionF;
    private Integer optionG;
    private String optionH;
    private String optionI;
    private String optionJ;
    private String optionK;
    private String optionL;
    private String optionM;
    private Integer optionN;

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
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

    public Integer getChapter() {
        return chapter;
    }

    public void setChapter(Integer chapter) {
        this.chapter = chapter;
    }

    public Integer getPoint() {
        return point;
    }

    public void setPoint(Integer point) {
        this.point = point;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
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

    public String getOptionH() {
        return optionH;
    }

    public void setOptionH(String optionH) {
        this.optionH = optionH;
    }

    public String getOptionI() {
        return optionI;
    }

    public void setOptionI(String optionI) {
        this.optionI = optionI;
    }

    public String getOptionJ() {
        return optionJ;
    }

    public void setOptionJ(String optionJ) {
        this.optionJ = optionJ;
    }

    public String getOptionK() {
        return optionK;
    }

    public void setOptionK(String optionK) {
        this.optionK = optionK;
    }

    public String getOptionL() {
        return optionL;
    }

    public void setOptionL(String optionL) {
        this.optionL = optionL;
    }

    public String getOptionM() {
        return optionM;
    }

    public void setOptionM(String optionM) {
        this.optionM = optionM;
    }

    public Integer getOptionN() {
        return optionN;
    }

    public void setOptionN(Integer optionN) {
        this.optionN = optionN;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Eventinfo eventinfo = (Eventinfo) o;

        if (chapter != null ? !chapter.equals(eventinfo.chapter) : eventinfo.chapter != null) return false;
        if (cno != null ? !cno.equals(eventinfo.cno) : eventinfo.cno != null) return false;
        if (date != null ? !date.equals(eventinfo.date) : eventinfo.date != null) return false;
        if (id != null ? !id.equals(eventinfo.id) : eventinfo.id != null) return false;
        if (operate != null ? !operate.equals(eventinfo.operate) : eventinfo.operate != null) return false;
        if (optionA != null ? !optionA.equals(eventinfo.optionA) : eventinfo.optionA != null) return false;
        if (optionB != null ? !optionB.equals(eventinfo.optionB) : eventinfo.optionB != null) return false;
        if (optionC != null ? !optionC.equals(eventinfo.optionC) : eventinfo.optionC != null) return false;
        if (optionD != null ? !optionD.equals(eventinfo.optionD) : eventinfo.optionD != null) return false;
        if (optionE != null ? !optionE.equals(eventinfo.optionE) : eventinfo.optionE != null) return false;
        if (optionF != null ? !optionF.equals(eventinfo.optionF) : eventinfo.optionF != null) return false;
        if (optionG != null ? !optionG.equals(eventinfo.optionG) : eventinfo.optionG != null) return false;
        if (optionH != null ? !optionH.equals(eventinfo.optionH) : eventinfo.optionH != null) return false;
        if (optionI != null ? !optionI.equals(eventinfo.optionI) : eventinfo.optionI != null) return false;
        if (optionJ != null ? !optionJ.equals(eventinfo.optionJ) : eventinfo.optionJ != null) return false;
        if (optionK != null ? !optionK.equals(eventinfo.optionK) : eventinfo.optionK != null) return false;
        if (optionL != null ? !optionL.equals(eventinfo.optionL) : eventinfo.optionL != null) return false;
        if (optionM != null ? !optionM.equals(eventinfo.optionM) : eventinfo.optionM != null) return false;
        if (optionN != null ? !optionN.equals(eventinfo.optionN) : eventinfo.optionN != null) return false;
        if (point != null ? !point.equals(eventinfo.point) : eventinfo.point != null) return false;
        if (qno != null ? !qno.equals(eventinfo.qno) : eventinfo.qno != null) return false;
        if (score != null ? !score.equals(eventinfo.score) : eventinfo.score != null) return false;
        if (sid != null ? !sid.equals(eventinfo.sid) : eventinfo.sid != null) return false;
        if (sname != null ? !sname.equals(eventinfo.sname) : eventinfo.sname != null) return false;
        if (subject != null ? !subject.equals(eventinfo.subject) : eventinfo.subject != null) return false;
        if (tno != null ? !tno.equals(eventinfo.tno) : eventinfo.tno != null) return false;
        if (tqno != null ? !tqno.equals(eventinfo.tqno) : eventinfo.tqno != null) return false;
        if (type != null ? !type.equals(eventinfo.type) : eventinfo.type != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (cno != null ? cno.hashCode() : 0);
        result = 31 * result + (operate != null ? operate.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        result = 31 * result + (sid != null ? sid.hashCode() : 0);
        result = 31 * result + (sname != null ? sname.hashCode() : 0);
        result = 31 * result + (subject != null ? subject.hashCode() : 0);
        result = 31 * result + (tno != null ? tno.hashCode() : 0);
        result = 31 * result + (tqno != null ? tqno.hashCode() : 0);
        result = 31 * result + (qno != null ? qno.hashCode() : 0);
        result = 31 * result + (chapter != null ? chapter.hashCode() : 0);
        result = 31 * result + (point != null ? point.hashCode() : 0);
        result = 31 * result + (score != null ? score.hashCode() : 0);
        result = 31 * result + (optionA != null ? optionA.hashCode() : 0);
        result = 31 * result + (optionB != null ? optionB.hashCode() : 0);
        result = 31 * result + (optionC != null ? optionC.hashCode() : 0);
        result = 31 * result + (optionD != null ? optionD.hashCode() : 0);
        result = 31 * result + (optionE != null ? optionE.hashCode() : 0);
        result = 31 * result + (optionF != null ? optionF.hashCode() : 0);
        result = 31 * result + (optionG != null ? optionG.hashCode() : 0);
        result = 31 * result + (optionH != null ? optionH.hashCode() : 0);
        result = 31 * result + (optionI != null ? optionI.hashCode() : 0);
        result = 31 * result + (optionJ != null ? optionJ.hashCode() : 0);
        result = 31 * result + (optionK != null ? optionK.hashCode() : 0);
        result = 31 * result + (optionL != null ? optionL.hashCode() : 0);
        result = 31 * result + (optionM != null ? optionM.hashCode() : 0);
        result = 31 * result + (optionN != null ? optionN.hashCode() : 0);
        return result;
    }
}
