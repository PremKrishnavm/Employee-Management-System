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
            background-color: #fc5c65;
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

        .form-group input[type="text"],
        .form-group input[type="password"],
        .form-group input[type="email"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #f3f3f3;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="password"]:focus,
        .form-group input[type="email"]:focus {
            outline: none;
            background-color: #ebebeb;
        }

        .button {
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

        .button:hover {
            background-color: #3867d6;
        }

        .color-bar {
            height: 10px;
            margin-top: 20px;
            background-color: #ffffff;
            background-image: linear-gradient(to right, #fd1d1d, #fcb045, #a8c7ff);
        }

        .bottom-text {
            margin-top: 20px;
            text-align: center;
            color: #ffffff;
        }

        .bottom-text a {
            color: #ffffff;
            text-decoration: none;
        }

        .bottom-text a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="form-wrapper">
            <h1>Admin SignUp</h1>
            <form action="signUp" method="post">
                <div class="form-group">
                    <input name="AdminName" placeholder="Enter Name:" type="text"> <br>
                </div>
                <div class="form-group">
                    <input name="AdminEmail" placeholder="Enter Email:" type="email"> <br>
                </div>
                <div class="form-group">
                    <input name="AdminPassword" placeholder="Enter Password" type="password"> <br>
                </div>
                <input type="submit" class="button" value="SignUp">
            </form>
            <div class="color-bar"></div>
        </div>
    </div>
</body>
</html>