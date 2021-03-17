package com.example.demo;

import com.example.demo.dao.DbManager;
import com.example.demo.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/users")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<User> allUsers = new ArrayList<>();
        try {
            allUsers = DbManager.getAllUsers();
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        }

       if(allUsers != null)
       {
        request.setAttribute("users",allUsers);
       }

        request.getRequestDispatcher("users.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
