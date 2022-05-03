<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test for log in page</title>
    <script type="text/javascript">
        function Redirect() {
            window.location = "registration.jsp";
        }
    </script>
</head>

<body>
<form action="LoginServlet" method="post">
    Email: <input name="email" type="email" required/> <br/>
    Password: <input name="password" type="password" required/> <br/>
    <input type="submit" name="Login" value="Login"/> <br/>
    <button type="button" onclick="Redirect()">register</button>
</form>

<p>${error}</p>

</body>
</html>