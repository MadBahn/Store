package com.servlet;

import com.model.Goods;
import com.store.impl.GoodsImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "GoodsManageServlet", value = "/goods_manage")
public class GoodsManageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String id = request.getParameter("id");
        GoodsImpl gi = new GoodsImpl();
        if(action.equals("add")||action.equals("edit")) {
            String name = request.getParameter("name");
            String price = request.getParameter("price");
            String info = request.getParameter("info");
            int stock = Integer.parseInt(request.getParameter("stock"));
            String photo_url = request.getParameter("photo_url");
            String partition = request.getParameter("partition");
            String type = request.getParameter("type");
            Goods tmp = new Goods();
            tmp.setGoods_id(id);
            tmp.setGoods_name(name);
            tmp.setGoods_price(price);
            tmp.setGoods_info(info);
            tmp.setGoods_stock(stock);
            tmp.setGoods_photourl(photo_url);
            tmp.setPartition_id(partition);
            tmp.setType_id(type);
            switch (action){
                case "add":
                    gi.add(tmp);
                    break;
                case "edit":
                    gi.update(tmp);
                    break;
            }
        }
        else {
            gi.del(id);
        }

        response.sendRedirect("./sys/sys_index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
