package com.servlet;

import com.model.User;
import com.store.impl.UserImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("loginName");
        String pwd = request.getParameter("password");
        String rpwd = request.getParameter("rePassword");
        String birthday = request.getParameter("birthday");
        String email = request.getParameter("email");
        int err=0;
        System.out.println(name);
        System.out.println(pwd);
        System.out.println(rpwd);
        System.out.println(birthday);
        System.out.println(email);
        UserImpl ui = new UserImpl();
        User i = ui.isExist(name);
//        String comp = i.getUser_id() == null? "":i.getUser_id();
        if(i != null && i.getUser_id().equals(name)){
            System.out.println("EXIST");
            request.setAttribute("error_id","该手机号已注册");
            err++;
        }
        if(pwd.length()<8||pwd.length()>20){
            request.setAttribute("error_pw","密码过短或过长");
            err++;
        }

        if(!pwd.equals(rpwd)){
            request.setAttribute("error_repw","请输入正确的密码");
            err++;
        }
        if(birthday == null || birthday.equals("")){
            request.setAttribute("error_date","日期不能为空");
            err++;
        }
        if(email == null || email.equals("")){
            request.setAttribute("error_email","邮箱不能为空");
            err++;
        }
        if(err>0){
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }else{
            ui.register(name,pwd,birthday,name);
            request.setAttribute("regiName",name);
            request.setAttribute("regiPwd",pwd);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }




        /*
        * 请输入正确的手机号码，该手机号已注册
        * 密码过短或过长
        * 请输入正确的密码
        * 日期不能为空
        *
        *
        * */
    }
}
