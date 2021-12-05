package com.model;

public class Cart {
    String cart_id;
    String cart_information;
    String cart_univalence;
    String user_id;
    String dealt;

    @Override
    public String toString() {
        return "Cart{" +
                "cart_id='" + cart_id + '\'' +
                ", cart_information='" + cart_information + '\'' +
                ", cart_univalence='" + cart_univalence + '\'' +
                ", user_id='" + user_id + '\'' +
                ", dealt='" + dealt + '\'' +
                '}';
    }

    public String getCart_id() {
        return cart_id;
    }

    public void setCart_id(String cart_id) {
        this.cart_id = cart_id;
    }

    public String getCart_information() {
        return cart_information;
    }

    public void setCart_information(String cart_information) {
        this.cart_information = cart_information;
    }

    public String getCart_univalence() {
        return cart_univalence;
    }

    public void setCart_univalence(String cart_univalence) {
        this.cart_univalence = cart_univalence;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getDealt() {
        return dealt;
    }

    public void setDealt(String dealt) {
        this.dealt = dealt;
    }
}
