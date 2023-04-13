<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thank You</title>
<style>
    html {
        background-image: url("https://us.123rf.com/450wm/vamamont/vamamont2106/vamamont210600074/171022301-mudra-namaste-on-the-background-of-the-mandala-religious-oriental-greeting-vector-illustration.jpg?ver=6");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: auto;
    }
    body::before {
            content: "";
            background-image: url("https://us.123rf.com/450wm/vamamont/vamamont2106/vamamont210600074/171022301-mudra-namaste-on-the-background-of-the-mandala-religious-oriental-greeting-vector-illustration.jpg?ver=6");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            position: absolute;
            top: 0;
            left: 0;
            width: auto;
            height: auto;
            filter: blur(5px);
            z-index: -1;
    }
    h1, h2, p, label {
        color: #14279B;
        text-align: center;
    }
    form {
        margin-top: 50px;
        text-align: center;
    }
    select {
        padding: 10px 20px;
        font-size: 18px;
        border: none;
        background-color: #5C7AEA;
        color: white;
        border-radius: 8px;
    }
    input[type=submit], button {
        background-color: #3D56B2;
        color: white;
        padding: 10px 20px;
        font-size: 18px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
    }
    table {
        margin-top: 50px;
        margin-left: auto;
        margin-right: auto;
        background-color: #F5F5F5;
        border-collapse: collapse;
        width: 50%;
    }
    td, th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }
    tr:nth-child(even){background-color: #f2f2f2;}
    tr:hover {background-color: #ddd;}
</style>

</head>
<body>
    <h1>Thank you for ordering from our ${g}!</h1>
    <%-- <h1>${hotl.getName()}</h1> --%>

    <table>
    <tr>
    <td>Bill(with GST) :</td><td>${orderamt}</td></tr>
    <tr>
    <td>Delivery Address</td><td>${address}</td></tr>
    </table>
    <form action="/loc">
        <input type="submit" value="Back to Locations">
    </form>
    
</body>
</html>
