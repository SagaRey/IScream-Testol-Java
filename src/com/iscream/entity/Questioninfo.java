package com.iscream.entity;

import java.sql.Timestamp;

/**
 * Created by Saga on 14-3-6.
 */
public class Questioninfo {
    private Integer id;
    private String qno;
    private String subject;
    private Integer chapter;
    private String tid;
    private String tname;
    private String question;
    private Integer difficulty;
    private Integer point;
    private String knowledge1;
    private String knowledge2;
    private String knowledge3;
    private String keyword1;
    private String keyword2;
    private String keyword3;
    private String type;
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
    private Timestamp date;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getQno() {
        return qno;
    }

    public void setQno(String qno) {
        this.qno = qno;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public Integer getChapter() {
        return chapter;
    }

    public void setChapter(Integer chapter) {
        this.chapter = chapter;
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

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public Integer getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(Integer difficulty) {
        this.difficulty = difficulty;
    }

    public Integer getPoint() {
        return point;
    }

    public void setPoint(Integer point) {
        this.point = point;
    }

    public String getKnowledge1() {
        return knowledge1;
    }

    public void setKnowledge1(String knowledge1) {
        this.knowledge1 = knowledge1;
    }

    public String getKnowledge2() {
        return knowledge2;
    }

    public void setKnowledge2(String knowledge2) {
        this.knowledge2 = knowledge2;
    }

    public String getKnowledge3() {
        return knowledge3;
    }

    public void setKnowledge3(String knowledge3) {
        this.knowledge3 = knowledge3;
    }

    public String getKeyword1() {
        return keyword1;
    }

    public void setKeyword1(String keyword1) {
        this.keyword1 = keyword1;
    }

    public String getKeyword2() {
        return keyword2;
    }

    public void setKeyword2(String keyword2) {
        this.keyword2 = keyword2;
    }

    public String getKeyword3() {
        return keyword3;
    }

    public void setKeyword3(String keyword3) {
        this.keyword3 = keyword3;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

        Questioninfo that = (Questioninfo) o;

        if (chapter != null ? !chapter.equals(that.chapter) : that.chapter != null) return false;
        if (date != null ? !date.equals(that.date) : that.date != null) return false;
        if (difficulty != null ? !difficulty.equals(that.difficulty) : that.difficulty != null) return false;
        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (keyword1 != null ? !keyword1.equals(that.keyword1) : that.keyword1 != null) return false;
        if (keyword2 != null ? !keyword2.equals(that.keyword2) : that.keyword2 != null) return false;
        if (keyword3 != null ? !keyword3.equals(that.keyword3) : that.keyword3 != null) return false;
        if (knowledge1 != null ? !knowledge1.equals(that.knowledge1) : that.knowledge1 != null) return false;
        if (knowledge2 != null ? !knowledge2.equals(that.knowledge2) : that.knowledge2 != null) return false;
        if (knowledge3 != null ? !knowledge3.equals(that.knowledge3) : that.knowledge3 != null) return false;
        if (optionA != null ? !optionA.equals(that.optionA) : that.optionA != null) return false;
        if (optionB != null ? !optionB.equals(that.optionB) : that.optionB != null) return false;
        if (optionC != null ? !optionC.equals(that.optionC) : that.optionC != null) return false;
        if (optionD != null ? !optionD.equals(that.optionD) : that.optionD != null) return false;
        if (optionE != null ? !optionE.equals(that.optionE) : that.optionE != null) return false;
        if (optionF != null ? !optionF.equals(that.optionF) : that.optionF != null) return false;
        if (optionG != null ? !optionG.equals(that.optionG) : that.optionG != null) return false;
        if (optionH != null ? !optionH.equals(that.optionH) : that.optionH != null) return false;
        if (optionI != null ? !optionI.equals(that.optionI) : that.optionI != null) return false;
        if (optionJ != null ? !optionJ.equals(that.optionJ) : that.optionJ != null) return false;
        if (optionK != null ? !optionK.equals(that.optionK) : that.optionK != null) return false;
        if (optionL != null ? !optionL.equals(that.optionL) : that.optionL != null) return false;
        if (optionM != null ? !optionM.equals(that.optionM) : that.optionM != null) return false;
        if (optionN != null ? !optionN.equals(that.optionN) : that.optionN != null) return false;
        if (point != null ? !point.equals(that.point) : that.point != null) return false;
        if (qno != null ? !qno.equals(that.qno) : that.qno != null) return false;
        if (question != null ? !question.equals(that.question) : that.question != null) return false;
        if (subject != null ? !subject.equals(that.subject) : that.subject != null) return false;
        if (tid != null ? !tid.equals(that.tid) : that.tid != null) return false;
        if (tname != null ? !tname.equals(that.tname) : that.tname != null) return false;
        if (type != null ? !type.equals(that.type) : that.type != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (qno != null ? qno.hashCode() : 0);
        result = 31 * result + (subject != null ? subject.hashCode() : 0);
        result = 31 * result + (chapter != null ? chapter.hashCode() : 0);
        result = 31 * result + (tid != null ? tid.hashCode() : 0);
        result = 31 * result + (tname != null ? tname.hashCode() : 0);
        result = 31 * result + (question != null ? question.hashCode() : 0);
        result = 31 * result + (difficulty != null ? difficulty.hashCode() : 0);
        result = 31 * result + (point != null ? point.hashCode() : 0);
        result = 31 * result + (knowledge1 != null ? knowledge1.hashCode() : 0);
        result = 31 * result + (knowledge2 != null ? knowledge2.hashCode() : 0);
        result = 31 * result + (knowledge3 != null ? knowledge3.hashCode() : 0);
        result = 31 * result + (keyword1 != null ? keyword1.hashCode() : 0);
        result = 31 * result + (keyword2 != null ? keyword2.hashCode() : 0);
        result = 31 * result + (keyword3 != null ? keyword3.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
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
        result = 31 * result + (date != null ? date.hashCode() : 0);
        return result;
    }
}
