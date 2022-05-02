<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ page import="models.UserModel" %>
<%@ page import="models.Fatchinfor" %>
<%@ page import="services.mysqldb" %>
<%@ page import="models.ApartmentModels" %>
<%@ page import="java.util.List" %>
<%--

  Created by IntelliJ IDEA.
  User: 25065
  Date: 4/27/2022
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if (request.getSession() != null) {
        if (session.getAttribute("user") != null) {
            UserModel user = (UserModel) session.getAttribute("user");
            mysqldb db = mysqldb.getInstance();
            List<ApartmentModels> apartmentmodels = db.Allaprtment();
            request.setAttribute("list", apartmentmodels );

%>

<p>Hello, <%= user.getName() %></p>
<p>Email: <%= user.getEmail()%> </p> <br>

<form action="FatchstatusServlet">
    <br/>
    <table>
        <tr>
            <th>Apartment Information</th>
            <th>Apartment Total bedrooms</th>
            <th>Rent Price</th>
            <th>Total Number of Bedrooms Have Been Taken</th>
        </tr>
        <c:forEach var="each_game" items="${game}">
            <tr>
                <td>${each_game.getApartmentinfo()}</td>
                <td>${each_game.getAparttotalbedroom()}</td>
                <td>$${each_game.getApartprice()}</td>
                <td>${each_game.getApartbedrooms()}</td>
            </tr>
        </c:forEach>
    </table>

    <input type="submit" value="Show information" />
</form>

<form action="UpdateServlet">
    <h1>East and Wright Apartment</h1>
    <br/>
    <table>
        <tr>
            <th>Apartment Information</th>
            <th>Apartment Total bedrooms</th>
            <th>Rent Price</th>
        </tr>
        <c:forEach var="each_list" items="${list}">
            <tr>
                <td>${each_list.getApartmentinfo()}</td>
                <td>${each_list.getAparttotalbedroom()}</td>
                <td>$${each_list.getApartprice()}</td>
            </tr>
        </c:forEach>
    </table>
</form>
<form  action="LogoutServlet">
    <input type="submit" value="logout" />

</form >


        <%
        } else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            request.setAttribute("error", "Please login to continue..!!!");
            requestDispatcher.forward(request, response);
        }
    } else {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        request.setAttribute("error", "Please login to continue..!!!");
        requestDispatcher.forward(request, response);
    }

%>

</body>
</html>
