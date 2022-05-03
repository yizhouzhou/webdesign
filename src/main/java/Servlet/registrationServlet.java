package Servlet;

import services.mysqldb;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "registrationServlet", value = "/registrationServlet")
public class registrationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address1 = request.getParameter("address1");
        String address2 = request.getParameter("address2");
        boolean result = false;

        mysqldb db = mysqldb.getInstance();

        try {
            result = db.doregister(firstname, lastname, email, password, address1, address2);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (result) {

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("successful.jsp");
            requestDispatcher.forward(request, response);
        } else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("login_index.jsp");
            request.setAttribute("error", "registration failed!!!");
            requestDispatcher.forward(request, response);
        }

    }
}
