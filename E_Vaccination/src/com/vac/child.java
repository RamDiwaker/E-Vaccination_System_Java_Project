package com.vac;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.dbconnection;

/**
 * Servlet implementation class child
 */
@WebServlet("/child")
public class child extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public child() {
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


		String name = request.getParameter("name");
		String name = request.getParameter("fathername");
		String dob = request.getParameter("dob");
		String age = request.getParameter("age");
		String age = request.getParameter("gender");
		String age = request.getParameter("bloodgroup");
		String age = request.getParameter("weight");
		String age = request.getParameter("height");
		
		HttpSession session = request.getSession();
		String parentid = session.getAttribute("userid").toString();
		
		try {
			Connection con = dbconnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into child(parentid,childname,fathername,dob,age,gender,bloodgroup,weight,height) values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, parentid);
			ps.setString(2, name);
			ps.setString(3, fathername);
			ps.setString(4, dob);
			ps.setString(5, age);
			ps.setString(6, gender);
			ps.setString(7, bloodgroup);
			ps.setString(8, weight);
			ps.setString(9, height);
			ps.executeUpdate();
			
			response.sendRedirect("child.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
