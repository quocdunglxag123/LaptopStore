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
<title>Footer</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/SanPham.css">

<script type="text/javascript">
		src="<%=request.getContextPath()%>
	/js/SanPham.js">
</script>
</head>
<body>
	<footer>
		<div class="container">
			<div class="row">
				<div class="col">
					<h3 class="name_website">Blue Laptop</h3>
					<div>
						<img src="<%=request.getContextPath()%>/upload/logone1.png" alt="">
					</div>
					<p>Hòa mình vào thời đại mới</p>
				</div>
				<div class="col">
					<h3 class="title">Hỗ trợ khách hàng</h3>
					<ul>
						<li><a href="/WebsiteLapTop/views/TrungTamBaoHanh.jsp">Trung tâm bảo hành</a></li>
						<li><a href="/WebsiteLapTop/views/ThanhToanVaGiaoHang.jsp">Thanh toán và giao hàng</a></li>
					</ul>
				</div>
				<div class="col">
					<h3 class="title">Chính sách mua hàng và bảo hành</h3>
					<ul>
						<li><a href="/WebsiteLapTop/views/ChinhSachBaoHanh.jsp">Chính sách bảo hành</a></li>
						<li><a href="/WebsiteLapTop/views/QuyDinhGiaCaVaHinhThucThanhToan.jsp">Quy định giá cả và hình thức thanh toán</a></li>
					</ul>
				</div>
				<div class="col">
					<h3 class="title">Thông tin cửa hàng</h3>
					<ul>
						<li><a href="/WebsiteLapTop/views/GioiThieuCuaHang.jsp">Giới thiệu cửa hàng</a></li>
						<li><a href="/WebsiteLapTop/views/ThongTinLienHe.jsp">Thông tin liên hệ</a></li>
						<li><a href="/WebsiteLapTop/views/ThongTinTuyenDung.jsp">Thông tin tuyển dụng</a></li>
					</ul>
				</div>

			</div>
		</div>
		<p class="copyriht">Website design By @Team3</p>
	</footer>
</body>
</html>