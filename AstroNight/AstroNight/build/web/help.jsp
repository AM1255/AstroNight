<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Help Page</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/help/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/help/css/font-awesome.css">
        <link rel='stylesheet' id='camera-css'  href='${pageContext.request.contextPath}/help/css/camera.css' type='text/css' media='all'>

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/help/css/slicknav.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/help/css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/help/css/style.css">


        <script type="text/javascript" src="${pageContext.request.contextPath}/help/js/jquery-1.8.3.min.js"></script>

        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700|Open+Sans:700' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="${pageContext.request.contextPath}/help/js/jquery.mobile.customized.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/help/js/jquery.easing.1.3.js"></script> 
        <script type="text/javascript" src="${pageContext.request.contextPath}/help/js/camera.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/help/js/myscript.js"></script>
        <script src="${pageContext.request.contextPath}/help/js/sorting.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/help/js/jquery.isotope.js" type="text/javascript"></script>
        <!--script type="text/javascript" src="js/jquery.nav.js"></script-->


        <script>
            jQuery(function () {
                jQuery('#camera_wrap_1').camera({
                    transPeriod: 500,
                    time: 3000,
                    height: '490px',
                    thumbnails: false,
                    pagination: true,
                    playPause: false,
                    loader: false,
                    navigation: false,
                    hover: false
                });
            });
        </script>

    </head>
    <body>

        <!--home start-->

        <div id="home">
            <div class="headerLine">
                <div id="menuF" class="default">
                    <div class="container">
                        <div class="row">
                            <div class="logo col-md-4">
                                <div>
                                    <a href="${pageContext.request.contextPath}/index.jsp">
                                        <img src="${pageContext.request.contextPath}/help/images/logo.png">
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="navmenu"style="text-align: center;">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row wrap">
                        <div class="col-md-12 gallery"> 
                            <div class="camera_wrap camera_white_skin" id="camera_wrap_1">
                                <div data-thumb="" data-src="${pageContext.request.contextPath}/help/images/slides/blank.gif">
                                    <div class="img-responsive camera_caption fadeFromBottom">
                                        <h2>Let up help you!</h2>
                                    </div>
                                </div>

                            </div><!-- #camera_wrap_1 -->
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!--about start-->    


        <!--project start-->    
        <div id="project">    	
            <div class="line3">
                <div class="container">
                    <div id="project1" ></div>
                    <div class="row Ama">
                        <div class="col-md-12">
                            <span name="projects" id="projectss"></span>
                            <h3>Click on images below to help you!</h3>

                        </div>
                    </div>
                </div>
            </div>          


            <div class="container">

                <div class="row">




                    <div class="portfolio_block columns3   pretty" data-animated="fadeIn">	
                        <div class="element col-sm-4   gall branding">
                            <a class="plS" href="${pageContext.request.contextPath}/help/images/prettyPhotoImages/pic1.jpg" rel="prettyPhoto[gallery2]">
                                <img class="img-responsive picsGall" src="${pageContext.request.contextPath}/help/images/prettyPhotoImages/thumb_pic1.jpg" alt="Click on Log in button to access your account."/>
                            </a>
                            <div class="view project_descr ">
                                
                            </div>
                        </div>
                        <div class="element col-sm-4  gall branding">
                            <a class="plS" href="${pageContext.request.contextPath}/help/images/prettyPhotoImages/pic2.jpg" rel="prettyPhoto[gallery2]">
                                <img class="img-responsive picsGall" src="${pageContext.request.contextPath}/help/images/prettyPhotoImages/thumb_pic2.jpg" alt="Once you logged in you can start uploading your photos."/>
                            </a>
                            <div class="view project_descr center">
                                
                            </div>
                        </div>
                        <div class="element col-sm-4  gall web">
                            <a class="plS" href="${pageContext.request.contextPath}/help/images/prettyPhotoImages/pic3.jpg" rel="prettyPhoto[gallery2]">
                                <img class="img-responsive picsGall" src="${pageContext.request.contextPath}/help/images/prettyPhotoImages/thumb_pic3.jpg" alt="Change your own avatar!"/>
                            </a>
                            <div class="view project_descr ">
                                
                            </div>
                        </div>




                    </div>

                </div>

                <script type="text/javascript">
                    jQuery(window).load(function () {
                        items_set = [
                            {category: 'branding', lika_count: '77', view_count: '234', src: '${pageContext.request.contextPath}/images/prettyPhotoImages/pic9.jpg', title: 'Foil Mini Badges', content: ''},
                            {category: 'polygraphy', lika_count: '45', view_count: '100', src: '${pageContext.request.contextPath}/images/prettyPhotoImages/pic7.jpg', title: 'Darko ? Business Card Mock Up', content: ''},
                            {category: 'text_styles', lika_count: '22', view_count: '140', src: '${pageContext.request.contextPath}/images/prettyPhotoImages/pic8.jpg', title: 'Woody Poster Text Effect', content: ''}


                        ];
                        jQuery('.portfolio_block').portfolio_addon({
                            type: 1, // 2-4 columns simple portfolio
                            load_count: 3,
                            items: items_set
                        });
                        $('#container').isotope({
                            animationOptions: {
                                duration: 900,
                                queue: false
                            }
                        });
                    });
                </script>
            </div>
        </div>    


        <!--contact start-->

        <div id="contact">
            <div class="line5">					
                <div class="container">
                    <div class="row Ama">
                        <div class="col-md-12">
                            <h3>Got a Question? We&rsquo;re Here to Help!</h3>
                            <p>Mail us on <a href="mailto:kothemel@gmail.com"><i class="fa fa-envelope"></i>kothemel@gmail.com</li></a></p>
                        </div>
                    </div>
                </div>
            </div>




            <div class="lineBlack">
                <div class="container">
                    <div class="row downLine">
                        <div class="col-md-6 text-left copy">
                            <p>Copyright &copy; 2014 Timber HTML Template. All Rights Reserved.</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>		


    <script src="${pageContext.request.contextPath}/help/js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/help/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/help/js/jquery.slicknav.js"></script>
    <script>
                    $(document).ready(function () {
                        $(".bhide").click(function () {
                            $(".hideObj").slideDown();
                            $(this).hide(); //.attr()
                            return false;
                        });
                        $(".bhide2").click(function () {
                            $(".container.hideObj2").slideDown();
                            $(this).hide(); // .attr()
                            return false;
                        });

                        $('.heart').mouseover(function () {
                            $(this).find('i').removeClass('fa-heart-o').addClass('fa-heart');
                        }).mouseout(function () {
                            $(this).find('i').removeClass('fa-heart').addClass('fa-heart-o');
                        });

                        function sdf_FTS(_number, _decimal, _separator)
                        {
                            var decimal = (typeof (_decimal) != 'undefined') ? _decimal : 2;
                            var separator = (typeof (_separator) != 'undefined') ? _separator : '';
                            var r = parseFloat(_number)
                            var exp10 = Math.pow(10, decimal);
                            r = Math.round(r * exp10) / exp10;
                            rr = Number(r).toFixed(decimal).toString().split('.');
                            b = rr[0].replace(/(\d{1,3}(?=(\d{3})+(?:\.\d|\b)))/g, "\$1" + separator);
                            r = (rr[1] ? b + '.' + rr[1] : b);

                            return r;
                        }

                        setTimeout(function () {
                            $('#counter').text('0');
                            $('#counter1').text('0');
                            $('#counter2').text('0');
                            setInterval(function () {

                                var curval = parseInt($('#counter').text());
                                var curval1 = parseInt($('#counter1').text().replace(' ', ''));
                                var curval2 = parseInt($('#counter2').text());
                                if (curval <= 707) {
                                    $('#counter').text(curval + 1);
                                }
                                if (curval1 <= 12280) {
                                    $('#counter1').text(sdf_FTS((curval1 + 20), 0, ' '));
                                }
                                if (curval2 <= 245) {
                                    $('#counter2').text(curval2 + 1);
                                }
                            }, 2);

                        }, 500);
                    });
    </script>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            jQuery('#menu').slicknav();

        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {

            var $menu = $("#menuF");

            $(window).scroll(function () {
                if ($(this).scrollTop() > 100 && $menu.hasClass("default")) {
                    $menu.fadeOut('fast', function () {
                        $(this).removeClass("default")
                                .addClass("fixed transbg")
                                .fadeIn('fast');
                    });
                } else if ($(this).scrollTop() <= 100 && $menu.hasClass("fixed")) {
                    $menu.fadeOut('fast', function () {
                        $(this).removeClass("fixed transbg")
                                .addClass("default")
                                .fadeIn('fast');
                    });
                }
            });
        });
        //jQuery
    </script>
    <script>
        /*menu*/
        function calculateScroll() {
            var contentTop = [];
            var contentBottom = [];
            var winTop = $(window).scrollTop();
            var rangeTop = 200;
            var rangeBottom = 500;
            $('.navmenu').find('a').each(function () {
                contentTop.push($($(this).attr('href')).offset().top);
                contentBottom.push($($(this).attr('href')).offset().top + $($(this).attr('href')).height());
            })
            $.each(contentTop, function (i) {
                if (winTop > contentTop[i] - rangeTop && winTop < contentBottom[i] - rangeBottom) {
                    $('.navmenu li')
                            .removeClass('active')
                            .eq(i).addClass('active');
                }
            })
        }
        ;

        $(document).ready(function () {
            calculateScroll();
            $(window).scroll(function (event) {
                calculateScroll();
            });
            $('.navmenu ul li a').click(function () {
                $('html, body').animate({scrollTop: $(this.hash).offset().top - 80}, 800);
                return false;
            });
        });
    </script>	
    <script type="text/javascript" charset="utf-8">

        jQuery(document).ready(function () {
            jQuery(".pretty a[rel^='prettyPhoto']").prettyPhoto({animation_speed: 'normal', theme: 'light_square', slideshow: 3000, autoplay_slideshow: true, social_tools: ''});

        });
    </script>
</body>

</html>