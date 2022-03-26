<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="Official Signup Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<title>Login</title>
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- fonts -->
<link
	href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="<%=request.getContextPath()%>/css/login.css"
	rel='stylesheet' type='text/css' media="all" />
<link href="<%=request.getContextPath()%>/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- /css -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>

</head>
</head>
<body>
<img src="" alt="" />
	<h1 class="w3ls" style="color:white">Login</h1>
	<div class="content-w3ls">
		<div class="content-agile2">
			<form action="LoginServlet" method="post">
				<i style="color:red" class="alert alert-light text-danger p-0">${message}</i>
				<div class="">
					<input type="text" id="username" name="username"
						placeholder="Email/Username/Phone number"
						title="Please enter your Email/Username/Phone number" required="">
				</div>

				<div class="">
					<input type="password" class="lock" name="password"
						placeholder="Password" id="password" required="">
				</div>
				<div class="form-group">

					<input class="form-check-input" type="radio" name="khachhang"
						id="inlineRadio1"> <label class="form-check-label"
						for="inlineRadio1">Khách hàng</label>
				</div>
				<div class="form-group">
					<input class="form-check-input" type="radio" name="nhanvien"
						id="inlineRadio2"> <label class="form-check-label"
						for="inlineRadio2">Nhân viên</label>
				</div>
				<div  class="form-group">
				<input type="submit" class="login" value="Login"></div>
				

				<div class="forget">
				<a style="color:white" href="TrangChuNoLoginServlet">Return Shop</a>
					<a style="color:white" href="RegisterServlet">Register</a>
				</div>

			</form>

			<script type="text/javascript">
				function send() {
					var arr = document.getElementsByTagName('input');
					var username = arr[0].value;
					var password = arr[1].value;
					if (username == "" || password == "") {
						alert("Please fill all fields");
						return false;
					}
					if (password.length < 6 || username.length < 6) {
						alert("Insufficient number of characters!");
						return false;
					}
				}

				</div>
				<div class="clear"></div>
				</div>
				</body>
				</html>
			