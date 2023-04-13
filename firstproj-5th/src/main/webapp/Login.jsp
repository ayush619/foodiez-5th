<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            background-color: #E6E6E6;
            display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 70vh;
            font-family: Arial, Helvetica, sans-serif;
        }
        h1 {
            color: #14279B;
            text-align: center;
        }
        form {
            margin-top: 50px;
            text-align: center;
        }
        label {
            font-size: 20px;
            color: #3D56B2;
        }
        p {
            font-size: 20px;
            color: #3D56B2;
            text-align: center;
        }
        #tabl
        {
        margin-left: auto;
  margin-right: auto;
        }
        select {
            padding: 10px 20px;
            font-size: 18px;
            border: none;
            background-color: #5C7AEA;
            color: white;
            border-radius: 8px;
        }
        input[type=submit] {
            background-color: #3D56B2;
            color: white;
            padding: 10px 20px;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>Login</h1>
    
    <form action="login" method="post">
    <table id="tabl">
        <tr><td><label>Username:</label></td><td><input type="text" name="username" required></td>
        </tr>
        
        <tr><td>
        <label>Password:</label></td><td><input type="password" name="password" required></td></tr>
    </table>
        <input type="submit"><br>
        ${wrongIP}
        
    </form>
    <p>Don't have an account? <a href="signup.jsp">Sign up here</a></p>
</body>
</html>