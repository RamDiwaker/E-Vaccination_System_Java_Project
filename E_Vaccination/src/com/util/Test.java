package com.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Test {

	public static void main(String[] args)throws Exception {
		int count = 0;
		Connection con = dbconnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from transaction where userid=? order by id desc limit 3");
		ps.setString(1, "1");
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			count++;
		}
System.out.println(count);
	}

}
