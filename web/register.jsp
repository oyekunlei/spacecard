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
        <form action="register.go" method='post' id="signup-form">
          <div class='form-group'>
            <label for='name'>Full name</label>
            <input class='form-control' id='name' name='txtName' placeholder='Enter full name' type='text' required>
          </div>
          <div class='form-group'>
            <label for='email'>Email</label>
            <input class='form-control' id='email' name='txtEmail' placeholder='Enter your email' type='email' required>
          </div>
          <div class='form-group'>
            <label for='username'>Username</label>
            <input class='form-control' id='username' name='txtUsername' placeholder='Enter username' type='text' required>
          </div>
          <div class='form-group'>
            <label for='password'>Password</label>
            <input class='form-control' id='password' name='password' placeholder='Enter Password' type='password' required>
          </div>
          <div class='form-group'>
            <label for='picturepath'>Profile picture</label>
            <input name="picturepath" id="picturepath" type="file" class="file">
          </div>
          <button class='btn btn-primary' type='submit' name="select">Sign Up</button>
          <p class='pull-right'><a href="login.jsp">Have an existing account? Log in</a></p>
        </form>
      </div>
    </div>

    <jsp:include page="partials/scripts.jsp" />

    <script>
      $("#signup-form").validate();
    </script>

  </body>
</html>
