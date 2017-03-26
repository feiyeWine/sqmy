package com.sqmy.model;

import java.util.Date;

public class AuditInfo {
    private Integer id;

    private Integer unitId;

    private Integer primaryId;

    private Integer editorId;

    private String unitName;

    private Date auditTime;

    private String instructionContent;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUnitId() {
        return unitId;
    }

    public void setUnitId(Integer unitId) {
        this.unitId = unitId;
    }

    public Integer getPrimaryId() {
        return primaryId;
    }

    public void setPrimaryId(Integer primaryId) {
        this.primaryId = primaryId;
    }

    public Integer getEditorId() {
        return editorId;
    }

    public void setEditorId(Integer editorId) {
        this.editorId = editorId;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName == null ? null : unitName.trim();
    }

    public Date getAuditTime() {
        return auditTime;
    }

    public void setAuditTime(Date auditTime) {
        this.auditTime = auditTime;
    }

    public String getInstructionContent() {
        return instructionContent;
    }

    public void setInstructionContent(String instructionContent) {
        this.instructionContent = instructionContent == null ? null : instructionContent.trim();
    }
}