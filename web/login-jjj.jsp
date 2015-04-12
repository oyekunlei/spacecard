<%--
    Document   : login
    Created on : Apr 11, 2015, 3:06:34 PM
    Author     : user
--%>

<!DOCTYPE html>
<html>
  <jsp:include page="partials/head.jsp" />

	<body data-spy="scroll" data-offset="0" data-target="#navigation">
		<jsp:include page="partials/header.jsp" />
    <div id ="container">
      <div class='col-md-4 col-md-offset-4'>
        <form action="login.go" method='post'>
          <div class='form-group'>
            <label for='username'>Username</label>
            <input class='form-control' id='username' name='username' placeholder='Enter username' type='text'>
          </div>
          <div class='form-group'>
            <label for='password'>Password</label>
            <input class='form-control' id='password' name='password' placeholder='Password' type='password'>
          </div>
          <button class='btn btn-primary' type='submit'>Log In</button>
          <p class='pull-right'><a href="/new_password">forgot your password?</a></p>
        </form>
      </div>
    </div>
  </body>
</html>
            <!-- <form action = "login.go" method="POST">
                <fieldset>
                    <legend>Enter your login details</legend>
                    <input type = "text" name ="username" id ="username" placeholder= "Username" /><br /><br />
                    <input type = "password" name ="password" id ="password" placeholder= "Password" /><br /><br />
                    <input type = "submit" name = "select" value = "Login"/><br /><br />
                    <a href = "newPassword.html">Forgot Password?</a><br /><br />
                    <a href = "register.html">Not a member? Register Here</a>
                </fieldset>
            </form>
        </div> -->
