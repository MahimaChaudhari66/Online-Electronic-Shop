package com.mahima.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/crs")
public class CustomerRegistrationServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		CustomerBean bean= new CustomerBean();
		bean.setC_uname(req.getParameter("cname"));
		bean.setC_pwd(req.getParameter("cpwd"));
		bean.setC_fname(req.getParameter("cfname"));
		bean.setC_lname(req.getParameter("clname"));
		bean.setC_addr(req.getParameter("caddr"));
		bean.setC_mail(req.getParameter("cmail"));
		bean.setC_mob(req.getParameter("cmo"));
		
		int rowCount= new CustomerRegisterDAO().insertCustomerData(bean);
		if(rowCount>0)
		{
			req.setAttribute("msg", "Data Inserted");
			req.getRequestDispatcher("CustomerRegister.jsp").forward(req, res);
		}
		else
		{
			req.setAttribute("msg", "Data Not Inserted");
			req.getRequestDispatcher("CustomerRegister.jsp").forward(req, res);
		}
	}

}
