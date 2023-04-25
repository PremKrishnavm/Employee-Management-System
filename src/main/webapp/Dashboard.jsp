<%@page import="com.jfd.dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	height: 100vh;
	width: 100vw;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	background-image: linear-gradient(to bottom, #20bf6b, #01baef); 
}
a{
	padding: 15px;
	font-size: 1.3rem;
	text-decoration: none;
	color: #303030;
	margin: .5rem;
	background-color: skyblue;
	border-radius:7px;
	background-attachment: fixed;
}

h1 {
	font-size: 7rem;
	color: #565656;
}
.log{
	position: relative;
	top:40px;
	left:1px;
	padding: 500spx;
	font-size: 1.3rem;
	border-radius: 50px;
	text-decoration: none;
	color: #303030;
	margin: .5rem;

}
h3{
	text-decoration: underline;
}
.icon-bar a:hover {
    background-color: greenyellow;
    border-radius: 7px;
        }
.log a:hover{
 background-color: greenyellow;
    border-radius: 7px;
}
</style>


</style>
</head>
<body>
	<% Admin admin = (Admin) session.getAttribute("admin"); 
		if(admin!=null){
	%>
	<h1>Welcome Admin</h1>
	<h3>You can manage employee data here!!</h3> <br>
	<div class="icon-bar">
		<a href="saveEmployee.jsp">Save-Employee</a> 
		<a href="viewEmployees">View-Employees</a>
	</div>
	<%}else{
		 response.sendRedirect("AdminLogin.jsp");
	}%>
	
	<div class="log"><a href="logout">Logout</a></div>
</body>
</html>