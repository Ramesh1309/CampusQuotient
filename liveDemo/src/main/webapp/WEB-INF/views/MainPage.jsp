<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta http-equiv="Content-Security-Policy" content="script-src 'self' https://apis.google.com">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/MainPageCss.css">
<title>CQ Main Page</title>
</head>
<body>
<form action="/main" method="POST">
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <div class="container">
        <img src="/css/images/CQlogo.png" alt="CQLogo">
            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link text-white" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href='<c:url value="/main?studentreg"></c:url>'>Student registeration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href='<c:url value="/main?login"></c:url>'>Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navigation -->

    <!-- Carousel Slider -->
    <div id="carouselLogo" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselLogo" data-slide-to="0" class="active"></li>
            <li data-target="#carouselLogo" data-slide-to="1"></li>
            <li data-target="#carouselLogo" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <img class="d-block img-fluid" src="http://www.facenet.org/wp-content/themes/executive/assets/images/header.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block img-fluid" src="http://www.facenet.org/wp-content/themes/executive/assets/images/header.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block img-fluid" src="http://www.facenet.org/wp-content/themes/executive/assets/images/header.jpg" alt="First slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselLogo" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselLogo" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- Carousel Slider -->

  
    <div class="container container mt-4 mb-5">
        <h3 class="display-4 text-center"> About us </h3>
        <hr class="bg-dark mb-4 w-25">
        <div class="row">
           <center><p class="aboutus">WELCOME to Campus Quotient platform</p></center>
        </div>
    </div>
   

    <div class="container mb-5">
        <div class="row">
            <div class="col-md-8">
                <h3 class="display-4">Our goals</h3>
                <hr class="bg-dark w-25 ml-0">
                <p class="lead">
                <centre>Contents to be dispayed..</centre>    
                </p>
                <p>
                    OUR Vision
               </p>
                <ul class="list-unstyled pl-4">
                    <li><i class="fa fa-check"></i> DOs and Dont in CQ</li>
                    <li><i class="fa fa-check"></i> DOs and Dont in CQ</li>
                    <li><i class="fa fa-check"></i> DOs and Dont in CQ</li>
                </ul>
                <a href="#" class="btn btn-outline-primary rounded-0"> Read More</a>
            </div>
            <div class="col-md-4 mt-5">
                <img class="card-img-top" src="https://dummyimage.com/300x300/c7c7c7/000.png" alt="Card image cap" style="float: right">
            </div>
        </div>
    </div>

    <div class="container pb-4">
        <h3 class="display-4 text-center">Clients</h3>
        <hr class="bg-dark w-25">
        <div id="carouselLogo" class="carousel slide pt-3" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <ul class="list-inline row  mx-auto">
                        <li class="col-md-4"><img class="d-block img-fluid" src="https://workforce.aspiringminds.in/uploads/company_logo/1207.jpg" alt="First slide"></li>
                        <li class="col-md-4"><img class="d-block img-fluid" src="http://st1.bgr.in/wp-content/uploads/2015/10/infosys-logo.jpg" alt="First slide"></li>
                        <li class="col-md-4"><img class="d-block img-fluid" src="http://st1.bgr.in/wp-content/uploads/2015/10/infosys-logo.jpg" alt="First slide"></li>
                    </ul>
                </div>
                <div class="carousel-item">
                    <ul class="list-inline row  mx-auto">
                        <li class="col-md-4"><img class="d-block img-fluid" src="http://st1.bgr.in/wp-content/uploads/2015/10/infosys-logo.jpg" alt="First slide"></li>
                        <li class="col-md-4"><img class="d-block img-fluid" src="http://st1.bgr.in/wp-content/uploads/2015/10/infosys-logo.jpg" alt="First slide"></li>
                        <li class="col-md-4"><img class="d-block img-fluid" src="http://st1.bgr.in/wp-content/uploads/2015/10/infosys-logo.jpg" alt="First slide"></li>
                    </ul>
                </div>
                <div class="carousel-item">
                    <ul class="list-inline row  mx-auto">
                        <li class="col-md-4"><img class="d-block img-fluid" src="https://workforce.aspiringminds.in/uploads/company_logo/1207.jpg" alt="First slide"></li>
                        <li class="col-md-4"><img class="d-block img-fluid" src="https://workforce.aspiringminds.in/uploads/company_logo/1207.jpg" alt="First slide"></li>
                        <li class="col-md-4"><img class="d-block img-fluid" src="http://st1.bgr.in/wp-content/uploads/2015/10/infosys-logo.jpg" alt="First slide"></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer bg-dark text-white">

        <!-- Social Icons -->
        <div class="bg-primary">
            <div class="container">
                <div class="row py-4">
                    <div class="col-md-6 col-lg-7">
                        <h4 class="mb-0 white-text">Get connected with us on social networks!</h4>
                    </div>
                    <div class="col-md-6 col-lg-5 text-right">
                        <a><i class="fa fa-facebook white-text mr-lg-4 fa-2x"> </i></a>
                        <a><i class="fa fa-twitter white-text mr-lg-4 fa-2x"> </i></a>
                        <a><i class="fa fa-google-plus white-text mr-lg-4 fa-2x"> </i></a>
                        <a><i class="fa fa-linkedin white-text mr-lg-4 fa-2x"> </i></a>
                        <a><i class="fa fa-instagram white-text mr-lg-4 fa-2x"> </i></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Social Icons -->

        <!-- Footer Links -->
        <div class="container pt-5 pb-2">
            <div class="row">

                <div class="col-md-3 col-lg-4 col-xl-3">
                    <h4>Campus Quotient</h4>
                    <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                    <p>
                        About us
                    </p>
                </div>

                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
                    <h4>Training insitutes </h4>
                    <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                    <p><a href="#" class="text-white">Product-1</a></p>
                    <p><a href="#" class="text-white">Product-2</a></p>
                    <p><a href="#" class="text-white">Product-3</a></p>
                    <p><a href="#" class="text-white">Product-4</a></p>
                </div>

                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto">
                    <h4>Useful links</h4>
                    <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                    <p><a href="#" class="text-white">Home</a></p>
                    <p><a href="#" class="text-white">About Us</a></p>
                    <p><a href="#" class="text-white">Services</a></p>
                    <p><a href="#" class="text-white">Contact</a></p>
                </div>

                <div class="col-md-4 col-lg-3 col-xl-3">
                    <h4>Contact</h4>
                    <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                    <p><i class="fa fa-home mr-3"></i> Company Location</p>
                    <p><i class="fa fa-envelope mr-3"></i> k.leoramesh@gmail.com</p>
                    <p><i class="fa fa-phone mr-3"></i> + 9789810010</p>
                    <p><i class="fa fa-print mr-3"></i> + 9789810010</p>
                </div>

            </div>
        </div>
        <!-- Footer Links-->

        <hr class="bg-white mx-4 mt-2 mb-1">

        <!-- Copyright-->
        <div class="container-fluid">
            <p class="text-center m-0 py-1">
                � 2017 Copyright <a href="https://getbootstrap.com/" class="text-white">Campus Quotient</a>
            </p>
        </div>
        <!-- Copyright -->

    </footer>
    <!-- Footer -->
</form>
</body>
</html>