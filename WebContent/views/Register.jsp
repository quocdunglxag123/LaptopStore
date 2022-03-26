<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Official Signup Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<title>Register</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
  <!-- fonts -->
  <link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
  <!-- /fonts -->
  <!-- css -->
  
  <link href="<%=request.getContextPath()%>/css/register.css" rel='stylesheet' type='text/css' media="all" />
  <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
  <!-- /css -->
  <style type="text/css">
  input#username,input#fullname,input#email,input#password1,input#password2,input#phone,input#birthday {
    width: 500px;
    height: 50px;
    padding: 0 15px;
    color: #fff;
    font-size: 20px;
    font-weight: 200;
    background-color: transparent;
    border-bottom: 5px solid #fff;
    border-top-color: transparent;
    border-left-color: transparent;
    border-right-color: transparent;
    font-family: 'Raleway', sans-serif;
    margin: 10px auto 20px;
    display: block;
    outline: none;
}

  </style>
</head>
<body>
	<h1 class="w3ls"  style="color:white">Create Your Account</h1>
	<div class="content-w3ls">
		<div class="content-agile2">
			<form action="RegisterServlet" method="post">
				<div class="form-control w3layouts">
					<input type="text" id="username" name="username" placeholder="User Name" title="Please enter your User Name" required="">
				</div>
				
				<div class="form-control w3layouts">
					<input type="text" id="fullname" name="fullname" placeholder="Full Name" title="Please enter your Full Name" required="">
				</div>

				<div class="form-control w3layouts">
					<input type="date" id="birthday" name="birthday"
						placeholder="Your Birthday" title="Please enter your Birthday"
						required="">
				</div>

				<div class="form-control agileinfo">
					<input type="email" id="email" name="email"
						placeholder="mail@example.com" title="Please enter a valid email"
						required="">
				</div>

				<div class="form-control agileinfo">
					<input type="text" id="phone" name="phone"
						placeholder="Phone Number" title="Please enter your phone number"
						required="">
				</div>

				<div class="form-control agileinfo">
					<input type="password" class="lock" name="password"
						placeholder="Password" id="password1" required="">
				</div>

				<div class="form-control agileinfo">
					<input type="password" class="lock" name="confirm-password"
						placeholder="Confirm Password" id="password2" required="">
				</div>

				<div class="form-group">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="invalidCheck2" required> <label
							class="form-check-label" for="invalidCheck2"> <a
							href="term.html">Agree to terms and conditions</a>
						</label>
					</div>
				</div>

				<input type="submit" class="register" value="Register">
				<a style="color:white" href="LoginServlet">Turn To Login</a>		
	</form>
			<script type="text/javascript">
				window.onload = function() {
					document.getElementById("password1").onchange = validatePassword;
					document.getElementById("password2").onchange = validatePassword;
				}
				function validatePassword() {
					var pass2 = document.getElementById("password2").value;
					var pass1 = document.getElementById("password1").value;
					if (pass1 != pass2)
						document.getElementById("password2").setCustomValidity(
								"Passwords Don't Match");
					else
						document.getElementById("password2").setCustomValidity(
								'');
					//empty string means no validation error
				}
			</script>


		</div>
		<div class="clear"></div>
	</div>
</body>
</html>