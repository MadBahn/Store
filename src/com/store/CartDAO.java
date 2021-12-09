package com.store;

import com.model.Cart;
import com.model.User;

import java.util.List;

public interface CartDAO {
    void addItem(Cart cart);
    void delItem(String id);
    List<Cart>displayItem(User user);
    List<Cart>displayItem();
    List<Cart>displayItem(String id);
    List<Cart>displayProcess(User user);
    void deal(User user);
}
