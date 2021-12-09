package com.servlet;

import com.model.User;
import com.store.impl.UserImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ModifyPWDServlet", value = "/mo_pwd")
public class ModifyPWDServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pw = request.getParameter("password");
        String npw = request.getParameter("n_password");
        String cnpw = request.getParameter("c_n_password");
        User useri = (User) request.getSession().getAttribute("USER");
        if(useri != null) {
            if (pw.equals(useri.getUser_password()) && npw.equals(cnpw)) {
                System.out.println(useri);
                System.out.println(npw);
                UserImpl ui = new UserImpl();
                ui.moPWD(useri, npw);
                useri.setUser_password(npw);
                request.getSession().setAttribute("USER", useri);
                response.sendRedirect("user_self_manage.jsp");
            } else {
                request.setAttribute("error", "原密码错误或密码不一致");
                request.getRequestDispatcher("user_password.jsp").forward(request, response);
            }
        }else{
            response.sendRedirect("login.jsp");
        }
    }
}
