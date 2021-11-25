package com.model;

public class Goods {
    public String goods_id;
    public String goods_name;
    public String goods_price;
    public int goods_stock;
    public String goods_photourl;
    public String partition_id;
    public String type_id;

    @Override
    public String toString() {
        return "商品{" +
                "id='" + goods_id + '\'' +
                ", name='" + goods_name + '\'' +
                ", price='" + goods_price + '\'' +
                ", stock=" + goods_stock +
                ", pic_url='" + goods_photourl + '\'' +
                ", p_id='" + partition_id + '\'' +
                ", t_id='" + type_id + '\'' +
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
