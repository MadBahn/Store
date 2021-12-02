package com.service;

import com.factory.BeanFactory;
import com.store.GoodsDAO;

import java.util.List;

public class GoodsService {
    public GoodsDAO gd = BeanFactory.getInstance("gd",GoodsDAO.class);
    public List<com.model.Goods> Page_QueryGoods(){
        return gd.query();
    }
}
