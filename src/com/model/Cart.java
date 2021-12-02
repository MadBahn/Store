package com.model;

public class Cart {
    String cart_id;
    String cart_infomation;
    String cart_univalence;
    int cart_amount;
    String cart_total;
    String cart_actual;
    String user_id;

    public String getCart_id() {
        return cart_id;
    }

    public void setCart_id(String cart_id) {
        this.cart_id = cart_id;
    }

    public String getCart_infomation() {
        return cart_infomation;
    }

    public void setCart_infomation(String cart_infomation) {
        this.cart_infomation = cart_infomation;
    }

    public String getCart_univalence() {
        return cart_univalence;
    }

    public void setCart_univalence(String cart_univalence) {
        this.cart_univalence = cart_univalence;
    }

    public int getCart_amount() {
        return cart_amount;
    }

    public void setCart_amount(int cart_amount) {
        this.cart_amount = cart_amount;
    }

    public String getCart_total() {
        return cart_total;
    }

    public void setCart_total(String cart_total) {
        this.cart_total = cart_total;
    }

    public String getCart_actual() {
        return cart_actual;
    }

    public void setCart_actual(String cart_actual) {
        this.cart_actual = cart_actual;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "购物车{" +
                "cart_id='" + cart_id + '\'' +
                ", cart_infomation='" + cart_infomation + '\'' +
                ", cart_univalence='" + cart_univalence + '\'' +
                ", cart_amount=" + cart_amount +
                ", cart_total='" + cart_total + '\'' +
                ", cart_actual='" + cart_actual + '\'' +
                ", user_id='" + user_id + '\'' +
                '}';
    }
}
