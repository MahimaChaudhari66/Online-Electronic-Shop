<%@page import="com.mahima.pack1.ProductBean"%>
<%@page import="com.mahima.pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f9;
        margin: 0;
        padding: 0;
    }
    h1 {
        color: #333;
    }
    .confirmation-box {
        background: #fff;
        border: 2px solid #ccc;
        border-radius: 8px;
        padding: 30px;
        width: 60%;
        margin: 50px auto;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        text-align: center;
    }
    .confirmation-box p {
        font-size: 18px;
        margin: 15px 0;
    }
    .success-message {
        color: #28a745;
        font-weight: bold;
        font-size: 20px;
    }
a {
        text-decoration: none;
        font-weight: bold;
        padding: 10px 15px;
        border-radius: 5px;
        margin: 10px;
        display: inline-block;
    }
    a[href="view2"] {
        background: #007bff;
        color: #fff;
    }
    a[href="view2"]:hover {
        background: #0056b3;
    }
    a[href="logout"] {
        background: #dc3545;
        color: #fff;
    }
    a[href="logout"]:hover {
        background: #b52a37;
    }
</style>
</head>
<body>
  
      <center>
      <div class="confirmation-box">
      
        <h1>
        <%
        CustomerBean cbean=(CustomerBean) session.getAttribute("CustomerBean");
        String data=(String)request.getAttribute("msg");
        out.println("Hello "+cbean.getC_fname()+"<br><br>");
        out.println("You have charged :"+data+"/rs<br><br>");
        out.println("Your order is placed successfully!!!<br><br>");
        %>
           
           <a href="view2">View Product</a><br><br>
           <a href="logout">LogOut</a><br><br>
        </h1>
        </div>
</body>
</html>