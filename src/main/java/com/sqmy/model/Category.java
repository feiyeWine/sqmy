package com.sqmy.model;

public class Category {
    private Integer id;

    private String firstCategory;

    private String secondCategory;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstCategory() {
        return firstCategory;
    }

    public void setFirstCategory(String firstCategory) {
        this.firstCategory = firstCategory == null ? null : firstCategory.trim();
    }

    public String getSecondCategory() {
        return secondCategory;
    }

    public void setSecondCategory(String secondCategory) {
        this.secondCategory = secondCategory == null ? null : secondCategory.trim();
    }
}