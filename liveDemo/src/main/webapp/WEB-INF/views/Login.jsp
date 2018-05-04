<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<head>
<title>Campus quotient </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Security-Policy" content="script-src 'self' https://apis.google.com">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="/css/LoginCss.css">  
  <link rel="javascript" href="/js/pas.js">
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <img src="/css/images/CQlogo.png" alt="CQLOGO">
    </div>
   
      
      <ul class="nav navbar-nav navbar-right">
	  
	  
      <form id="signin" action="/login" method="POST" class="navbar-form navbar-right" role="form">
	 
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="email" type="text" class="form-control" name="username" placeholder="Username" required/>                                        
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="password" type="password" class="form-control" name="password" placeholder="Password" required/>   
                  </div>

                        <button type="submit" class="btn btn-primary">Login</button>
             
                   </form>
     
    </div>
      </ul>
    </div>
  </div>
</nav>

<div class="container" >
    <div class="col-md-6" >
    	<div class="logbox">
            <form id="signup" method="POST" action="/save" >
                <h1><strong>Create an Account</h1></strong>
                <input name="name" type="text" placeholder="Enter the name" class="input pass" required />
                <input name="usernamesign" type="text" placeholder="username" class="input pass"  required />
                <input name="email" type="email" placeholder="Email address" class="input pass" required />
                <input name="password" class="input pass" type="password" placeholder="Choose a password" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
                <input name="confirm" type="password" placeholder="Confirm password" required="required" class="input pass"/>
                <input type="submit" value="Sign me up!" class="inputButton" id="submit" onclick="check()" />
                
             </form>
            </div>
        
    </div>
    <!--col-md-6-->
</div>

</body>
</html>