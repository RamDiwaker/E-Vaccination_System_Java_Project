<!DOCTYPE html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.dbconnection"%>
<%@page import="java.sql.Connection"%>
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title><%@include file="title.jsp" %></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">



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
      <li class="active"><a href="adminhome.jsp">Home</a></li>
            <li><a href="addnurse.jsp">Add Nurses</a></li>
            
      <li><a href="givevaccination.jsp">Give Vaccination</a></li>
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
         
         
         <h2>Give Vaccination</h2>
				
		<table>
		<tr>
		<th>SrNo</th>
		<th>Child Name</th>
		<th>DOB</th>
		<th>Age</th>
		<th>Height</th>
		<th>Gender</th>
		<th>BloodGroup</th>
		
		<th>Action</th>
		<%
		int srno=1;
		Connection con = dbconnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from child where vaccination='0'");
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			%>
			<tr>
			<td><%= srno++ %></td>
			<td><%=rs.getString("childname") %></td>
			<td><%=rs.getString("dob") %></td>
			<td><%=rs.getString("age") %></td>
			<td><%=rs.getString("height") %></td>
			<td><%=rs.getString("gender") %></td>
			<td><%=rs.getString("bloodgroup") %></td>
			<td><a href="givevaccination1.jsp?id=<%= rs.getString("id") %>">Give Vaccination</a></td>
			<%
		}
		%>
		</tr>
		</table>

         
         
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