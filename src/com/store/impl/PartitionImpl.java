package com.store.impl;

import com.ctrl.JDBCCtrl;
import com.model.Partition;
import com.model.Type;
import com.store.PartitionDAO;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.util.List;

public class PartitionImpl implements PartitionDAO {
    private QueryRunner qr = JDBCCtrl.getRunner();
    @Override
    public List<Partition> query() {
        String sql = "select * from _partition";
        try{
            return qr.query(sql, new BeanListHandler<Partition>(Partition.class));
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void add(Partition p) {

    }

    @Override
    public void del(String id) {

    }

    @Override
    public List<Partition> findByIndex(String index) {
        String sql = "select partition_name from _partition where partition_id = ?";
        try{
            return qr.query(sql, new BeanListHandler<Partition>(Partition.class),index);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void update(Partition p) {

    }
}
