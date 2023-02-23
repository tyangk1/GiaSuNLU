package com.nlu.fit.giasunlu.model;

public class Turnover extends BaseEntity{
    int id;
    long coin;
    long cost;
    int userId;


    public Turnover() {
    }

    public Turnover(int id, long coin, long cost, int userId) {
        this.id = id;
        this.coin = coin;
        this.cost = cost;
        this.userId = userId;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public long getCoin() {
        return coin;
    }

    public void setCoin(long coin) {
        this.coin = coin;
    }

    public long getCost() {
        return cost;
    }

    public void setCost(long cost) {
        this.cost = cost;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
