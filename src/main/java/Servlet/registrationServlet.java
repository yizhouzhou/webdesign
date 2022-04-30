package Servlet;

import models.UserModel;
import models.RegistrationModel;
import services.mysqldb;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
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

        mysqldb db = mysqldb.getInstance();
        RegistrationModel registrationModel = null;

        try {
            registrationModel = db.doregister(firstname, lastname, email, password, address1, address2);
        } catch(SQLException e) {
            e.printStackTrace();
        }

        if (registrationModel != null) {

            HttpSession session = request.getSession();
            session.setAttribute("user", registrationModel);

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("successful.jsp");
            requestDispatcher.forward(request, response);
        } else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("registration.jsp");
            request.setAttribute("error", "registration failed!!!");
            requestDispatcher.forward(request, response);
        }

    }
}
