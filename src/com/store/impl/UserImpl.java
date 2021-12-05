package com.store.impl;

import com.ctrl.JDBCCtrl;
import com.model.User;
import com.store.UserDAO;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class UserImpl implements UserDAO {
    private QueryRunner qr = JDBCCtrl.getRunner();
    @Override
    public List<User> login(String name, String pwd) {
        String sql = "SELECT * FROM user WHERE user_id = ? AND user_password = ?";
        try {
            return qr.query(sql,new BeanListHandler<User>(User.class),name,pwd);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public User isExist(String name){
        String sql = "SELECT user_id from user WHERE user_id = ?";
        try {
            if(qr.query(sql,new BeanListHandler<User>(User.class),name).size()>0)
                return qr.query(sql,new BeanListHandler<User>(User.class),name).get(0);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void register(String id, String pwd, String birthday, String phone) {
        String sql = "INSERT INTO user (user_id,user_password,user_birthday,user_phone) VALUES(?,?,?,?)";
        try {
            qr.update(sql,id,pwd,birthday,phone);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modify() {

    }


}
