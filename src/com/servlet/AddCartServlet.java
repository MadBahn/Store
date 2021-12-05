package com.servlet;

import com.model.Cart;
import com.model.User;
import com.store.impl.CartImpl;
import com.store.impl.GoodsImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Date;

@WebServlet(name = "AddCartServlet", value = "/addCart")
public class AddCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User useri = (User) request.getSession().getAttribute("USER");
        String good = request.getParameter("goodid");
        String name = request.getParameter("goodname");
        if(useri != null){
            Date d = new Date();
            String cart_id = "C"+ d.getTime() + good;
            System.out.println(cart_id);
            Cart tmp = new Cart();
            GoodsImpl gi = new GoodsImpl();
            tmp.setUser_id(useri.getUser_id());
            tmp.setCart_id(cart_id);
            tmp.setCart_information(name);
            tmp.setCart_univalence(gi.editGoods(good).get(0).getGoods_price());
            tmp.setDealt("no");
//            System.out.println(tmp.toString());
            CartImpl ci = new CartImpl();
            ci.addItem(tmp);
            response.sendRedirect("cart.jsp");
        }else{
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
