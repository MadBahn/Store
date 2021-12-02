package com.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "AdvancedServlet", value = "/advanced")
public class AdvancedServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String type = request.getParameter("typeid");
        String partition = request.getParameter("partitionid");
        String item = request.getParameter("search");

//        System.out.println(type);
//        System.out.println(partition);

        request.setAttribute("action","advanced");
        request.setAttribute("typeindex",type);
        request.setAttribute("parindex",partition);
        request.setAttribute("index",item);

        request.getRequestDispatcher("class.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
