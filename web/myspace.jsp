<%--
    Document   : myspace
    Created on : Apr 11, 2015, 11:41:47 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.spacecard.profile.Profile" %>
<%
    Profile profile = (Profile) session.getAttribute("User");
    if(profile != null)
    {
%>
<!DOCTYPE html>
<html>
  <jsp:include page="partials/head.jsp" />

  <body>
    <jsp:include page="partials/header.jsp" />

		<div class="section cover">
			<div class="profile"></div>
      <h6><b><%=profile.getFullName()%></b></h6>
			<label><b><%=profile.getEmail() %></b></label>
		</div>

    <a href = "ImageServlet?select=View All Images">View All Images</a>
    <jsp:include page="partials/scripts.jsp" />
  </body>
</html>
<%
    }
    else
    {

    }
%>
