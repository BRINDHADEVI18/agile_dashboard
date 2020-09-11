<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Project-Manager|SignUp </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
<script> 
          
            function checkPassword(form) { 
                password1 = form.password.value; 
                password2 = form.password2.value; 
  
                if (password1 == '') 
                    alert ("Please enter Password"); 
                      
                else if (password2 == '') 
                    alert ("Please enter confirm password"); 
                // If Not same return False.     
                      
                else if (password1 != password2) { 
                    alert ("\nPassword did not match: Please try again...") 
                    return false; 
                } 
  
                // If same return True. 
                else{ 
                   return true; 
                } 
            } 
        </script> 
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1 style="font-family: cursive;">Welcome to Project Manager</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form  method="POST" action="save-user"  onSubmit = "return checkPassword(this)">
					<input class="text" type="text" name="username" placeholder="Username" value="${user.username}" required />
					<input class="text email" type="email" name="email_id" placeholder="Email" value="${user.email_id}" required/>
					<input class="text" type="password" name="password" placeholder="Password" value="${user.password}" required />
					<input class="text w3lpass" type="password" name="password2" placeholder="Confirm Password"   required />
					
					<input type="submit" value="SIGNUP">
				</form>
				<p>Don't have an Account? <a href="/login"> Login Now!</a></p>
			</div>
		</div>
	
	</div>
</body>
</html>