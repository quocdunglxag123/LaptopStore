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
<title>Khách Hàng</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/SanPham.css">

<script type="text/javascript">
		src="<%=request.getContextPath()%>
	/js/SanPham.js">
</script>
</head>
<body>
	<form action="ThongTinKhachHang_Views" method="post">
		<!-- header -->
		<jsp:include page="/views/Header.jsp" />
		<section class="body_product">
			<div class="container">
				<div class="title">
					<h3> THông Tin Khách Hàng</h3>
				</div>
				<div class="show_product">
					<table border=1>
						<tr>
							<th>Mã Khách Hàng</th>
							<th>Họ và Tên Khách Hàng</th>
							<th>Ngày Sinh Khách Hàng</th>
							<th>Số Điện Thoại Khách Hàng</th>
							<th>Gmail</th>
							<th>Điểm Tích lũy</th>
							<th>Thời Gian Tích Lũy</th>
						</tr>
						<c:forEach items="${listThongTinKhachHang_Views}" var="kh">
							<tr>
								<td>${kh.maKH}</td>
								<td>${kh.hoTen}</td>
								<td>${kh.ngaySinh}</td>
								<td>${kh.SDT}</td>
								<td>${kh.gmail}</td>
								<td>${kh.diemTichLuy}</td>
								<td>${kh.thoiGianTichLuy}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</section>
		<!-- end Body product discount -->
		<jsp:include page="/views/Footer.jsp" />
		<script src="https://kit.fontawesome.com/03bca92048.js"
			crossorigin="anonymous"></script>
	</form>
</body>
</html>
