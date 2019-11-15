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
				
		<%
		String id = request.getParameter("id");
		Connection con = dbconnection.getConnection();
		%>
		<form action="addvaccination" method="post">
Allocate Nurse : <select name="nurse" required="required">
<option value="">---Select---</option>
<%
PreparedStatement ps = con.prepareStatement("select * from nurse");
ResultSet rs = ps.executeQuery();
while(rs.next())
{
	%>
	<option value="<%=rs.getString("id")%>"><%=rs.getString("fname") %> <%=rs.getString("lname") %></option>
	<%
}
%>
</select>
         
 Vaccination :   <select name="vaccination" required="required">
<option value="">---Select---</option>
<%
PreparedStatement ps1 = con.prepareStatement("select * from vacc");
ResultSet rs1 = ps1.executeQuery();
while(rs1.next())
{
	%>
	<option value="<%=rs1.getString("name")%>"><%=rs1.getString("name") %></option>
	<%
}
%>
</select>    
Date of Vaccination : <input type="date" name="date">
  <input type="hidden" name="childid" value="<%=id%>">
  <input type="submit" value="Submit">
         </form>
         
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