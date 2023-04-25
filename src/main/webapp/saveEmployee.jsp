<%@page import="com.jfd.dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .wrapper {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #20bf6b;
            background-image: linear-gradient(to bottom, #20bf6b, #01baef);
        }

        .form-wrapper {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
        }

        .form-wrapper h1 {
        	text-decoration:underline;
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
		
		.form-group input[type="text"],
        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="text"],
        .form-group input[type="text"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #f3f3f3;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="text"]:focus,
        .form-group input[type="email"]:focus,
        .form-group input[type="text"]:focus,
        .form-group input[type="text"]:focus{
            outline: none;
            background-color: #ebebeb;
        }
        .form-groupp{
        	 width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            outline: none;
            background-color: #ebebeb;
        }

        .btn {
            padding: 14px 20px;
  			margin: 8px 0;
            background-color: #f9ca24;
            border: none;
            border-radius: 7px;
            color: #ffffff;
            font-size: 16px;
            font-weight: bold;
            letter-spacing: 1px;
  			width: 100px;
  			align-items: center;
  			justify-content: center;
        }

        .btn:hover {
            background-color: #f0932b;
        }
    </style>
</head>
<body>
	<%
		Admin admin = (Admin) session.getAttribute("admin");
	if(admin!=null){
	%>
		 <div class="wrapper">
    	 <div class="form-wrapper">
		 <h1>Enter Employee Details</h1>
         <form method="post" action="save">
         <div class="form-group">
         <input name="employeeName" type="text" placeholder="Enter Your Name:">
         </div>
         <label class="gen">Male</label> 
		 <input name="employeeGender" type="radio" value="Male"> 
		 <label class="gen">Female</label> 
		 <input name="employeeGender" type="radio" value="Female"> <br> <br>
		 <div class="form-group">
		 <input name="employeePh_no" type="text" placeholder="Enter Your Ph_no">
		 </div>
		 <div class="form-group">
		 <input name="employeeEmail" type="email" placeholder="Enter Your Email">
		 </div>
		 <div class="form-groupp">
		 <input list="designations" name="desig" id="desig" placeholder="Select your Designation">
                    <datalist id="designations">
                        <option value="Manager">
                        <option value="Soft-eng">
                        <option value="SQL-Dev">
                        <option value="Front-end-dev">
                        <option value="Testing">
                    </datalist>
         </div>
         <div class="form-group"> <br>
         <input name="employeeSalary" type="text" placeholder="Salary">
         </div> 
         <div class="form-group">
         <input name="employeeAddress" type="text" placeholder="Enter Your Address">
         </div>
		 <input type="submit" value="Save" class="btn"> 
		 <input type="reset" class="btn"> 	 
         </form>
         </div>
   </div>
         <%}else{
		response.sendRedirect("AdminLogin.jsp");
	} %>
</body>
</html>