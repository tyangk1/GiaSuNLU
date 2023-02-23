package com.nlu.fit.giasunlu.model;

import javax.persistence.*;


public class TopUp {

    private int userId;

    private String userName;

    private float amount;

    private float coin;

    private String paymentMethod;

   private float total;

    public TopUp(int userId, String userName, float amount, float coin, String paymentMethod, float total) {
        this.userId = userId;
        this.userName = userName;
        this.amount = amount;
        this.coin = coin;
        this.paymentMethod = paymentMethod;
        this.total = total;
    }

    public int getUserId() {
        return userId;
    }

    public String getUserName() {
        return userName;
    }

    public String getAmount() {
        return String.format("%.2f", amount);
    }

    public String getCoin() {
        return String.format("%.2f", coin);
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public String getTotal() {
        return String.format("%.2f", total);
    }
}
