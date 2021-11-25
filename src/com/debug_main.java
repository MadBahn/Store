package com;

import com.model.Goods;
import com.store.impl.GoodsImpl;

import java.util.List;

public class debug_main {
    public static void main(String[] args) {
        GoodsImpl gi = new GoodsImpl();
        List<Goods> test = gi.query();
        for (Goods item:test) {
            System.out.println(item.toString());
        }
    }
}
