package com.model;

public class User {
    public String id;
    public String pwd;
    public String _name;
    public String sex;
    public String address;
    public String phone;
    public String email;

    public User(String id, String pwd) {
        this.id = id;
        this.pwd = pwd;
    }

    public User(String id, String pwd, String _name) {
        this.id = id;
        this.pwd = pwd;
        this._name = _name;
    }

    public User(String id, String pwd, String _name, String sex) {
        this.id = id;
        this.pwd = pwd;
        this._name = _name;
        this.sex = sex;
    }

    public User(String id, String pwd, String _name, String sex, String address) {
        this.id = id;
        this.pwd = pwd;
        this._name = _name;
        this.sex = sex;
        this.address = address;
    }

    public User(String id, String pwd, String _name, String sex, String address, String phone) {
        this.id = id;
        this.pwd = pwd;
        this._name = _name;
        this.sex = sex;
        this.address = address;
        this.phone = phone;
    }

    public User(String id, String pwd, String _name, String sex, String address, String phone, String email) {
        this.id = id;
        this.pwd = pwd;
        this._name = _name;
        this.sex = sex;
        this.address = address;
        this.phone = phone;
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String get_name() {
        return _name;
    }

    public void set_name(String _name) {
        this._name = _name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
