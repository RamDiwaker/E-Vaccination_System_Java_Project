package com.vac;

import java.io.IOException;
import java.sql.*;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.dbconnection;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		 
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String adrress = request.getParameter("address");
		 
		try {
			Connection con = dbconnection.getConnection();
			PreparedStatement ps1 = con.prepareStatement("insert into nurse(fname,lname,email,mobile,address,dob) values(?,?,?,?,?,?)");
			ps1.setString(1, fname);                                  
			ps1.setString(2, lname); 
			ps1.setString(3, email);
			ps1.setString(4, mobile);
			ps1.setString(5, adrress); 
			ps1.setString(6, dob);
			 
		
			ps1.executeUpdate();
			response.sendRedirect("addnurse.jsp?success");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String adrress = request.getParameter("address");
		String password = request.getParameter("password");
	 
		try {
			
			 
			
			Connection con = dbconnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from register where email=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if(!rs.next())
			{
				PreparedStatement ps1 = con.prepareStatement("insert into register(fname,lname,gender,email,mobile,address,password,dob) values(?,?,?,?,?,?,?,?)");
				ps1.setString(1, fname);                                  
				ps1.setString(2, lname);
				ps1.setString(3, gender);
				ps1.setString(4, email);
				ps1.setString(5, mobile);
				ps1.setString(6, adrress);
				ps1.setString(7, password);
				ps1.setString(8, dob);
				 
			
				ps1.executeUpdate();
				response.sendRedirect("user.jsp?success");
			}
			else
			{
				response.sendRedirect("register.jsp?present");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
