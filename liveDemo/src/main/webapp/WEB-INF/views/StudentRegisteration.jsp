<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="/css/StudentRegCss.css">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Security-Policy" content="script-src 'self' https://apis.google.com">
<title>Student Registeration page</title>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <div class="container">
        <img src="/css/images/CQlogo.png" alt="CQLogo">
            </div>
    </nav>
            <form action="/studentreg" method="POST" id="fileForm">
     
<div class="container">
	<div class="row">
        <div class="col-md-6">

            <fieldset><br><legend class="text-center"><h1><strong>Students registeration</strong></h1> </legend>

            <div class="form-group">
           	<div class="form-group"> 	 
                <label for="F_Name"><span class="req">* </span> First name: </label>
                    <input class="form-control" type="text" name="F_Name" id = "txt"  required /> 
                        <div id="errFirst"></div>    
            </div>

            <div class="form-group">
                <label for="L_Name"><span class="req">* </span> Last name: </label> 
                    <input class="form-control" type="text" name="L_Name" id = "L_Name" required />  
                        <div id="errLast"></div>
            </div>

            <div class="form-group">
                <label for="Email"><span class="req">* </span> Email Address: </label> 
                    <input class="form-control" required type="email" name="Email" id = "Email" />   
                        <div class="status" id="status"></div>
            </div>

            <div class="form-group">
                <label for="Phn_Num"><span class="req">* </span> Phone number:  <small>The phone number wont be disclosed to anyone</small> </label> 
                    <input class="form-control" type="text" name="Phn_Num" id = "Phn_Num" maxlength="10" required />  
                        <div id="errLast"></div>
            </div>

            <div class="form-group">
                <label for="Reg_Num"><span class="req">* </span> Registeration Number: </label>
                    <input required name="Reg_Num" type="text" class="form-control inputpass" minlength="5" maxlength="20"  id="Reg_Num" /> </p>
			</div>
			<div class="form-group">
                <label for="College"><span class="req">* </span> College: </label>
                    <input required name="College" type="text" class="form-control inputpass" minlength="4" maxlength="16"  id="Reg_Num" />
                        <span id="errCollege" class="errCollege"></span>
            </div>
            <div class="form-group">
             <label for="University"><span class="req">* </span> University: </label>
                    <input required name="University" type="text" class="form-control inputpass" id="University" />
                        <span id="errUniversity" class="errUniversity"></span>
            
            
            </div>
            <div>
            <label for="Branch"><span class="req">* </span> Branch: </label>
                    <input required name="Branch" type="text" class="form-control inputpass"  id="Branch" />
                        <span id="errBranch" class="errBranch"></span>
            </div>
            <div>
             <label for="YOP"><span class="req">* </span> Year of passing: </label>
                    <input required name="YOP" type="number" class="form-control inputpass" maxlength="4"  id="YOP" />
                        <span id="errYOP" class="errYOP"></span>
            
            </div>
			<div class="form-group">
                <input class="btn btn-success" type="submit" name="submit_reg" value="Register">
            </div>        
            
           </fieldset>



        </div><!-- ends col-6 -->
   
            <div class="col-md-6">
                <h1 class="page-header">Campus Quotient </h1>
                <p>Wanna know more about us <br><a href='<c:url value="/studentreg?joinus"></c:url>' target="_blank">Click Here</a></p>
                
            </div>

	</div>
	
</div>
 </form><!-- ends register form -->
</body>
</html>