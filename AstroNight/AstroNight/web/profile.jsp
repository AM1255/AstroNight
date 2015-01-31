<%-- 
    Document   : profile
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>   Created on : Nov 20, 2014, 7:24:42 PM
    Author     : kosta_000
--%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
        
        <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet">

        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400;300' rel='stylesheet' type='text/css'>


        <link rel="stylesheet" href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/bootstrap.css">
        <link rel="stylesheet" href="styles\profile.css">

    </head>
    <body class="blackBack">
        
        <div class="head">
            <h2 align="center"> Konstantinos Themelis</h2>
            <div class="circle" style="background-image: url('users/kothemel.JPG')"></div>
        </div>
        <div class="menu">
            <div class="icon-close">
                <img src="http://s3.amazonaws.com/codecademy-content/courses/ltp2/img/uber/close.png">
            </div>
            <ul>
                <li><a href="#">Upload Photo</a></li>
                <li><a href="#">Manage Photos</a></li>
                <li><a href="#">Log Out</li>
            </ul>
        </div>
        
        
        
        
        <div class="jumbotron">
            <!--<div class="circle" style="background-image: url('users/kothemel.JPG')"></div>-->
            <div class="icon-menu">
                <%
                    //String full_name = " "+(String)session.getAttribute("firstname")+" "+session.getAttribute("lastname");
                    out.write("<i class=\"fa fa-bars\">"+"MENU"+"</i>");
                %> 
            </div>
        </div>
            
     
        
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="app.js"></script>
        
    </body>
</html>
