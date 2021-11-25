package com.store;

import com.model.Goods;

import java.util.List;

public interface GoodsDAO {
    List<Goods> query();
    void add();
    void del(int id);
    List<Goods> findByIndex(String index);
    void update(int id);
}
