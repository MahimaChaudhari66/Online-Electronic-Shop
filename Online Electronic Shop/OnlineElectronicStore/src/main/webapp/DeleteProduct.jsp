<%@page import="com.mahima.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #f6d365, #fda085, #84fab0, #8fd3f4);
        background-size: 400% 400%;
        animation: gradientShift 15s ease infinite;
    }

    @keyframes gradientShift {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    h1 {
        margin-top: 60px;
        color: #333;
        font-size: 32px;
    }

    .panel {
        background-color: rgba(255, 255, 255, 0.95);
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        display: inline-block;
        margin-top: 20px;
    }
     a {
        display: block;
        margin: 15px 0;
        padding: 12px 24px;
        text-decoration: none;
        font-size: 18px;
        color: white;
        background-color: #007BFF;
        border-radius: 8px;
        transition: background-color 0.3s ease;
    }

    a:hover {
        background-color: #0056b3;
    }
</style>
    

</head>
<body>
       <center>
        <h1>Admin Dashboard </h1>
        <div class="panel">
        <%
        AdminBean abean=(AdminBean) session.getAttribute("AdminBean");
        String data=(String)request.getAttribute("msg");
        out.println("<h3>Hello "+abean.getA_fname()+"<br><br></h3>");
        out.println("<h4>"+data+"<br><br></h4>");
        %>
           <a href="AddProduct.html">Add Product</a><br><br>
           <a href="view1">View Product</a><br><br>
           <a href="logout">LogOut</a><br><br>
         </div>
       
</body>
</html>