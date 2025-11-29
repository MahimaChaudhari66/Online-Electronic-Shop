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
    .dashboard-box {
        background: #fff;
        border: 2px solid #ccc;
        border-radius: 8px;
        padding: 30px;
        width: 50%;
        margin: 80px auto;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        text-align: center;
    }
    .dashboard-box h1 {
        color: #007bff;
        margin-bottom: 20px;
    }
    .dashboard a {
        display: inline-block;
        margin: 10px;
        padding: 12px 20px;
        text-decoration: none;
        font-weight: bold;
        border-radius: 5px;
        transition: background 0.3s ease;
    }
.dashboard a[href="view2"] {
        background: #28a745;
        color: #fff;
    }
    .dashboard a[href="view2"]:hover {
        background: #218838;
    }
    .dashboard a[href="logout"] {
        background: #dc3545;
        color: #fff;
    }
    .dashboard a[href="logout"]:hover {
        background: #b52a37;
    }
</style>

</head>
<body>
     <center>
     <div class="dashboard-box">
     
      <h1>
      <%
             CustomerBean cb=(CustomerBean)session.getAttribute("CustomerBean");
             out.println("Welcome : "+cb.getC_fname()+"!!!<br><br>");
       %>
       
       </h1>
            <div class="dashboard">
           <a href="view2">View Product</a><br><br>
           <a href="logout">LogOut</a><br><br>
           </div>
        </div>   
</body>
</html>