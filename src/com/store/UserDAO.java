package com.store;

import com.model.User;

import java.util.List;

public interface UserDAO {
    List<User> login(String name, String pwd);
    User isExist(String name);
    void register(String id,String pwd,String birthday,String phone);
    void modify(User user);
    void moPWD(User user,String n_pw);
}
