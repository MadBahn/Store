package com.store.impl;

import com.ctrl.JDBCCtrl;
import com.model.Item;
import com.store.ItemDAO;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ItemImpl implements ItemDAO {
    private QueryRunner qr = JDBCCtrl.getRunner();
    @Override
    public List<Item> query() {
        String sql = "SELECT * FROM item";
        try {
            return qr.query(sql,new BeanListHandler<>(Item.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void doDeal(String id) {
        String sql = "UPDATE cart SET dealt = 'processing' WHERE cart_id = ?";
        try {
            qr.update(sql,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
