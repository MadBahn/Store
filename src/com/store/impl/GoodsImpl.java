package com.store.impl;

import com.ctrl.JDBCCtrl;
import com.model.Goods;
import com.store.GoodsDAO;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
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
    public void add(Goods goods) {
        String sql = "insert goods(" +
                "goods_id,goods_name,goods_price," +
                "goods_stock,goods_photourl," +
                "partition_id,type_id)" +
                " values(?,?,?,?,?,?,?)";
        try {
            qr.update(sql,goods.getGoods_id(),goods.getGoods_name(),
                    goods.getGoods_price(),goods.getGoods_stock(),
                    goods.getGoods_photourl(),goods.getPartition_id(),
                    goods.getType_id());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void del(String id) {
        String sql = "DELETE FROM goods WHERE goods_id=?";
        try {
            qr.update(sql, id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Goods> findByIndex(String index) {
        index = index == null ? "":index;
        index = "%"+index+"%";
        String sql = "SELECT * FROM goods WHERE goods_name LIKE ?";
        try {
            return qr.query(sql, new BeanListHandler<Goods>(Goods.class),index);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void update(Goods goods) {
        String sql = "UPDATE goods SET goods_name=?," +
                "goods_price=?,goods_stock=?,goods_photourl=?," +
                "partition_id=?,type_id=? WHERE goods_id =?";
        try {
            qr.update(sql,goods.getGoods_name(),
                    goods.getGoods_price(),goods.getGoods_stock(),
                    goods.getGoods_photourl(),goods.getPartition_id(),
                    goods.getType_id());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Goods> queryByType(String type_id) {
        return null;
    }


}
