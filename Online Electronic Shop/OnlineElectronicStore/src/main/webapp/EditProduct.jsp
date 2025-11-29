<%@page import="com.mahima.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mahima.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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

    .form-box {
        background-color: rgba(255, 255, 255, 0.95);
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        display: inline-block;
        margin-top: 20px;
        text-align: left;
    }
      label {
        font-weight: bold;
        display: block;
        margin-top: 15px;
        margin-bottom: 5px;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 6px;
    }

    input[type="submit"] {
        margin-top: 20px;
        width: 100%;
        padding: 12px;
        font-size: 18px;
        background-color: #007BFF;
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
     
<body>
      <center>
        <h1>
        <%
        AdminBean abean=(AdminBean) session.getAttribute("AdminBean");
        ProductBean pb= (ProductBean)request.getAttribute("pbitem");
        out.println("Hello "+abean.getA_fname()+" please edit<br><br>");
        %>
        </h1>
         <div class="form-box">
        <form action="update" method="post">
            Product Price <input type ="text" name="pprice" value="<%=pb.getP_price() %>"><br><br> 
            Product Quantity <input type ="text" name="pqty" value="<%=pb.getP_qty() %>"><br><br>
            <input type="hidden" name="pcode" value="<%=pb.getP_code() %>"><br><br>
            <input type="submit" value="Update">
        </form>
        </div>
</body>
</html>