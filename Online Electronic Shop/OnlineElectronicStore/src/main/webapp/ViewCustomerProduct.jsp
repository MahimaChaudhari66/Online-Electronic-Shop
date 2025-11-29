<%@page import="java.util.Iterator"%>
<%@page import="com.mahima.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
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
    .inventory-box {
        background: #fff;
        border: 2px solid #ccc;
        border-radius: 8px;
        padding: 20px;
        width: 70%;
        margin: 30px auto;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    .product-entry {
        background: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 6px;
        padding: 10px;
        margin: 10px 0;
        transition: transform 0.2s ease;
    }
.product-entry:hover {
        transform: scale(1.02);
        background: #eef;
    }
    a {
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
    }
    a:hover {
        color: #0056b3;
    }
    .logout-link {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 15px;
        background: #dc3545;
        color: #fff;
        border-radius: 5px;
        text-decoration: none;
    }
    .logout-link:hover {
        background: #b52a37;
    }
</style>

</head>
<body>
       <center>
       <h1>
        <div class="inventory-box">
       
       <%
         CustomerBean abean=(CustomerBean) session.getAttribute("CustomerBean");
         ArrayList<ProductBean> al=(ArrayList<ProductBean>) session.getAttribute("ProductList");
         out.println("<u>Hello "+abean.getC_fname()+" these are product details</u><br><br>");
         
         if(al.size()==0)
         {
        	 out.println("Product Inventoey is empty");        	 
         }
         else
         {
        	 
        	 Iterator<ProductBean> i=al.iterator();
        	 while(i.hasNext())
        	 {
        		 ProductBean pb=i.next();
        		 out.println("<div class='product-entry'>" +pb.getP_code()+" "+pb.getP_name()+" "+pb.getP_company()+" "+pb.getP_price()+" "+pb.getP_qty()+
        				 " <a href='buy?pcode="+pb.getP_code()+"'>Buy</a>"+"<br><br></div>");
        	 }
         }
       %>
       <a href="logout" class="logout-link">LogOut</a><br><br>
       </div>
       </h1>
</body>
</html>