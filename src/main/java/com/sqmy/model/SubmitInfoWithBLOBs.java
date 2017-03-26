package com.sqmy.model;

public class SubmitInfoWithBLOBs extends SubmitInfo {
    private String note;

    private String mainBody;

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public String getMainBody() {
        return mainBody;
    }

    public void setMainBody(String mainBody) {
        this.mainBody = mainBody == null ? null : mainBody.trim();
    }
}