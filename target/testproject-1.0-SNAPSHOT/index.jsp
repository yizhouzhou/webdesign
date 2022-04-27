<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test for log in page</title>
</head>

<body>
<form action="LoginServlet" method="post">
    Email: <input name="email" type="email" required /> <br/>
    Password: <input name="password" type="password" required /> <br/>
    <p> <a href="LoginServlet">Login</a> </p>
    <p> <a href="RegisterServlet">Register</a> </p>
</form>

<p>${error}</p>

</body>
</html>