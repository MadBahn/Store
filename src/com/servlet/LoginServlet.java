package com.servlet;

import com.model.User;
import com.store.impl.UserImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        System.out.println(login);
        System.out.println(password);
        UserImpl ui = new UserImpl();
        List<User> ul = ui.login(login, password);
        if(ul.size() != 0){
            User userr = ul.get(0);
            System.out.println(userr.toString());
            request.getSession().setAttribute("USER",userr);
            response.sendRedirect("index.jsp");
//            request.getRequestDispatcher("index.jsp").forward(request,response);
        }else{
            request.setAttribute("error","用户名或密码错误");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }

    }
}
