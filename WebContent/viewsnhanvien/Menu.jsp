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
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/">

<script type="text/javascript">
		src="<%=request.getContextPath()%>
	/js/SanPham.js">
</script>
<style type="text/css">
header {
	background: #000055;
	margin-right: 10px
}

.container .row ul a {
	color: white
}
</style>
</head>
<body>
	<header>
		<div class="container">
			<div class="row">
				<ul>
					<li><a href="AccountDB">Quản Lý Account</a></li>
					<hr />
					<li><a href="HoaDonBanHangDB">Quản Lý Hóa Đơn Bán Hàng</a></li>
					<hr />
					<li><a href="HoaDonDatHangDB">Quản Lý Hóa Đơn Đặt Hàng</a></li>
					<hr />
					<li><a href="KhachHangDB">Quản Lý Khách Hàng</a></li>
					<hr />
					<li><a href="NhaCungCapDB">Quản Lý Nhà Cung Cấp</a></li>
					<hr />
					<li><a href="NhanVienDB">Quản Lý Nhân Viên</a></li>
					<hr />
					<li><a href="ThongTinSanPhamDB">Quản Lý Thông Tin Sản Phẩm</a></li>
					<hr />
					<li><a href="ThongKeDB">Thống Kê</a></li>
					<hr />
				</ul>
			</div>
		</div>
	</header>
</body>
</html>