package com.mahima.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerLoginDAO 
{
	public CustomerBean checkLoginValidation(String uname,String upwd)
	{
		CustomerBean cb=null;
		try
		{
			Connection con=DBConnect.connect();
			PreparedStatement pstmt= con.prepareStatement("select * from customer where uname=? and pword=?");
			pstmt.setString(1, uname);
			pstmt.setString(2, upwd);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				cb= new CustomerBean();
				cb.setC_uname(rs.getString(1));
				cb.setC_pwd(rs.getString(2));
				cb.setC_fname(rs.getString(3));
				cb.setC_lname(rs.getString(4));
				cb.setC_addr(rs.getString(5));
				cb.setC_mail(rs.getString(6));
				cb.setC_mob(rs.getString(7));
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return cb;
	}

}
