<%-- 
    Document   : imageGallery
    Created on : Apr 12, 2015, 8:52:49 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.spacecard.image.Image,java.util.Vector" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Image Gallery</title>
       <!-- <style> 
            img {
                width: 100px;
                height: 100%;
            }
        </style>-->
    </head>

    <body>
 <form>
            <h1>Please select from one up to 3 pictures you would like to customize and click proceed</h1>
            <table width="100%" border="1">   
                <tr><td>Select</td><td>Image</td><td>Descriptions</td></tr>
<%
    Vector<Image> images = (Vector<Image>) session.getAttribute("Images");
    if (images != null) {
        for (Image image : images) {
%>
        
                <tr>
                    <td><input type ="checkbox" value = "<%=image.getImageId()%>" name = "select"/></td>
                    <td><img src = "<%=image.getPath()%>" /> </td>
                    <td><p><%=image.getDescription()%></p></td>
                </tr>
<%
        }
    }
%>               
            </table>
                <br><input type ="submit" value ="Proceed" name="select" />
        </form>
    </body>
</html>
