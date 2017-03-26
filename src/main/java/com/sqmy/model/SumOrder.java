package com.sqmy.model;

/**
 * Created by YR on 2016/4/20.
 */
public class SumOrder {
    private String name;
    private int sum;

    public SumOrder(){

    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    public String getName() {
        return name;
    }

    public int getSum() {
        return sum;
    }
}
