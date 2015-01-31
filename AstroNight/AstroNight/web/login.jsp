<!DOCTYPE html>
<html>

    <head>
        <title>Log In</title>
        <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet">

        <link rel="stylesheet" href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}\styles\login.css">

    </head>

    <body class="blackBack">
        <div class="navig">
            <div class="container">
                <nav class="cl-effect-21">
                    <li><a href="${pageContext.request.contextPath}\index.jsp">Astronight</a></li>
                </nav>
                <nav id="logIn" class="cl-effect-21">
                    <li><a href="${pageContext.request.contextPath}\signup.jsp">Sign Up</a></li>
                    <li><a href="#">About</a></li>
                </nav>
            </div>
        </div>

        <!--<div class="jumbotron">
          <div class="container">
            <h1>Login Page</h1><br>
            <center>
                <form action="LoginCheck" method="post"><br/>
                    <br><br>
                    <label>
                        <p id="span">Username</p>
                        <input id="email" type="text" name="username" placeholder="Your username"><br/>
                    </label><br><br>
                    <label>
                        <p id="span">Password</p>
                        <input type="password" name="password" placeholder="Your password"><br/>
                    </label><br><br>
                    <label>
                        <input type="submit" class="button" value="Submit">
                    </label>
                </form>
            </center>
          </div>
        </div>-->
        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <a href="${pageContext.request.contextPath}\index.jsp"><div>Astro<span>Night</span></div></a>
        </div>
        <br>
        <div class="login">
            <form action="LoginCheck" method="POST"><br/>
                <br><br>
                <label>
                    <p id="span">Username</p>
                    <input id="email" type="text" name="username" placeholder="Your username" required><br/>
                </label><br><br>
                <label>
                    <p id="span">Password</p>
                    <input type="password" name="password" placeholder="Your password" required><br/>
                </label><br><br>
                <label>
                    <!--<input type="submit" class="button" value="Submit">-->
                    <br><button type="submit" class="btn btn-info"> Submit </button>
                </label>
            </form>
        </div>

        <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>

    </body>
</html>