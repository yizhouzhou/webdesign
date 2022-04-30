package Servlet;

import models.Fatchinfor;
import models.UserModel;
import services.mysqldb;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "FatchstatusServlet", value = "/FatchstatusServlet")
public class FatchstatusServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        mysqldb db = mysqldb.getInstance();

        if (session != null) {
            if (session.getAttribute("user") != null) {
                UserModel user = (UserModel) session.getAttribute("user");
                String name = user.getName();
                System.out.println(name);

                try {
                    List<Fatchinfor> fatchinforList = db.Fatchsatus(name);
                    System.out.println("here");
                    request.setAttribute("game", fatchinforList);
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                RequestDispatcher requestDispatcher = request.getRequestDispatcher("home.jsp");
                requestDispatcher.forward(request, response);
            }else{
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
                request.setAttribute("error", "Please login to continue..!!!");
                requestDispatcher.forward(request, response);
            }

        }else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            request.setAttribute("error", "Please login to continue..!!!");
            requestDispatcher.forward(request, response);
        }


    }
}