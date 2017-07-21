<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> NAJURA - HomePage </title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/stylish-portfolio.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
footer{background-color : gold;}
</style>

</head>

<body>

    <!-- 오른쪽 위 메뉴 토글 (링크 걸어야함) -->
    <a id="menu-toggle" href="링크걸어야함" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand">
                <a href="링크걸어야함" onclick=$("#menu-close").click();> NA JU RA </a>
            </li>
            <li>
                <a href="링크걸어야함" onclick=$("#menu-close").click();> Home </a>
            </li>
            <li>
                <a href="링크걸어야함" onclick=$("#menu-close").click();> 메뉴이름 </a>
            </li>
            <li>
                <a href="링크걸어야함" onclick=$("#menu-close").click();> 메뉴이름 </a>
            </li>
            <li>
                <a href="링크걸어야함" onclick=$("#menu-close").click();> 메뉴이름 </a>
            </li>
            <li>
                <a href="링크걸어야함" onclick=$("#menu-close").click();> 메뉴이름 </a>
            </li>
        </ul>
    </nav>

    <!-- Header -->
    <header id="top" class="header">
        <div class="text-vertical-center">
            <h2> Search </h2>
            <form action="./stadiumHomeRunBall.project">
              <input id = "name_input" name="stadium" value="사직야구장">
              <%-- <a href = "<%= request.getContextPath() %>/player.project" > --%>
            <input type = 'submit' value = "search"><!-- </a> -->
        </form>
            <br><br>
   <a href="#about" class="btn btn-dark btn-lg"> DOWN </a>
        </div>
    </header>

    <!-- About -->
    <section id="about" class="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2> TITLE </h2>
                    <p class="lead"> ABCDEFGHIJKLMNOPQRSTUVWXYZ </a>.</p>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- 오늘의 경기 보여주는 곳 -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h2> Today's Game </h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
            <image src = "han.png" width = "120" height = "120">
                            </span>
                                <h4>
                                    <strong></br> Team vs Team </strong>
                                </h4>
                                <a href="링크걸어야함" class="btn btn-light"> Detail </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
            <image src = "han.png" width = "120" height = "120">
                            </span>
                                <h4>
                                    <strong></br> Team vs Team </strong>
                                </h4>
                                <a href="링크걸어야함" class="btn btn-light"> Detail </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
            <image src = "han.png" width = "120" height = "120">
                            </span>
                                <h4>
                                    <strong></br> Team vs Team </strong>
                                </h4>
                                <a href="링크걸어야함" class="btn btn-light"> Detail </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
            <image src = "han.png" width = "120" height = "120">
                            </span>
                                <h4>
                                    <strong></br> Team vs Team </strong>
                                </h4>
                                <a href="링크걸어야함" class="btn btn-light"> Detail </a>
                            </div>
                        </div>
                    </div>
           <a href="#portfolio" class="btn btn-dark btn-lg"> DOWN </a>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Callout -->
    <aside class="callout">
        <div class="text-vertical-center">
            <h1> KBO </h1>
        </div>
    </aside>

    <!-- Portfolio -->
    <section id="portfolio" class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <h2><strong> Team Introduction </strong></h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="링크걸어야함">
                                    <img src = "./logo/두산.png" width = "200" height = "200">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="링크걸어야함">
                                    <img src = "./logo/NC.png" width = "200" height = "200">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="링크걸어야함">
                                    <img src = "./logo/넥센.png" width = "200" height = "200">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="링크걸어야함">
                                    <img src = "./logo/LG.png" width = "200" height = "200">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="링크걸어야함">
                                    <img src = "./logo/KIA.png" width = "200" height = "200">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="링크걸어야함">
                                    <img src = "./logo/SK.png" width = "200" height = "200">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="링크걸어야함">
                                    <img src = "./logo/한화.png" width = "200" height = "200">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="링크걸어야함">
                                    <img src = "./logo/롯데.png" width = "200" height = "200">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="링크걸어야함">
                                    <img src = "./logo/삼성.png" width = "200" height = "200">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="링크걸어야함">
                                    <img src = "./logo/KT.png" width = "200" height = "200">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>
    <!-- Footer -->
    <footer>
                    <center><h4><strong> Made by NAJURA </strong></h4></center>
                    <center><p>강영선 김성준 김충환 조강흠 최은선</center>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script>
    // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Scrolls to the selected menu item on the page
    $(function() {
        $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    //#to-top button appears after scrolling
    var fixed = false;
    $(document).scroll(function() {
        if ($(this).scrollTop() > 250) {
            if (!fixed) {
                fixed = true;
                // $('#to-top').css({position:'fixed', display:'block'});
                $('#to-top').show("slow", function() {
                    $('#to-top').css({
                        position: 'fixed',
                        display: 'block'
                    });
                });
            }
        } else {
            if (fixed) {
                fixed = false;
                $('#to-top').hide("slow", function() {
                    $('#to-top').css({
                        display: 'none'
                    });
                });
            }
        }
    });
    // Disable Google Maps scrolling
    // See http://stackoverflow.com/a/25904582/1607849
    // Disable scroll zooming and bind back the click event
    var onMapMouseleaveHandler = function(event) {
        var that = $(this);
        that.on('click', onMapClickHandler);
        that.off('mouseleave', onMapMouseleaveHandler);
        that.find('iframe').css("pointer-events", "none");
    }
    var onMapClickHandler = function(event) {
            var that = $(this);
            // Disable the click handler until the user leaves the map area
            that.off('click', onMapClickHandler);
            // Enable scrolling zoom
            that.find('iframe').css("pointer-events", "auto");
            // Handle the mouse leave event
            that.on('mouseleave', onMapMouseleaveHandler);
        }
        // Enable map zooming with mouse scroll when the user clicks the map
    $('.map').on('click', onMapClickHandler);
    </script>

</body>

</html>