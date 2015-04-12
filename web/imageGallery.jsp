<%--
    Document   : imageGallery
    Created on : Apr 12, 2015, 8:52:49 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.spacecard.image.Image,java.util.Vector" %>

<!DOCTYPE html>
<html>
  <jsp:include page="partials/head.jsp" />

  <body>
    <jsp:include page="partials/header.jsp" />
    <body>
      <div class="container section-wrapper">
        <h3>Please select from one up to 3 pictures you would like to customize and click proceed</h3>
        <div class="row">
          <%
              Vector<Image> images = (Vector<Image>) session.getAttribute("Images");
              if (images != null) {
                for (Image image : images) {
          %>
          <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img src="<%=image.getPath()%>" alt="...">
              <div class="caption">
                <p><%=image.getDescription()%></p>
                <p><a href="#" class="btn btn-primary" role="button">Create Postcard</a></p>
              </div>
            </div>
          </div>
          <%
              }
            }
          %>
        </div>
      </div>
    </body>
</html>
