package com.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "AdminLoginServlet", value = "/admin_login")
public class AdminLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String admin = request.getParameter("admin_name");
        String pwd = request.getParameter("admin_pwd");
        System.out.println(admin);
        System.out.println(pwd);

//       FOR DEBUG
        if(admin.equals("admin")&&pwd.equals("123456")){
            response.sendRedirect("./sys/sys_index.jsp");
        }else{
            request.setAttribute("error","用户名或密码错误");
//            response.sendRedirect("./sys/sys_login.jsp");
            request.getRequestDispatcher("./sys/sys_login.jsp").forward(request,response);
        }
    }
}
