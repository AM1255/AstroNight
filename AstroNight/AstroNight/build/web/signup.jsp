<!DOCTYPE html>
<html>

    <head>
        <title>Sign Up</title>
        <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet">

        <link rel="stylesheet" href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/bootstrap.css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}\styles\signup.css">
        <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
    </head>


    <script type="text/javascript">
        function loadXMLDoc()
        {
            var xmlhttp;
            var k = document.getElementById("username").value;
            var urls = "checkDoubles.jsp?ver=" + k;

            if (window.XMLHttpRequest)
            {
                xmlhttp = new XMLHttpRequest();
            }
            else
            {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function ()
            {
                if (xmlhttp.readyState == 4)
                {
                    document.getElementById("err").innerHTML = xmlhttp.responseText;
                }
            }
            xmlhttp.open("GET", urls, true);
            xmlhttp.send();
        }
    </script>


    <body class="blackBack">
        <div class="navig">
            <div class="container">
                <nav class="cl-effect-21">
                    <li><a href="${pageContext.request.contextPath}\index.jsp">Astronight</a></li>
                </nav>

            </div>
        </div>

        <div class="jumbotron">
            <div class="container">
                <h2 id="SIGN">Fill the form below to start using Astronight</h2><br>
                <center>
                    <form  action="Signup" method="post"><br/>
                        <fieldset>                
                            <div>
                                <input type="text" name="first_name" placeholder="First Name" required/>
                            </div>
                            <div>
                                <input type="text" name="last_name" placeholder="Last Name" required/>
                            </div>
                            <div>
                                <input type="text" onkeyup="loadXMLDoc()" id="username" name="username" placeholder="User name" required/>
                                <span id="err"></span>
                            </div>
                            <div>
                                <input type="password" name="password" placeholder="Password" required/>
                            </div>
                            <div>
                                <input type="email" name="email" placeholder="Email" required/>
                            </div>
                            <div>
                                <input type="text" name="country" placeholder="Your Country" required/>
                            </div>
                            <div>
                                <input type="text" name="city" placeholder="Your City" required/>
                            </div>

                            <input type="submit" name="submit" value="Submit"/>
                        </fieldset>    
                    </form>
                </center>
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
    </body>
</html>