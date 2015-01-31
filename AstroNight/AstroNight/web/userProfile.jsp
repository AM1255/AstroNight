<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html> 
    <head>

        <!-- Meta Tags -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

        <title><%out.write((String) session.getAttribute("firstname"));%></title>   

        <meta name="description" content="Insert Your Site Description" /> 

        <!-- Mobile Specifics -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="HandheldFriendly" content="true"/>
        <meta name="MobileOptimized" content="320"/>   

        <!-- Mobile Internet Explorer ClearType Technology -->
        <!--[if IEMobile]>  <meta http-equiv="cleartype" content="on">  <![endif]-->

        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/_include/css/bootstrap.min.css" rel="stylesheet">

        <!-- Main Style -->
        <link href="${pageContext.request.contextPath}/_include/css/main.css" rel="stylesheet">

        <!-- Supersized -->
        <link href="${pageContext.request.contextPath}/_include/css/supersized.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/_include/css/supersized.shutter.css" rel="stylesheet">

        <!-- FancyBox -->
        <link href="${pageContext.request.contextPath}/_include/css/fancybox/jquery.fancybox.css" rel="stylesheet">

        <!-- Font Icons -->
        <link href="${pageContext.request.contextPath}/_include/css/fonts.css" rel="stylesheet">

        <!-- Shortcodes -->
        <link href="${pageContext.request.contextPath}/_include/css/shortcodes.css" rel="stylesheet">

        <!-- Responsive -->
        <link href="${pageContext.request.contextPath}/_include/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/_include/css/responsive.css" rel="stylesheet">

        <!-- Supersized -->
        <link href="${pageContext.request.contextPath}/_include/css/supersized.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/_include/css/supersized.shutter.css" rel="stylesheet">

        <!-- Google Font -->
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900' rel='stylesheet' type='text/css'>

        <!-- Fav Icon -->
        <link rel="shortcut icon" href="#">

        <link rel="apple-touch-icon" href="#">
        <link rel="apple-touch-icon" sizes="114x114" href="#">
        <link rel="apple-touch-icon" sizes="72x72" href="#">
        <link rel="apple-touch-icon" sizes="144x144" href="#">

        <!-- Modernizr -->
        <script src="${pageContext.request.contextPath}/_include/js/modernizr.js"></script>

        <!-- Analytics -->
        <script type="text/javascript">

            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'Insert Your Code']);
            _gaq.push(['_trackPageview']);

            (function () {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

        </script>
        <!-- End Analytics -->

    </head>


    <body>

        <!-- This section is for Splash Screen -->
        <div class="ole">
            <section id="jSplash">
                <div id="circle"></div>
            </section>
        </div>
        <!-- End of Splash Screen -->

        <!-- Homepage Slider -->
        <div id="home-slider">	
            <div class="overlay"></div>

            <div class="slider-text">
                <img src="${pageContext.request.contextPath}/about_img/astronight.png">
            </div>   

            <div class="control-nav">
                <a id="prevslide" class="load-item"><i class="font-icon-arrow-simple-left"></i></a>
                <a id="nextslide" class="load-item"><i class="font-icon-arrow-simple-right"></i></a>
                <ul id="slide-list"></ul>

                <a id="nextsection" href="#work"><i class="font-icon-arrow-simple-down"></i></a>
            </div>
        </div>
        <!-- End Homepage Slider -->

        <!-- Header -->
        <header>
            <div class="sticky-nav">
                <a id="mobile-nav" class="menu-nav" href="#menu-nav"></a>

                <div id="logo">
                    <a id="goUp" href="${pageContext.request.contextPath}/index.jsp" title="Astronight | PhotoMarket">AstroNight Template</a>
                </div>

                <nav id="menu">
                    <ul id="menu-nav">
                        <li><a href="${pageContext.request.contextPath}/upload.jsp" class="external">Upload</a></li>
                        <li><a href="${pageContext.request.contextPath}/uploadAvatar.jsp" class="external">Change Avatar</a></li>
                        <li><a href="Logout" class="external">Log out</a></li>
                    </ul>
                </nav>

            </div>
        </header>
        <!-- End Header -->

        <!-- About Section -->
        <div id="about" class="page-alternate">
            <div class="container">
                <!-- Title Page -->
                <div class="row">
                    <div class="span12">
                        <div class="title-page">
                            <h2 class="title"><%out.write((String) session.getAttribute("firstname") + " " + (String) session.getAttribute("lastname"));%></h2>
                        </div>
                    </div>
                </div>
                <!-- End Title Page -->

                <!-- People -->
                <div class="row">

                    <!-- Start Profile -->
                    <div class="span4 profile">
                        <div class="image-wrap">
                            <div class="hover-wrap">
                            </div>
                        </div>
                        <div class="social">
                            <ul class="social-icons">
                            </ul>
                        </div>
                    </div>
                    <!-- End Profile -->

                    <!-- Start Profile -->
                    <div class="span4 profile">
                        <div class="image-wrap">
                            <div class="hover-wrap">
                                <span class="overlay-img"></span>
                                <span class="overlay-text-thumb">Creative Director</span>
                            </div>
                            <img src="${pageContext.request.contextPath}/users/<%out.write((String) session.getAttribute("user"));%>.png" onerror='this.onerror = null; this.src="users/<%out.write((String) session.getAttribute("user"));%>.jpg"'>
                        </div>
                    </div>
                    <!-- End Profile -->

                    <!-- Start Profile -->
                    <div class="span4 profile">
                        <div class="image-wrap">
                            <div class="hover-wrap">
                            </div
                        </div>
                        <div class="social">
                            <ul class="social-icons">
                            </ul>
                        </div>
                    </div>
                    <!-- End Profile -->

                </div>
                <!-- End People -->
            </div>
        </div>
        <!-- End About Section -->


        <!-- Our Work Section -->
        <div id="work" class="page">
            <div class="container">
                <!-- Title Page -->
                <div class="row">
                    <div class="span12">
                        <div class="title-page">
                            <h2 class="title">My Work</h2>
                        </div>
                    </div>
                </div>
                <!-- End Title Page -->

                <!-- Portfolio Projects -->
                <div class="row">
                    <div class="span3">
                        <!-- Filter -->
                        <nav id="options" class="work-nav">
                            <ul id="filters" class="option-set" data-option-key="filter">
                                <li class="type-work">Type of Work</li>
                                <li><a href="#filter" data-option-value="*" class="selected">All Projects</a></li>
                                <li><a href="#filter" data-option-value=".design">Milky Way</a></li>
                                <li><a href="#filter" data-option-value=".photography">Nebulae</a></li>
                                <li><a href="#filter" data-option-value=".video">Star Trails</a></li>
                            </ul>
                        </nav>
                        <!-- End Filter -->
                    </div>

                    <div class="span9">
                        <div class="row">
                            <section id="projects">
                                <ul id="thumbs">
                                    <sql:setDataSource var="ds" dataSource="jdbc/astronightdb" />
                                    <sql:query dataSource="${ds}" sql="select * from photos where user = '${user}' " var="results" />

                                    <c:forEach var="image" items="${results.rows}" varStatus="row">
                                        <c:set scope="page" var="imgname"></c:set>
                                            <li class="item-thumbs span3 design">
                                                <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                                <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="${image.title}" href="${image.url}">
                                                    <span class="overlay-img"></span>
                                                    <span class="overlay-img-thumb font-icon-plus"></span>
                                                </a>
                                                <!-- Thumb Image and Description -->
                                                <img src="${image.url}" alt="${image.description}. Price: ${image.price}$" >
                                            </li>
                                    </c:forEach>
                                </ul>
                            </section>

                        </div>
                    </div>
                </div>
                <!-- End Portfolio Projects -->
            </div>
        </div>
        <!-- End Our Work Section -->

        <!-- Contact Section -->
        <div id="contact" class="page">
            <div class="container">
                <!-- Title Page -->
                <div class="row">
                    <div class="span12">
                        <div class="title-page">
                            <h2 class="title">Want to buy a photo?</h2>
                            <h3 class="title-description">Just sent an email to this user and ask him for the product you desire!</h3>
                            <a href="mailto:<%out.write((String) session.getAttribute("mail"));%>"><%out.write((String) session.getAttribute("mail"));%></a>
                        </div>
                    </div>
                </div>
                <!-- End Title Page -->

                
                <!-- End Contact Form -->
            </div>
        </div>
        <!-- End Contact Section -->


        <!-- Footer -->
        <footer>
            <p class="credits">&copy;2013 Brushed. <a href="http://themes.alessioatzeni.com/html/brushed/" title="Brushed | Responsive One Page Template">Brushed Template</a> by <a href="http://www.alessioatzeni.com/" title="Alessio Atzeni | Web Designer &amp; Front-end Developer">Alessio Atzeni</a></p>
        </footer>
        <!-- End Footer -->

        <!-- Back To Top -->
        <a id="back-to-top" href="#">
            <i class="font-icon-arrow-simple-up"></i>
        </a>
        <!-- End Back to Top -->


        <!-- Js -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> <!-- jQuery Core -->
        <script src="_include/js/bootstrap.min.js"></script> <!-- Bootstrap -->
        <script src="_include/js/supersized.3.2.7.min.js"></script> <!-- Slider -->
        <script src="_include/js/waypoints.js"></script> <!-- WayPoints -->
        <script src="_include/js/waypoints-sticky.js"></script> <!-- Waypoints for Header -->
        <script src="_include/js/jquery.isotope.js"></script> <!-- Isotope Filter -->
        <script src="_include/js/jquery.fancybox.pack.js"></script> <!-- Fancybox -->
        <script src="_include/js/jquery.fancybox-media.js"></script> <!-- Fancybox for Media -->
        <script src="_include/js/jquery.tweet.js"></script> <!-- Tweet -->
        <script src="_include/js/plugins.js"></script> <!-- Contains: jPreloader, jQuery Easing, jQuery ScrollTo, jQuery One Page Navi -->
        <script src="_include/js/main.js"></script> <!-- Default JS -->
        <!-- End Js -->

    </body>
</html>