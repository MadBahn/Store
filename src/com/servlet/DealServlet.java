package com.servlet;

import com.model.Cart;
import com.model.User;
import com.store.impl.CartImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet(name = "DealServlet", value = "/deal")
//成交
public class DealServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User useri = (User) request.getSession().getAttribute("USER");
        CartImpl ci = new CartImpl();

        if(useri != null) {
            List<Cart> cl = ci.displayItem(useri);
            if(cl.size()!=0) {
                ci.deal(useri);
            }
            response.sendRedirect("cart.jsp");

        }
        else{
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
