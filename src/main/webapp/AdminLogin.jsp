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

        .form-group input[type="email"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #f3f3f3;
        }

        .form-group input[type="email"]:focus,
        .form-group input[type="password"]:focus {
            outline: none;
            background-color: #ebebeb;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #f9ca24;
            border: none;
            border-radius: 5px;
            color: #ffffff;
            font-size: 16px;
            font-weight: bold;
            letter-spacing: 1px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #f0932b;
        }

        .color-bar {
            height: 10px;
            margin-top: 20px;
            background-color: #ffffff;
            background-image: linear-gradient(to right, #fd1d1d, #fcb045, #a8c7ff);
        }
    </style>
</head>
<body>
	<div class="wrapper">
    	<div class="form-wrapper">
   			 <h1>Admin Login</h1>
			 <form action="login" method="post">
				<div class="form-group">
					<input name="AdminEmail" placeholder="Enter Your Email" type="email" required="required" id="username">
				</div>
				<div class="form-group">
					<input name="AdminPassword" placeholder="Enter Your Password" type="password" required="required" id="password">
				</div> <br>
				<input type="submit" class="btn" value="Login">	
			</form>
			<div class="color-bar"></div>
		</div>
   </div>
</body>
</html>