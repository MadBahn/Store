package com.store;

import com.model.Item;

import java.util.List;

public interface ItemDAO {
    List<Item> query();
    void doDeal(String id);
}
