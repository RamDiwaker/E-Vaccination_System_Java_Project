package com.vac;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.dbconnection;

/**
 * Servlet implementation class addvaccination
 */
@WebServlet("/addvaccination")
public class addvaccination extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addvaccination() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vaccination = request.getParameter("vaccination");
		String stock = request.getParameter("stock");
		
		try {
			Connection con = dbconnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into vacc(name,stock) values(?,?)");
			ps.setString(1, vaccination);
			ps.setString(2, stock);
			ps.executeUpdate();
			
			response.sendRedirect("addvaccination.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nurseid = request.getParameter("nurse");
		String date = request.getParameter("date");
		String vaccination = request.getParameter("vaccination");
		String childid = request.getParameter("childid");
		
		
		
		try {
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			 c.setTime(sdf.parse(date));
			 c.add(Calendar.DAY_OF_MONTH, 90);  
			 String newDate = sdf.format(c.getTime());  
			 
			Connection con = dbconnection.getConnection();
			PreparedStatement ps = con.prepareStatement("update child set nurseid=?,vaccination=?,vaccinationdate=?,predictiondate=? where id=?");
			ps.setString(1, nurseid);
			ps.setString(2, vaccination);
			ps.setString(3, date);
			ps.setString(4, newDate);
			ps.setString(5, childid);
			
			ps.executeUpdate();
			
			PreparedStatement pp = con.prepareStatement("update vacc set stock=stock-1 where name=?");
			pp.setString(1, vaccination);
			pp.executeUpdate();
			
			response.sendRedirect("givevaccination.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}

		
	}

}
