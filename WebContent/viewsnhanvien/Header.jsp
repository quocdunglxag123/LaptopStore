<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="vn">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/yourcode.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="fontawesome-free-5.15.1-web/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

<title>Header</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/SanPham.css">

<script type="text/javascript">
		src="<%=request.getContextPath()%>
	/js/SanPham.js">
</script>
<style type="text/css">
.container{
max-width: 90%;
}
button#timkiem {
	border: black;
}
header{
    background: #000055;
    
}
i.fas.fa-search.fa-2x {
	background: white;
}
.container .content_header a {
    color: white;
}
</style>
</head>
<body>
	<header>
		<div class="container">
			<div class="content_header">
				<h1 style="color:white" class="logo">BlueAdmin</h1>
				<div class="menu_header">
					<nav>
						<ul class="nav_link">

							<li></li>
						</ul>
					</nav>
				</div>
				<div class="card_header">
					<div class="card">
						<a href="/WebsiteLapTop/LoginServlet"> LogOut</a>
					</div>
				</div>
			</div>
		</div>
		<div></div>
	</header>
</body>
</html>