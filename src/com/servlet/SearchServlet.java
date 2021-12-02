package com.servlet;

import com.model.Goods;
import com.store.impl.GoodsImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchServlet", value = "/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");

        String item = request.getParameter("search");
        System.out.println(item);
//        GoodsImpl gi = new GoodsImpl();
//        List<Goods> goodsin= gi.findByIndex(item);
//        System.out.println(goodsin);
        request.setAttribute("action","search");
        request.setAttribute("index",item);
//        response.sendRedirect("class.jsp");
        request.getRequestDispatcher("class.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("gbk");
        doGet(request, response);
//        String item = request.getParameter("search");
//        System.out.println(item);
//        GoodsImpl gi = new GoodsImpl();
//        List<Goods> goodsin= gi.findByIndex(item);
//        System.out.println(goodsin);
    }
}
