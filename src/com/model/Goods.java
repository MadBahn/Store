package com.model;

public class Goods {
    public String goods_id;
    public String goods_name;
    public String goods_price;
    public String goods_info;
    public int goods_stock;
    public String goods_photourl;
    public String partition_id;
    public String type_id;

    public String getGoods_info() {
        return goods_info;
    }

    public void setGoods_info(String goods_info) {
        this.goods_info = goods_info;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "goods_id='" + goods_id + '\'' +
                ", goods_name='" + goods_name + '\'' +
                ", goods_price='" + goods_price + '\'' +
                ", goods_info='" + goods_info + '\'' +
                ", goods_stock=" + goods_stock +
                ", goods_photourl='" + goods_photourl + '\'' +
                ", partition_id='" + partition_id + '\'' +
                ", type_id='" + type_id + '\'' +
                '}';
    }

    public String getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(String goods_id) {
        this.goods_id = goods_id;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public String getGoods_price() {
        return goods_price;
    }

    public void setGoods_price(String goods_price) {
        this.goods_price = goods_price;
    }

    public int getGoods_stock() {
        return goods_stock;
    }

    public void setGoods_stock(int goods_stock) {
        this.goods_stock = goods_stock;
    }

    public String getGoods_photourl() {
        return goods_photourl;
    }

    public void setGoods_photourl(String goods_photourl) {
        this.goods_photourl = goods_photourl;
    }

    public String getPartition_id() {
        return partition_id;
    }

    public void setPartition_id(String partition_id) {
        this.partition_id = partition_id;
    }

    public String getType_id() {
        return type_id;
    }

    public void setType_id(String type_id) {
        this.type_id = type_id;
    }
}
