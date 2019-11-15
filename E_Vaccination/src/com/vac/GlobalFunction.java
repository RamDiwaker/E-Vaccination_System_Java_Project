package com.vac;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GlobalFunction {

	
	public String falseAlarm(Connection con,String userid,String fileid)
	{ 
		String data = "";
		try {
			PreparedStatement ps = con.prepareStatement("select * from alert where fileid=? and userid=? and status='falsealram'");
			ps.setString(1, fileid);
			ps.setString(2, userid);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				data = "1";
			}
			else
			{
				data = "0";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}
	
	
	
	public String Filename(Connection con,String fileid)
	{ 
		String data = "";
		try {
			PreparedStatement ps = con.prepareStatement("select * from files where id=? ");
			ps.setString(1, fileid); 
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				data = rs.getString("filename");
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}

	public String Fullename(Connection con,String userid)
	{ 
		String data = "";
		try {
			PreparedStatement ps = con.prepareStatement("select * from register where id=? ");
			ps.setString(1, userid); 
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				data = rs.getString("fname")+" "+rs.getString("lname");
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}
}
