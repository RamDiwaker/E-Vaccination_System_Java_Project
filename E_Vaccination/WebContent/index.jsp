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

<%if(request.getParameter("logout")!=null)
{
	session.invalidate();
	Thread.sleep(2000);
out.println("<script>alert('Logout Successfull')</script>");	
}
if(request.getParameter("alert")!=null)
{ 
out.println("<script>alert('Access Denied')</script>");	
}
if(request.getParameter("threat")!=null)
{
	session.invalidate();
	Thread.sleep(2000);
out.println("<script>alert('Access Denied')</script>");	
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
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="user.jsp">Parent</a></li>
      <li><a href="register.jsp">Register</a></li>
      <li><a href="admin.jsp">Doctor</a></li>
       <li><a href="supplier.jsp">Supplier</a></li>
      
    </ul>
    
  </nav>
</div>



<div class="wrapper bgded overlay" style="background-image:url('images/kids1.jpg');">
  <div id="pageintro" class="hoc clear"> 
    
    <article>
      <div>
       
        <h2 class="heading"><%@include file="title.jsp" %></h2>
        
      </div>
      
    </article>
    
  </div>
</div>



<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    
    <article class="group">
      <div class="group btmspace-80">        
      
        <div class="three_quarter" align="center">
         
         
         
         
         
         
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