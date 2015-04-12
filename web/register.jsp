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
    <div class="container section-wrapper">
      <div class='col-md-4 col-md-offset-4'>
        <form action="login.go" method='post'>
          <div class='form-group'>
            <label for='name'>Full name</label>
            <input class='form-control' id='name' name='name' placeholder='Enter full name' type='text'>
          </div>
          <div class='form-group'>
            <label for='email'>Email</label>
            <input class='form-control' id='email' name='email' placeholder='Enter your email' type='text'>
          </div>
          <div class='form-group'>
            <label for='password'>Password</label>
            <input class='form-control' id='password' name='password' placeholder='Enter Password' type='password'>
          </div>
          <button class='btn btn-primary' type='submit'>Log In</button>
          <p class='pull-right'><a href="/new_password">forgot your password?</a></p>
        </form>
      </div>
    </div>
  </body>
</html>

<form action = "register.go" method="POST">
    <fieldset>
        <legend>Register your account</legend>
<input type = "text" name ="txtName" id ="name" placeholder="Name" /><br /><br />
<input type = "text" name ="txtEmail" id ="email" placeholder="Email" /><br /><br />
<input type = "text" name ="txtUsername" id ="username" placeholder="Username" /><br /><br />
        <input type = "password" name ="txtPassword" id ="password" placeholder="Password" /><br /><br />
<input type = "text" name ="picturepath" id ="picturepath" /><br /><br />
        <input type = "submit" name = "select" value = "Register"/>

    </fieldset>
</form>
