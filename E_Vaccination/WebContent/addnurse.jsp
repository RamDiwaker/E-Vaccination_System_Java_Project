<!DOCTYPE html>

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
            
<!--       <li><a href="alert.jsp">Alert</a></li> -->
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
         
         
        <h2>Add Nurses</h2>

<form action="register" name="ureg" method="get"  >
			<table>
			<tr>
			<td>First Name : </td>
			<td><input type="text" name="fname" onkeyup="AllowAlphabet()"  required></td>
			</tr>
			<tr>
			<td>Last Name : </td>
			<td><input type="text" name="lname" onkeyup="AllowAlphabet()" required></td>
			</tr>
			 
			<tr>
			<td>Date Of Birth : </td>
			<td><!-- <input type="date" name="dob" required> -->
			   <input type="date" name="dob" />
			 </td>
			</tr>
			<tr>
			<td>Email : </td>
			<td><input type="email" name="email" onchange="validation()" required></td>
			</tr>
			<tr>
			<td>Mobile : </td>
			<td><input type="text" name="mobile"  maxlength="10" onchange="Validate()" required></td>
			</tr>
			<tr>
			<td>Address : </td>
			<td><input type="text" name="address" required></td>
			</tr>
			
			 
			<tr>
			<td></td>
			<td><input type="submit" value="Add" class="button"></td>
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
    
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved.</p>
   
    
  </div>
</div>



<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>