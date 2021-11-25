package com.store.impl;

import com.ctrl.JDBCCtrl;
import com.model.Goods;
import com.store.GoodsDAO;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.util.List;

public class GoodsImpl implements GoodsDAO {

    private QueryRunner qr = JDBCCtrl.getRunner();
    @Override
    public List<Goods> query() {
        String sql = "select * from goods";
        try{
            return qr.query(sql, new BeanListHandler<Goods>(Goods.class));
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void add() {

    }

    @Override
    public void del(int id) {

    }

    @Override
    public List<Goods> findByIndex(String index) {
        return null;
    }

    @Override
    public void update(int id) {

    }


}
