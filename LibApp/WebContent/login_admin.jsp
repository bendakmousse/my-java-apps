<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
    <div style="text-align: center">
        <h1>Admin Login</h1>
        <form action="login_admin" method="post">
            <label for="username">Username :</label>
            <input name="username" size="30" />
            <br><br>
            <label for="password">Password :</label>
            <input type="password" name="password" size="30" />
            <br>${message}
            <br><br>           
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>