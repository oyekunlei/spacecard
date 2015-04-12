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
    <div id="container section-wrapper">
      <div class="row">
        <div class='col-md-4 col-md-offset-4'>
          <form action="login.go" method='post'>
            <div class='form-group'>
              <label for='username'>Email address</label>
              <input class='form-control' id='username' name='username' placeholder='Enter username' type='text'>
            </div>
            <div class='form-group'>
              <label for='password'>Password</label>
              <input class='form-control' id='password' name='password' placeholder='Password' type='password'>
            </div>
            <button class='btn btn-primary' type='submit'>Log In</button>
            <p class='pull-right'><a href="new_password.jsp">forgot your password?</a></p>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
