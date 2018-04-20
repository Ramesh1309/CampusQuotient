<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registeration page</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
<script src="/javascript/js.js"></script>
<link rel="stylesheet" href="/css/StudentForm.css">
</head>
<body>
<div class="container">
<form class="form-horizontal" th:action="@{/myclass}" th:object="${stpojo}" action="/insert" method="post" role="form" onsubmit="return Checkuser();" >
    			<h2>Registration</h2>
                <div class="form-group">
                    <label for="F_Name" class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-9">
                        <input path="F_Name" type="text" th:field="*{F_Name}" name="F_Name" id="F_Name" placeholder="First Name" class="form-control" />
                    	<div th:if="${#fields.hasErrors('F_Name')}" th:errors="*{F_Name}" ></div>
               	    </div>
               	</div>
                <div class="form-group">
                    <label for="L_Name" class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-9">
                        <input path="L_Name" type="text" th:field="*{L_Name}"  id="L_Name" name="L_Name" placeholder="Last Name" class="form-control" />
                   		<div th:if="${#fields.hasErrors('L_Name')}" th:errors="*{L_Name}"></div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="Email" class="col-sm-3 control-label">Email* </label>
                    <div class="col-sm-9">
                        <input path="Email" type="text" th:fields="*{Email}" id="Email" name="Email" class="form-control"/>
             		<div th:if="${#fields.hasErrors('Email')}" th:errors="*{Email}"></div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="Phn_No" class="col-sm-3 control-label">Phone Number*</label>
                    <div class="col-sm-9">
                        <input path="Phn_Num" type="text" id="Phn_Num" th:field="*{Phn_Num}" name="Phn_Num" class="form-control"/>
                    <div th:if="${#fields.hasErrors('Phn_Num')}" th:errors="*{Phn_Num}"></div>
                        <span class="help-block">Your phone number won't be disclosed anywhere </span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="Reg_No" class="col-sm-3 control-label">Registeration number* </label>
                    <div class="col-sm-9">
                        <input path="Reg_Num" type="text" th:fields="*{Reg_Num}" id="Reg_Num" name="Reg_No" placeholder="Registeration number" class="form-control" />
                  	<div th:if="${#fields.hasErrors('Reg_Num')}" th:errors="*{Reg_Num}"></div>
                    </div>
                </div>
                <div class="form-group">
                        <label for="University" class="col-sm-3 control-label">University* </label>
                    <div class="col-sm-9">
                        <form:input path="University" type="text" th:field="*{University}" id="University" name="University" placeholder="University Name" class="form-control"/>
                  	<div th:if="${#fields.hasErrors('University')}" th:errors="*{University}"></div>
                    </div>
                </div>
                 <div class="form-group">
                        <label for="CollegeName" class="col-sm-3 control-label" >College* </label>
                    <div class="col-sm-9">
                        <input path="College" type="text" id="College" th:field="*{College}" name="College" placeholder="College Name"  class="form-control" />
                   <div th:if="${#fields.hasErrors('College')}" th:errors="*{College}"></div>
                    </div>
                 </div>
                 <div class="form-group">
                        <label for="Branch" class="col-sm-3 control-label">Branch* </label>
                    <div class="col-sm-9">
                        <input path="Branch" type="text" th:field="*{Branch}" id="Branch" name="Branch" placeholder="Branch Name" class="form-control" />
                    <div th:if="${#fields.hasErrors('Branch')}" th:errors="*{Branch}"></div>
                    </div>
                 </div>
          		<div class="form-group">
                        <label for="YOP" class="col-sm-3 control-label">Year of passing* </label>
                    <div class="col-sm-9">
                        <input path="YOP" type="text" th:field="*{YOP}" id="YOP" name="YOP" placeholder="Year of passing" class="datepicker" />
                    <div th:if="${#fields.hasErrors('YOP')}" th:errors="*{YOP}"></div>
                    </div>
          		</div>

                <button type="submit" class="btn btn-primary btn-block">Register</button>
    </form> <!-- /form -->
</div> <!-- ./container -->


</body>
</html>