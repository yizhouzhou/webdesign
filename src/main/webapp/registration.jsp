<%--
  Created by IntelliJ IDEA.
  User: 25065
  Date: 4/29/2022
  Time: 5:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <script>
        function validate() {
            var email = document.getElementById("email").value
            var password = document.getElementById("password").value
            var comfirpassword = document.getElementById("confirmpassword").value
            const re_email = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            if(email === "") {
                document.getElementById("error_msg").innerHTML = "Please enter email."
                result = false;
            } else if(password === "") {
                document.getElementById("error_msg").innerHTML = "Please enter password."
                result = false
            } else if(password !== comfirpassword){
                document.getElementById("error_msg").innerHTML = "Please match the password."
                result = false
            }
            else if(re_email.test(email) == false){
                document.getElementById("error_msg").innerHTML = "Email is not valid."
                result = false
            }
            return result
        }
    </script>
</head>
<body>
<form action="registrationServlet" method="post" onsubmit="return validate()">
    Firstname:<input name="firstname" type="text" required /> <br/>
    LastName: <input  name="lastname" type="text" required /> <br/>
    Email: <input id="email" name="email" type="email" required /> <br/>
    Address1:<input name="address1" type="text" required /> <br/>
    Address2:<input name="address2" type="text" /> <br/>
    Password: <input id="password" name="password" type="password" required /> <br/>
    Confirm Password:<input id="confirmpassword" name="confirmpassword" type="password" required /> <br/>
    <span id="error_msg"></span> <br/>
    <input type="submit" name="Login" />
</form>

<p>${error}</p>

</body>
</html>
