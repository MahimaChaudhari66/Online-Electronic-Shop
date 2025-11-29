<%@page import="java.util.Iterator"%>
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
        margin-top: 40px;
        color: #333;
        font-size: 28px;
    }

    .inventory-box {
        background-color: rgba(255, 255, 255, 0.95);
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        display: inline-block;
        margin-top: 20px;
        text-align: left;
    }
     .product-entry {
        margin-bottom: 15px;
        font-size: 18px;
        color: #444;
    }

    .product-entry a {
        margin-left: 10px;
        padding: 6px 12px;
        text-decoration: none;
        color: white;
        background-color: #007BFF;
        border-radius: 6px;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    .product-entry a:hover {
        background-color: #0056b3;
    }

    .empty-msg {
        font-size: 20px;
        color: #555;
        margin-top: 20px;
    }
</style>
    
</head>
<body>
      <center>
       <h1>
        <div class="inventory-box">
       
       <%
         AdminBean abean=(AdminBean) session.getAttribute("AdminBean");
         ArrayList<ProductBean> al=(ArrayList<ProductBean>) session.getAttribute("ProductList");
         out.println("<u>Hello "+abean.getA_fname()+" these are your product details</u><br><br>");
         
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
        				 " <a href='edit?pcode="+pb.getP_code()+"'>Edit</a>"+" "+
        				 " <a href='delete?pcode="+pb.getP_code()+"'>Delete</a>"+"<br><br></div>");
        	 }
         }
       %>
       </div>
       </h1>
</body>
</html>