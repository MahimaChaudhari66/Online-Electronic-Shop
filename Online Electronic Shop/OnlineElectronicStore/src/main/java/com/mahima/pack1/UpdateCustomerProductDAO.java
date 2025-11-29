package com.mahima.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateCustomerProductDAO 
{
	public int updateProduct(ProductBean pb,String qty)
	{
		int rowCount=0;
		try
		{
			Connection con=DBConnect.connect();
			PreparedStatement pstmt= con.prepareStatement("update product1 set pqty="+qty+" where pcode=?");
			pstmt.setString(1, pb.getP_code());
			
		    rowCount = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}

}
