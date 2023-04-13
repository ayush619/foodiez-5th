<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.util.Map, com.ayush.springmvcboot.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>hotels</title>
<style>
    html {
        background-image: url("https://t.pimg.jp/071/057/671/1/71057671.jpg");
			background-size: cover;
			background-position: center;
			background-repeat: no-repeat;
			height: 100%;
    }
    body::before {
			content: "";
			background-image: url("https://t.pimg.jp/071/057/671/1/71057671.jpg");
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
    <br>
<h1>${g}</h1>
<%-- <h1>${hotl.getName()}</h1> --%>
<h2>Here is our Menu  </h2>
<table>
<tr>
    <td>Items</td>
    <td>Price(INR)</td>
    <td>Amount</td>
</tr>
<%
Hotel obj = (Hotel)request.getAttribute("hotl");
Map<String, Integer> myMap = obj.getMenu().getDishes();

for (Map.Entry<String, Integer> entry : myMap.entrySet()) {
    out.println("<tr><td>"+entry.getKey() + "</td><td>" + entry.getValue() + "</td>"+ "<td><input type=\"number\" class=\"quantity\" name=\"quantity\" min=\"0\" max=\"10\" step=\"1\" value=\"0\"/></td>" +"</tr>");
}
%>
</table>

<!-- Add a button for calculating total amount -->
<p>Total Price: <span id="totalPrice" name="">0</span></p>
<center>
<button onclick="calculateTotal()">Calculate Total</button>
</center>

<!-- <script>
  function calculateTotal() {
    var quantityInputs = document.getElementsByClassName("quantity");
    var totalPrice = 0;

    for (var i = 0; i < quantityInputs.length; i++) {
      var quantity = parseInt(quantityInputs[i].value);
      var price = parseInt(quantityInputs[i].parentNode.previousSibling.innerHTML);

      if (!isNaN(quantity) && !isNaN(price)) {
        totalPrice += quantity * price;
      }
    }

    document.getElementById("totalPrice").innerHTML = totalPrice;
    document.getElementById("total").innerHTML = totalPrice;
  }
</script> -->
<!-- Add a section for user to enter address and contact details -->
<h2>Enter your address and contact details:</h2>
<form action="/ordered" method="post">
<table>
<tr><td>
    <label for="address">Address:</label>
    </td>
    <td>
    <input type="text" id="address" name="address" required><!-- <br><br> -->
    </td></tr>
   
    <tr>
    <td>
    <label for="total">Total:</label>
    </td>
    <td>
    <input type="number" name="total" id="total" readonly></td>
    </tr>
    <tr>
    <td>
    <label for="phone">Phone:</label></td>
    <td>
    <input type="text" id="phone" name="phone" min="1000000000" max="9999999999" required><!-- <br><br> --></td>
    </tr>
    <tr><td colspan="2">
    <input type="submit" ><!-- value="Submit Details" --></td>
    </tr>
    </table>
</form>

<script>
  function calculateTotal() {
    var quantityInputs = document.getElementsByClassName("quantity");
    var totalPrice = 0;

    for (var i = 0; i < quantityInputs.length; i++) {
      var quantity = parseInt(quantityInputs[i].value);
      var price = parseInt(quantityInputs[i].parentNode.previousSibling.innerHTML);

      if (!isNaN(quantity) && !isNaN(price)) {
        totalPrice += quantity * price;
      }
    }

    document.getElementById("totalPrice").innerHTML = totalPrice;
    document.getElementById("total").value = totalPrice;
  }
</script>
</body>
</html>