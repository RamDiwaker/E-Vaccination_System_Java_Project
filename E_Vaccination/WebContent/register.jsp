<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8 />
<title><%@include file="title.jsp" %></title>
<meta charset="utf-8">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"> -->
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<script>
    function AllowAlphabet() {
        if (!ureg.fname.value.match(/^[a-zA-Z]+$/)
                && ureg.fname.value != "") {
            ureg.fname.value = "";
            ureg.fname.focus();
            alert("Please Enter only alphabet in text");
        }
         
        if (!ureg.lname.value.match(/^[a-zA-Z]+$/) && ureg.lname.value != "") {
            ureg.lname.value = "";
            ureg.lname.focus();
            alert("Please Enter only alphabets in text");
        }

    }
    
    function Validate()
    { 
        var y = document.ureg.mobile.value;
       
       if(isNaN(y)||y.indexOf(" ")!=-1)
       {
    	   
    	   ureg.mobile.value="";
    	   ureg.mobile.focus();
          alert("Enter numeric value");
          return false;
       }
        if (ureg.mobile.value.length!=10)
       {
            alert("enter 10 digits");
            return false;
       } 
       
       if (!y.match(/^[0-9]+$/) 
       		&& y != "") {
       	y = "";
       	ureg.mobile.focus();
           alert("Please Enter only Digits in text");
       }

    }


    function validuaernameandpass()
    {
    	var uname=document.ureg.username.value;
        var pass=document.ureg.password.value;
        
        if(uname==0){
            alert("Enter username");
            document.ureg.username.focus();
            return false;
        }

    	 if(pass != "" ) {
             if(pass.length < 8) {
               alert("Error: Password must contain at least Eight characters!");
               document.ureg.password.focus();
               return false;
             }
             if(pass == name) {
               alert("Error: Password must be different from Username!");
               document.ureg.password.focus();
               return false;
             }
    	}
    }

</script>

<script language="Javascript">
    function validation() {
        
        var email = document.ureg.email.value;

        if (email == 0) 
        {
            alert("Enter Valid mail id");
            document.ureg.email.focus();
            return false;
        }
        if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)) 
        {
        } else {
            alert("Enter valid mail id");
            document.ureg.email.focus();
            return false;
        }

    }
</script>
 
 <link type="text/css" rel="Stylesheet"href="http://ajax.microsoft.com/ajax/jquery.ui/1.8.5/themes/start/jquery-ui.css" />
<script type="text/javascript" 
    src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js">
</script>
<script type="text/javascript" 
    src="http://ajax.microsoft.com/ajax/jquery.ui/1.8.5/jquery-ui.min.js">
</script>
  
<script type="text/javascript">
   $(document).ready(function(){
     var d = new Date();
     var curr_year = d.getFullYear();
     $("#txtDate").datepicker(
       { yearRange: '1900:'+ curr_year, changeMonth:true, changeYear:true, maxDate: '-1d'});
    });
  </script>
</head>
<body>
<%
if(request.getParameter("present")!=null)
{
out.println("<script>alert('Email Already Present')</script>");	
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
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="user.jsp">Parent</a></li>
      <li><a href="register.jsp">Register</a></li>
      <li><a href="admin.jsp">Doctor</a></li>
      <li><a href="supplier.jsp">Supplier</a></li>
      
    </ul>
    
  </nav>
</div>

<div  style="background-image:url('images/kids2.jpg'); height: 200px">
  <div id="pageintro" class="hoc clear"> 
    
    
  </div>
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
         
        
         
        <h2>Parents Register</h2>
			
			
			<form action="register" name="ureg" method="post"  >
			<table>
			<tr>
			<td>Child Name : </td>
			<td><input type="text" name="fname" onkeyup="AllowAlphabet()"  required></td>
			</tr>
			<tr>
			<td>Date Of Birth : </td>
			<td><!-- <input type="date" name="dob" required> -->
			   <input type="text" id="txtDate" name="dob" readonly = "readonly" />
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