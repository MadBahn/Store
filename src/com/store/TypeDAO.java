package com.store;

import com.model.Goods;
import com.model.Type;

import java.util.List;

public interface TypeDAO {
    List<Type> query();
    void add(Type type);
    void del(String id);
    List<Type> findByIndex(String index);
    void update(Type type);
}
