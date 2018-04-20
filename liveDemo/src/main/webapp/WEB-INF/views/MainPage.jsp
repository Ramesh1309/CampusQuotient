<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/MainPageCss.css">
<title>CQ Main Page</title>
</head>
<body>
<form action="/main" method="post">
<div class="site-wrapper">
  <div class="site-wrapper-inner">
    <div class="cover-container">
      <div class="masthead clearfix">
        <div class="inner">
          <h3 class="masthead-brand"></h3>

          <ul class="nav masthead-nav">
            <li class="active">
              <a href='<c:url value="/main/?login"></c:url>' target=
              "_blank">Login</a>
            </li>

            <li>
             <a href='<c:url value="/main/?registeration"></c:url>'>Join us</a>
            </li>

            <li>
              <a href='<c:url value="/main/?studentreg"></c:url>'>Student Registeration</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="inner cover">
      <br><br><br><br>
       <strong> <h1 class="cover-heading">Welcome to CQ community</h1></strong>

        <p class="lead">CQ provides a platform for building your own community and 
        bind with top leading organisation for the betterment of your career.
            
        <small>    <br> <a href="StudentRegisteration.jsp" target=
              "_blank">Join Our Team</a></small>
            
        </p>

        <p class="lead"><a class="btn btn-lg btn-info" href="#">Learn
        more</a></p>
      </div>

      <div class="mastfoot">
        <div class="inner">
          <!-- Validation -->
          <p><a href=
          "#"
          target="_blank"><small> an AICTE Approved</small></a></p>          
      
          

          <p>© 2018 Campus Quotient~ <a href=
          "MainPage.jsp">Campus Quotient</a></p>
        </div>
      </div>
    </div>
</div>
</div>
</form>
</body>
</html>