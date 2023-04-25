<%@page import="com.jfd.dto.Admin"%>
<%@page import="com.jfd.dto.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
	body{
	display: flex;
	flex-direction: column;
	align-items: center;
	background-image: linear-gradient(to bottom, #20bf6b, #01baef);
    height: 100vh;
    background-color: #20bf6b; 
	}
	h1{
	text-decoration: 5px solid black underline;
	font-family: arial,helvetica,sans-serif;
	font-style: italic;	
	}
  .btn a{
            padding: 14px 20px;
  			margin: 8px 0;
            background-color: #f9ca24;
            border: none;
            border-radius: 7px;
            color: #ffffff;
            font-size: 16px;
            font-weight: bold;
  			width: 100px;
  			justify-content: center;
  			text-decoration: none;
  			position: relative;
  			top: 30px;
        }

        .btn a:hover {
            background-color: #f0932b;
        }
	table,th,td{
	border: 1px solid black;
	}
	tr td>a{
	text-decoration: none;
	}
	tr td>a:hover{
	background-color: red;
	border-radius: 7px;
	}
</style>
<body>
	<% 
	Admin admin = (Admin)session.getAttribute("admin");

	if(admin!=null){
	
	List<Employee> employees = (List) request.getAttribute("employees"); %>
	
	<h1>Employees Details List</h1>
	
	<table border="" cellPadding="10px" cellSpacing="0">
		<tr>
			<th>Employee_id</th>
			<th>Employee_Name</th>
			<th>Employee_Gender</th>
			<th>Employee_Phno</th>
			<th>Employee_Email</th>
			<th>Employee_Designation</th>
			<th>Employee_Salary</th>
			<th>Employee_Address</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<%for(Employee employee : employees){ %>
		<tr>
			<td><%=employee.getEmployeeId()%></td>
			<td><%=employee.getEmployeeName()%></td>
			<td><%=employee.getEmployeeGender()%></td>
			<td><%=employee.getEmployeePh_no()%></td>
			<td><%=employee.getEmployeeEmail()%></td>
			<td><%=employee.getEmployeeDesig()%></td>
			<td><%=employee.getEmployeeSalary()%></td>
			<td><%=employee.getEmployeeAddress()%></td>
			<td><a href="updateEmployee?employeeId=<%= employee.getEmployeeId()%>">Update</a></td>
			<td><a href="deleteEmployee?employeeId=<%=employee.getEmployeeId()%>">Delete</a></td>	
		</tr>
		<%} %>	
	</table>
		<div class="btn">
		<a href="Dashboard.jsp">Home</a>
	</div>
	<%}else{
			
			response.sendRedirect("AdminLogin.jsp");
		}%>
</body>
</html>