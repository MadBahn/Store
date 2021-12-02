package com.store.impl;

import com.ctrl.JDBCCtrl;
import com.model.Type;
import com.store.TypeDAO;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.util.List;

public class TypeImpl implements TypeDAO {
    private QueryRunner qr = JDBCCtrl.getRunner();
    @Override

    public List<Type> query() {
        String sql = "select * from type";
        try{
            return qr.query(sql, new BeanListHandler<Type>(Type.class));
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void add(Type type) {

    }

    @Override
    public void del(String id) {

    }

    @Override
    public List<Type> findByIndex(String index) {
        return null;
    }

    @Override
    public void update(Type type) {

    }
}
