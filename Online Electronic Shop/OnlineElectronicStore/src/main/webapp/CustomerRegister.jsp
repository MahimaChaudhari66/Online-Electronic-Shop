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
    .message-box {
        background: #fff;
        border: 2px solid #ccc;
        border-radius: 8px;
        padding: 20px;
        width: 60%;
        margin: 40px auto;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        text-align: center;
    }
    .message-box h1 {
        font-size: 24px;
        color: #007bff;
    }
.login-container {
        background: #fff;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 25px;
        width: 40%;
        margin: 30px auto;
        box-shadow: 0 3px 6px rgba(0,0,0,0.1);
    }
    .login-container h2 {
        margin-bottom: 20px;
        color: #333;
    }
    input[type="text"], input[type="password"] {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        background: #007bff;
        color: #fff;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold;
    }
input[type="submit"]:hover {
        background: #0056b3;
    }
</style>

</head>
<body>
      <center>
        <div class="message-box">

         <%
          String data=(String) request.getAttribute("msg");
          out.println("<center><h1><u>"+data+"</u></h1></center>");
         %>
         </div>
         <div class="login-container">
         <jsp:include page="CustomerLogin.html"></jsp:include>
         </div>
</body>
</html>