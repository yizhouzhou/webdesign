<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="models.UserModel" %>
<%@ page import="models.Fatchinfor" %><%--

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

%>

<p>Hello, <%= user.getName() %></p>
<p>Email: <%= user.getEmail()%> </p> <br>

<form action="FatchstatusServlet">
    <br/>


    <table>
        <tr>
            <th>Apartment information</th>
            <th>Apartment total bedroom</th>
            <th>Apartment per bedrooms cost</th>
            <th>Apartment pick up bedrooms cost</th>
        </tr>
        <c:forEach var="list_game" items="${game}">
            <tr>
                <td>${list_game.getApartmentinfo()}</td>
                <td>${list_game.getAparttotalbedroom()}</td>
                <td>${list_game.getApartprice()}</td>
                <td>${list_game.getApartbedrooms()}</td>
            </tr>
        </c:forEach>
    </table>

    <input type="submit" value="Filter" />
</form>

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
