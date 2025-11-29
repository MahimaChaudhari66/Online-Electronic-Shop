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
    .form-box {
        background: #fff;
        border: 2px solid #ccc;
        border-radius: 8px;
        padding: 30px;
        width: 50%;
        margin: 50px auto;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        text-align: left;
    }
    .form-box label {
        font-weight: bold;
        display: block;
        margin-top: 15px;
    }
    .form-box input[type="text"] {
        width: 95%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }
.form-box input[readonly] {
        background: #f9f9f9;
        color: #555;
    }
    .form-box input[type="submit"] {
        background: #28a745;
        color: #fff;
        padding: 12px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold;
        margin-top: 20px;
        width: 100%;
    }
    .form-box input[type="submit"]:hover {
        background: #218838;
    }
</style>

</head>
<body>
      <center>
        <h1>
        <%
        CustomerBean abean=(CustomerBean) session.getAttribute("CustomerBean");
        ProductBean pb= (ProductBean)request.getAttribute("pbitem");
        out.println("Hello "+abean.getC_fname()+" Buy Your Product<br><br>");
        %>
          </h1>
         <div class="form-box">
        <form action="update2" method="post">
            Product Code <input type ="text" name="pcode" value="<%=pb.getP_code() %>" readonly><br><br> 
            Product Name <input type ="text" name="pname" value="<%=pb.getP_name() %>" readonly><br><br> 
            Product Company <input type ="text" name="pcompany" value="<%=pb.getP_company() %>" readonly><br><br> 
            Product Price <input type ="text" name="pprice" value="<%=pb.getP_price() %>" readonly><br><br> 
            Product Quantity <input type ="text" name="pqty" value="<%=pb.getP_qty() %>" readonly><br><br>
            Required No <input type ="text" name="rno"><br><br>
            <input type="hidden" name="pcode" value="<%=pb.getP_code() %>"><br><br>
            <input type="submit" value="Buy">
        </form>
        </div>
      
</body>
</html>