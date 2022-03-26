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
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="fontawesome-free-5.15.1-web/css/all.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

<title>Header</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/SanPham.css">

<script type="text/javascript">
		src="<%=request.getContextPath()%>
	/js/SanPham.js">
</script>
<style type="text/css">
button#timkiem {
    border: aliceblue;
}
i.fas.fa-search.fa-2x {
    background: white;
}
</style>
</head>
<body>
	<header>
		<div class="container">
			<div class="content_header">
				<div class="logo_header">
					<img src="<%=request.getContextPath()%>/upload/logone1.png" alt="">
				</div>
				<div class="menu_header">
					<nav>
						<ul class="nav_link">
							<li><a href="/WebsiteLapTop/TrangChuServlet">Trang chủ</a></li>
							<li><a href="/WebsiteLapTop/SanPhamServlet">Sản phẩm</a></li>
							<li><a href="/WebsiteLapTop/ThongTinKhachHang_Views">Thông Tin Khách Hàng</a></li>
						</ul>
					</nav>
				</div>
				<div class="card_header">
					<div class="card">
						<a href="/WebsiteLapTop/ShowGioHangServlet"><img
							src="<%=request.getContextPath()%>/upload/Group 16.png" alt=""></a> <a class="logoutx" style="margin-left: 50%; padding-top: 20%;"
							href="/WebsiteLapTop/LoginServlet">LogOut</a>
					</div>
				</div>
			</div>
		</div>
		<div>
			<form action="SanPhamServlet" method="post">
				<div class="search">
					<input type="text" name="keysearch" placeholder="Nhập tên sản phẩm" value="${search}">
					<button type="submit" id="timkiem"><i class="fas fa-search fa-2x"></i></button>
				</div>
			</form>
		</div>
	</header>
</body>
</html>