<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.util.dbconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
if(session.getAttribute("userid")==null)
{	
	response.sendRedirect("user.jsp?login");
}
%>
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title><%@include file="title.jsp" %></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

<%
if(request.getParameter("invalid")!=null)
{
out.println("<script>alert('Email or password Invalid')</script>");	
}
if(request.getParameter("success")!=null)
{
out.println("<script>alert('Register Successful')</script>");	
}
%>

<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    
    <div id="logo" class="fl_left">
     <%@include file="logo.jsp" %>
    </div>
    
    
  </header>
</div>



<div class="wrapper row2">
  <nav id="mainav" class="hoc clear"> 
    
   <ul class="clear">
      <li class="active"><a href="home.jsp">Home</a></li>
       <li><a href="child.jsp">Add Children</a></li>
       <li><a href="prediction.jsp">Vaccine</a></li>
      <!--<li><a href="disease.jsp">Disease Detection</a></li> -->
      <li><a href="index.jsp?logout">Logout</a></li>
      
    </ul>
    
  </nav>
</div>



<div  style="background-image:url('images/kids2.jpg'); height: 200px">
  <div id="pageintro" class="hoc clear"> 
    
    
  </div>
</div>



<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    
    <article class="group">
      <div class="group btmspace-80">        
      
        <div class="three_quarter" align="center">
         
         <h2>Vaccination Detail</h2>
         
         <table>
		<tr>
		<th>SrNo</th>
		<th>Child Name</th>
		<th>Father Name</th>
		<th>DOB</th>
		<th>Age</th>
		<th>Gender</th>
		<th>BloodGroup</th>
		<th>Weight</th>
		<th>Height</th>
		<th>Vaccination Date</th>
		<th>Vaccination Next Date</th>
		<th>Vacccination</th>
		<th>Nurse Info</th> 
		<%
		String parentid = session.getAttribute("userid").toString();
		
		int srno=1;
		Connection con = dbconnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from child where parentid=?");
		ps.setString(1, parentid);
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			%>
			<tr>
			<td><%= srno++ %></td>
			<td><%=rs.getString("childname") %></td>
			<td><%=rs.getString("fathername") %></td>
			<td><%=rs.getString("dob") %></td>
			<td><%=rs.getString("age") %></td>
			<td><%=rs.getString("gender") %></td>
			<td><%=rs.getString("bloodgroup") %></td>
			<td><%=rs.getString("weight") %></td>
			<td><%=rs.getString("height") %></td>
			<td><%=rs.getString("vaccinationdate") %></td>
			<td><%=rs.getString("predictiondate") %></td>
			<td><%=rs.getString("vaccination") %></td>
			<td><a href="prediction.jsp?nurseid=<%= rs.getString("nurseid") %>">Nurse Information</a></td>
			<%
		}
		%>
		</tr>
		</table>
         
         <br>
         <%
         if(request.getParameter("nurseid")!=null)
         {
        	 PreparedStatement pp = con.prepareStatement("select * from nurse where id=?");
        	 pp.setString(1, request.getParameter("nurseid"));
        	 ResultSet rr = pp.executeQuery();
        	 if(rr.next())
        	 {
        		 %>
 
        		 <strong>Nurse Information</strong><br><br>
        		<strong> First Name :</strong>
        		  <%=rr.getString("fname") %> <br>
        		 
        		 
        		 <strong> Last Name :</strong>
        		  <%=rr.getString("lname") %> <br>
        		 
        		 
        		 <strong> Email :</strong>
        		  <%=rr.getString("email") %> <br>
        		 
        		 
        		 <strong> Mobile :</strong>
        		  <%=rr.getString("mobile") %> <br>
        		 
        		 
        		<strong>  Address :</strong>
        		  <%=rr.getString("address") %> <br>
        		 
        		 
        		 <%
        	 }
         }
         %>
         
        </div>
      </div>
      
    </article>
    
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>















<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    
    <p class="fl_left">Copyright &copy; 2019 - All Rights Reserved.</p>
   
    
  </div>
</div>



<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>