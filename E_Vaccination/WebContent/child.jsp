<!DOCTYPE html>
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



<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    
    <article class="group">
      <div class="group btmspace-80">        
      
        <div class="three_quarter" align="center">
         
        
         
        <h2> Add Child Information</h2>
			
			
			<form action="register" name="ureg" method="post"  >
			<table>
			<tr>
			<td>Child Name : </td>
			<td><input type="text" name="fname" onkeyup="AllowAlphabet()"  required></td>
			</tr>
			<tr>
			<td>Father Name : </td>
			<td><input type="text" name="fname" onkeyup="AllowAlphabet()"  required></td>
			</tr>
			<tr>
			<td>Date Of Birth : </td>
			<td><!-- <input type="date" name="dob" required> -->
			   <input type="text" id="txtDate" name="dob" readonly = "" />
			 </td>
			</tr>
			<tr>
			<td>Age : </td>
			<td><input type="text" name="fname" onkeyup="AllowAlphabet()"  required></td>
			</tr>
			<tr>
			<td>Gender : </td>
			<td><select name="gender">
			<option value="">---Select---</option>
			<option value="male">Male</option>
			<option value="female">Female</option>
			</select></td>
			</tr>
			
			<tr>
			<td>Blood Group : </td>
			<td><input type="text" name="fname" onkeyup="AllowAlphabet()"  required></td>
			</tr>
			
			<tr>
			<td>Weight : </td>
			<td><input type="text" name="fname" onkeyup="AllowAlphabet()"  required></td>
			</tr>
			<tr>
			<td>Height : </td>
			<td><input type="text" name="fname" onkeyup="AllowAlphabet()"  required></td>
			</tr>
			<tr>
			<td></td>
			<td><input type="submit" value="Register" class="button"></td>
			</tr>
			</table>
			
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



<!-- <a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a> -->
<!-- <!-- JAVASCRIPTS --> 
<!-- <script src="layout/scripts/jquery.min.js"></script> -->
<!-- <script src="layout/scripts/jquery.backtotop.js"></script> -->
<!-- <script src="layout/scripts/jquery.mobilemenu.js"></script> -->
</body>
</html>