package com.servlet;

import com.model.User;
import com.store.impl.UserImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ModifyUserServlet", value = "/mo_user")
public class ModifyUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User useri = (User) request.getSession().getAttribute("USER");
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String birthday = request.getParameter("birthday");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        User tmp = new User();
        UserImpl ui = new UserImpl();
        if(useri != null){
            tmp.setUser_id(useri.getUser_id());
            tmp.setUser_password(useri.getUser_password());
            tmp.setUser_name(name);
            tmp.setUser_sex(sex);
            tmp.setUser_birthday(birthday);
            tmp.setUser_phone(phone);
            tmp.setUser_email(email);
            tmp.setUser_address(address);
            System.out.println(tmp);
            ui.modify(tmp);
            request.getSession().setAttribute("USER",tmp);
        }
        response.sendRedirect("user_self_manage.jsp");
    }
}
