package com.store.impl;

import com.ctrl.JDBCCtrl;
import com.model.Cart;
import com.model.User;
import com.store.CartDAO;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class CartImpl implements CartDAO {
    private QueryRunner qr = JDBCCtrl.getRunner();
    @Override
    public void addItem(Cart cart) {
        String sql = "INSERT INTO cart(cart_id, cart_information, " +
                "cart_univalence, user_id, dealt)" +
                " VALUES(?,?,?,?,?)";
        try {
            qr.update(sql,cart.getCart_id(),cart.getCart_information(),
                    cart.getCart_univalence(),cart.getUser_id(),
                    cart.getDealt());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delItem(String id) {
        String sql = "DELETE FROM cart WHERE cart_id = ?";
        try {
            qr.update(sql,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Cart> displayItem(User user) {
        String sql = "SELECT * FROM cart WHERE user_id = ? AND dealt = 'no'";
        try {
            return qr.query(sql,new BeanListHandler<Cart>(Cart.class),user.getUser_id());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Cart> displayItem() {
        String sql = "SELECT * FROM cart";
        try {
            return qr.query(sql,new BeanListHandler<Cart>(Cart.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Cart> displayItem(String id) {
        String sql = "SELECT * FROM cart WHERE cart_id = ?";
        try {
            return qr.query(sql,new BeanListHandler<Cart>(Cart.class),id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Cart> displayProcess(User user) {
        String sql = "SELECT * FROM cart WHERE user_id = ? AND (dealt != 'no' AND dealt != 'yes')";
        try {
            return qr.query(sql,new BeanListHandler<Cart>(Cart.class),user.getUser_id());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    @Override
    public void deal(User user) {
        String sql1 = "SELECT * FROM cart WHERE user_id = ?";
        String sql2 = "INSERT INTO item (item_id,item_address,item_time," +
                "cart_id,goods_name) VALUES(?,?,?,?,?)";
        String sql3 = "UPDATE cart SET dealt = 'yes' WHERE cart_id = ? AND user_id = ?";
        try {
            List<Cart> cl = qr.query(sql1,new BeanListHandler<>(Cart.class),user.getUser_id());
            for(Cart item:cl){
                Date d = new Date();
                qr.update(sql2, "I" + d.getTime() + user.getUser_id()
                    ,user.getUser_address(),d.toString(),
                    item.getCart_id(),item.getCart_information());
                qr.update(sql3,item.getCart_id(),user.getUser_id());
            }
        } catch (SQLException e) {
        e.printStackTrace();
        }
    }



}
