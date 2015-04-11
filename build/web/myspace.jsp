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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Space</title>
			<link rel="stylesheet" href="css/foundation.css" />
                        <link rel="stylesheet" href="css/profile.css" />
			<script src="../js/vendor/modernizr.js"></script>
			<style>
				
			</style>
    </head>
    <body>
        <nav class="top-bar" data-topbar="">
			<ul class="title-area">
				<li class="name">
				<h1><a href="../"><b>#nameless</b></a></h1>
				</li>
			</ul>
			<section class="top-bar-section">
				<ul class="right">
				  <li class="not-click">
					<a href="" data-reveal-id="myModal">upload</a>
				  </li>
				  <li class="not-click">
					<a href="../explore/">explore</a>
				  </li>
				  <li class="not-click">
					<a href="">sign in</a>
				  </li>
				</ul>
			  </section>
		</nav>
		<div class="section cover">
			<div class="profile"></div>
                        <h6><b><%=profile.getFullName()%></b></h6>
			<label><b><%=profile.getEmail() %></b></label>
		</div>
		<div id="myModal" class="reveal-modal" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog">
		<h6 id="modalTitle"><b>upload your files</b></h6>
		<div class="large-6 columns" style="border-right: 1px solid #262626;">
			<label class="msg">drop your files here</label>
		</div>
		<div class="large-6 columns">
			<input class="msg" type="file" name="file_upload" />
		</div>
		<a class="close-reveal-modal" aria-label="Close">&#215;</a>
		</div>
		<script src="../js/vendor/jquery.js"></script>
		<script src="../js/foundation.min.js"></script>
		<script>
			$(document).foundation();
		</script>
    </body>
</html>
<%
    }
    else
    {
        
    }
%>
