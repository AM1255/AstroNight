<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>

    <head>
        <title>Change my Avatar</title>
        <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet">

        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400;300' rel='stylesheet' type='text/css'>


        <link rel="stylesheet" href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/bootstrap.css">
        <link rel="stylesheet" href="styles\upload.css">

    </head>

    <body class="blackBack">
        <!---------------------------------------------------------------------------------------------------->  


        <!---------------------------------------------------------------------------------------------------->    
        <div class="navig">
            <div class="container">
                <nav class="cl-effect-21">
                    <li><a href="index.jsp">Astronight</a></li>
                </nav>
                
            </div>
        </div>

        <div class="jumbotron">
            <div class="container">
                <h2>Choose a picture from your computer</h2><br>
                <h2>Make sure it's a jpeg file!</h2><br>
                <center>                                   
                    <div class="upload">
                        <form method="post" action="${pageContext.request.contextPath}/UploadAvatar" encType="multipart/form-data">
                            <input class="myButton" type="file" name="file" value="Select image"/>
                            <br><button type="submit" class="btn btn-info"> Upload </button>
                        </form>
                    </div>
                </center>

            </div> 

        </div>

        <div class="learn-more">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h3>Market</h3>
                        <p style="color: white">Through the market you can verify your photos and sell them to any member of Astronight. Prices will be arranged by Astronight market team.</p>
                        <p><a href="#">Learn what is needed to unlock your market.</a></p>
                    </div>
                    <div class="col-md-6">
                        <h3>About, Trust and Safety</h3>
                        <p style="color: white">From Verified ID to our worldwide customer support team, we've got your back.</p><br>
                        <p><a href="about.jsp">Learn about us and preserving copyrights.</a></p>
                    </div>
                </div>
            </div>
        </div>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="js/app.js"></script>


    </body>
</html>