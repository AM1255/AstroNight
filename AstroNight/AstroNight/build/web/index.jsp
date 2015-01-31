<!DOCTYPE html>

<html>

    <head>
        <title>Astronight | PhotoMarket</title>
        <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet">

        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400;300' rel='stylesheet' type='text/css'>


        <link rel="stylesheet" href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}\styles\main.css">

    </head>

    <body class="blackBack">
        <!---------------------------------------------------------------------------------------------------->  


        <!---------------------------------------------------------------------------------------------------->    
        <div class="navig">
            <div class="container">
                <nav class="cl-effect-21">
                    <li><a href="index.jsp">Astronight</a></li>
                </nav>
                <%
                    String check = (String) session.getAttribute("logged");
                    if (session.getAttribute("logged") == null || check.equals("yes") && session.getAttribute("user") == null) {
                        out.write("<nav id=\"logIn\" class=\"cl-effect-21\">");
                        out.write("<li><a href=" + request.getContextPath() + "/signup.jsp>Sign Up</a></li>");
                        out.write("<li><a href=" + request.getContextPath() + "/login.jsp>Log In</a></li>");
                        out.write("</nav>");
                        

                    } else {
                        String user = (String) session.getAttribute("user");
                        out.write("<nav id=\"logged\" class=\"cl-effect-21\">");
                        out.write("<li><a href=\"" + request.getContextPath() + "/userProfile.jsp\">" + user + "'s profile</a></li>");
                        out.write("<li><a href=\"Logout\" accesskey=\"1\">Log Out</a></li>");
                        out.write("</nav>");
                        
                        //In case of cookie uncomment here
                                                
                        /*String user = null;
                        String sessionID = null;
                        
                        Cookie[] cookies = request.getCookies();
                        if (cookies != null) {
                            for (Cookie cookie : cookies) {
                                if (cookie.getName().equals("user")) {
                                    userName = cookie.getValue();
                                }
                                if (cookie.getName().equals("JSESSIONID")) {
                                    sessionID = cookie.getValue();
                                }
                            }
                        }*/
                    }%>
            </div>
        </div>

        <div class="jumbotron">
            <div class="container">
                <h1>Make your work known by uploading your photos</h1><br>
                <p>Join Astronight</p>
                <button type="button" class="btn btn-info">
                    <%

                        if (session.getAttribute("logged") == null || check.equals("yes") && session.getAttribute("user") == null) {
                            out.write("<a href=\"" + request.getContextPath() + "/login.jsp\">Upload your first photo</a>");
                        } else {
                            out.write("<a href=\"" + request.getContextPath() + "/upload.jsp\">Upload your first photo</a>");
                        }%>
                </button>


            </div>
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
        <script src="js/app.js"></script>


    </body>
</html>