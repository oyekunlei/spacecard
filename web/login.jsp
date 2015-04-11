<%-- 
    Document   : login
    Created on : Apr 11, 2015, 3:06:34 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div id ="container">
            <form action = "login.go" method="POST">
                <fieldset>
                    <legend>Enter your login details</legend>
                    <input type = "text" name ="username" id ="username" placeholder= "Username" /><br /><br />
                    <input type = "password" name ="password" id ="password" placeholder= "Password" /><br /><br />
                    <input type = "submit" name = "select" value = "Login"/><br /><br />
                    <a href = "newPassword.html">Forgot Password?</a><br /><br />
                    <a href = "register.html">Not a member? Register Here</a>
                </fieldset>
            </form>
        </div>
    </body>
</html>
