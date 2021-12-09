package com.servlet;

import com.store.impl.ItemImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DoDealServlet", value = "/do_deal")
public class DoDealServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cartid= request.getParameter("cart");
//        System.out.println(cartid);
        ItemImpl ii = new ItemImpl();
        ii.doDeal(cartid);
        response.sendRedirect("./sys/sys_order_manage.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
