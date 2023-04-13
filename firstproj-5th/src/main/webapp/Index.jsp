<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Foodiez</title>

<style>
    html {
        background-image: url("https://wallup.net/wp-content/uploads/2018/09/29/687349-anime-original-city-cities-art-artwork-fantasy-detail.jpg");
			background-size: cover;
			background-position: center;
			background-repeat: no-repeat;
			height: 100%;
    }
    body::before {
			content: "";
			background-image: url("https://wallup.net/wp-content/uploads/2018/09/29/687349-anime-original-city-cities-art-artwork-fantasy-detail.jpg");
			background-size: cover;
			background-position: center;
			background-repeat: no-repeat;
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
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
    <h1>Welcome to FoodieZ</h1>
    <form action="lochotel">
        <label for="location">Choose your location:</label><br><br>
        <select id="cars" name="loktion">
            <option value="Pune">Pune</option>
            <option value="Durg">Durg</option>
            <option value="Jamshedpur">Jamshedpur</option>
        </select><br><br>
        <input type="submit" value="Find Hotels">
    </form>
</body>
</html>
