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

    .message-box {
        margin-top: 10px;
        background-color: rgba(255, 255, 255, 0.95);
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        display: inline-block;
    }

    h1 {
        color: #333;
        font-size: 28px;
        margin-bottom: 20px;
    }
</style>

</head>
<body>
      <center>
      <div class="message-box">
      
      <%
        session.invalidate();
        out.println("<h1>User loggedout successfully!!!</h1><br>");
      %>
      <%@include file="index.html" %>
      </div>
</body>
</html>