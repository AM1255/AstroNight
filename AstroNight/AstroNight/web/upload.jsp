<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>

    <head>
        <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet">

        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400;300' rel='stylesheet' type='text/css'>


        <link rel="stylesheet" href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}\styles\upload.css">

    </head>

    <body class="blackBack">
        <!---------------------------------------------------------------------------------------------------->  


        <!---------------------------------------------------------------------------------------------------->    
        <div class="navig">
            <div class="container">
                <nav class="cl-effect-21">
                    <li><a href="${pageContext.request.contextPath}/index.jsp">Astronight</a></li>
                </nav>
                
            </div>
        </div>

        <div class="jumbotron">
            <div class="container">
                <h1>Fill the form below</h1><br>
                <center>

                    <!--<form  action="manageTitle" method="post"><br/>               
                        <input class="titlebox" type="text" name="description" placeholder="Place the title of your image here" required/>
                        <input class="titlebox" type="text" name="description" placeholder="Place the price of your image here" required/>
                        <input type="submit" name="confirmtitle" value="OK"/>
                    </form>-->
                                      

                    <div class="upload">
                    <form method="post" action="Uploader" encType="multipart/form-data">
                        <input class="titlebox" type="text" name="title" placeholder="Place the title of your image here" required/>
                        <input class="titlebox" type="text" name="description" placeholder="Place a short decription your image here" required/>
                        <input class="titlebox" type="text" name="price" placeholder="Place the price of your image here" required/>
                        <input class="myButton" type="file" name="file" value="Select image"/>
                        <br><button type="submit" class="btn btn-info"> Upload </button>
                    </form>
                    </div>

            </div> 

        </center>
    </div>

    <div class="learn-more">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                        <h3>Help</h3>
                        <p style="color: white">Les us show you how you can use our application!</p>
                        <p><a href="${pageContext.request.contextPath}\help.jsp">Start here</a></p>
                    </div>
                <div class="col-md-6">
                    <h3>About, Trust and Safety</h3>
                    <p style="color: white">From Verified ID to our worldwide customer support team, we've got your back.</p><br>
                    <p><a href="${pageContext.request.contextPath}\about.jsp">Learn about us and preserving copyrights.</a></p>
                </div>
            </div>
        </div>
    </div>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/app.js"></script>


</body>
</html>