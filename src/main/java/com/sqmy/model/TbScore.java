package com.sqmy.model;

import java.util.Date;

public class TbScore {
    private Integer id;

    private Integer primaryId;

    private Integer auditId;

    private Integer scoreUnitId;

    private Date scoreTime;

    private Integer score;

    private Integer cppccId;

    private Integer caiyongUnitId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPrimaryId() {
        return primaryId;
    }

    public void setPrimaryId(Integer primaryId) {
        this.primaryId = primaryId;
    }

    public Integer getAuditId() {
        return auditId;
    }

    public void setAuditId(Integer auditId) {
        this.auditId = auditId;
    }

    public Integer getScoreUnitId() {
        return scoreUnitId;
    }

    public void setScoreUnitId(Integer scoreUnitId) {
        this.scoreUnitId = scoreUnitId;
    }

    public Date getScoreTime() {
        return scoreTime;
    }

    public void setScoreTime(Date scoreTime) {
        this.scoreTime = scoreTime;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getCppccId() {
        return cppccId;
    }

    public void setCppccId(Integer cppccId) {
        this.cppccId = cppccId;
    }

    public Integer getCaiyongUnitId() {
        return caiyongUnitId;
    }

    public void setCaiyongUnitId(Integer caiyongUnitId) {
        this.caiyongUnitId = caiyongUnitId;
    }
}