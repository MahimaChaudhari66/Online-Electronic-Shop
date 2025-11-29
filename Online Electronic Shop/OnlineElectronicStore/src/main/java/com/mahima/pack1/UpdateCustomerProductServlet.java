package com.mahima.pack1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/update2")
public class UpdateCustomerProductServlet extends HttpServlet 
{
     @Override
     protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
     {
    	 HttpSession session= req.getSession();
 		if(session==null)
 		{
 			req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
 		}
 		else
 		{
 			String pcode= req.getParameter("pcode");
 			double price= Double.parseDouble(req.getParameter("pprice"));
 			int pqty= Integer.parseInt(req.getParameter("pqty"));
 			int reqqty= Integer.parseInt(req.getParameter("rno"));
 			int newqty=pqty-reqqty;
 			String value=String.valueOf(newqty);
 			double bill=price*reqqty;
 			String cbill=String.valueOf(bill);
 			
 			ArrayList<ProductBean> al= (ArrayList<ProductBean>)session.getAttribute("ProductList");
		    Iterator<ProductBean> i= al.iterator();
		    ProductBean pb=null;
		    while(i.hasNext())
		    {
		    	pb=i.next();
		    	if(pcode.equals(pb.getP_code()))
		    	{
		    		break;
		    	}
		    }
		     
		     pb.setP_qty(req.getParameter(value));
		     
		     int rowCount = new UpdateCustomerProductDAO().updateProduct(pb, value);
		     if(rowCount>0)
		     {
		    	 req.setAttribute("msg", cbill);
		    	 req.getRequestDispatcher("OrderConfirmed.jsp").forward(req, res);		    	 
		     }
		     else
		     {
		    	 throw new RuntimeException("Product is out of stock!!");
		     }
		}
     }
}
