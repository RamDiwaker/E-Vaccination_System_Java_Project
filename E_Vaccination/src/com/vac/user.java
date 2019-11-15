package com.vac;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.dbconnection;

/**
 * Servlet implementation class user
 */
@WebServlet("/user")
public class user extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public user() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			HttpSession session = request.getSession();
			 Connection con = dbconnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("select * from register where email=? and password=?");
			 ps.setString(1, email);
			 ps.setString(2, password);
			 ResultSet rs = ps.executeQuery();
			 if(rs.next())
			 {
				 session.setAttribute("userid", rs.getString("id"));
				 session.setAttribute("name", rs.getString("fname")+" "+rs.getString("lname"));
				 response.sendRedirect("home.jsp");
			 }
			 else
			 {
				 response.sendRedirect("user.jsp");
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
