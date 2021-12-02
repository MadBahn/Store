package com.store;

import com.model.Goods;

import java.util.List;

public interface GoodsDAO {
    List<Goods> query();
    void add(Goods goods);
    void del(String id);
    List<Goods> findByIndex(String index);
    void update(Goods goods);
    List<Goods> queryByType(String type_id);
    List<Goods> queryByPartition(String partition_id);
    List<Goods> advancedQuery(String type_id, String partition_id,String index);
}
