<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html lang="en">
    <head>
        <title><%out.write((String) session.getAttribute("user"));%>'s Profile</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"> 
        <meta name="description" content="Responsive Image Gallery with jQuery" />
        <meta name="keywords" content="jquery, carousel, image gallery, slider, responsive, flexible, fluid, resize, css3" />
        <meta name="author" content="Codrops" />


        <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400;300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/bootstrap.css">
        <link rel="stylesheet" href="styles\profile.css">


        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="stylesheet" type="text/css" href="styles/demo.css" />
        <link rel="stylesheet" type="text/css" href="styles/style.css" />
        <link rel="stylesheet" type="text/css" href="styles/elastislide.css" />
        <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&v1' rel='stylesheet' type='text/css' />
        <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css' />
        <noscript>
        <style>
            .es-carousel ul{
                display:block;
            }
        </style>
        </noscript>
        <script id="img-wrapper-tmpl" type="text/x-jquery-tmpl">	
            <div class="rg-image-wrapper">
            {{if itemsCount > 1}}
            <div class="rg-image-nav">
            <a href="#" class="rg-image-nav-prev">Previous Image</a>
            <a href="#" class="rg-image-nav-next">Next Image</a>
            </div>
            {{/if}}
            <div class="rg-image"></div>
            <div class="rg-loading"></div>
            <div class="rg-caption-wrapper">
            <div class="rg-caption" style="display:none;">
            <p></p>
            </div>
            </div>
            </div>
        </script>
    </head>
    <body>


        <div class="page-wrap">
            <nav>
                <ul class="nav">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="upload.jsp" >Upload</a></li>
                    <li><a href="Logout" >Log out</a></li>
                    <li><a href="uploadAvatar.jsp" >Avatar</a></li>

                </ul>
            </nav>

        </div>

        <div class="container">			
            <div class="content">
                <div class="head">
                    <h1 align="center">
                        <%
                            out.write((String) session.getAttribute("firstname") + " " + (String) session.getAttribute("lastname"));
                        %>
                        </h2>
                        <div class="circle" style="background-image:
                             url('users/<%out.write((String) session.getAttribute("user"));%>.jpg'), url('users/<%out.write((String) session.getAttribute("user"));%>.jpeg')" ></div>
                </div>
                <div id="rg-gallery" class="rg-gallery">
                    <div class="rg-thumbs">
                        <!-- Elastislide Carousel Thumbnail Viewer -->
                        <div class="es-carousel-wrapper">
                            <div class="es-nav">
                                <span class="es-nav-prev">Previous</span>
                                <span class="es-nav-next">Next</span>
                            </div>
                            <div class="es-carousel">
                                <ul>

                                    <sql:setDataSource var="ds" dataSource="jdbc/astronightdb" />
                                    <sql:query dataSource="${ds}" sql="select * from photos where user = '${user}' " var="results" />

                                    <c:forEach var="image" items="${results.rows}" varStatus="row">
                                        <c:set scope="page" var="imgname"></c:set>
                                            <!-- set a variable name imgname a value of an image name and .extension of the pics folder we got from the query in the database -->
                                            <li><a href="#"><img  src="${image.url}" data-large="${image.url}" alt="image01"/>
                                            </a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.tmpl.min.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="js/jquery.elastislide.js"></script>
        <script type="text/javascript" src="js/gallery.js"></script>
        <script type="text/javascript" src="js/popup.js"></script>
    </body>
</html>