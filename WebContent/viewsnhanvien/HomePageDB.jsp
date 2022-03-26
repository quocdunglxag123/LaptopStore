<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="vn">
<head>
<style>
.row {
	display: flex;
	align-items: center;
	justify-content: center;
}

.buttonquyen {
	font-size: x-large;
	margin: 2%;
}

a {
	text-decoration: none;
}

.headernv {
	
}
.menunv{
margin:1px;
float: left;
	width: 16%;
	padding: 16px;
	min-height: 500px;
	background-color: #000055;
	height:100vh
}
.homepageadmin{
    display: flex;
    justify-content: center;
    align-items: center;
}
</style>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page Nhân Viên</title>
</head>
<body>
	<form action="HomePageDB" method="post">
		<div class="headernv">
			<jsp:include page="/viewsnhanvien/Header.jsp" />
		</div>
		<div class="menunv">
			<jsp:include page="/viewsnhanvien/Menu.jsp" /></div>
		<!-- header -->
		<section class="body_product">
			<div class="container">
			
			<h1 class="homepageadmin">Admin Controler</h1>
				</div>
		</section>

		<!-- end Body product discount -->

		<script src="https://kit.fontawesome.com/03bca92048.js"
			crossorigin="anonymous"></script>
	</form>
</body>
</html>
