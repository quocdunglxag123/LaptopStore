<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="vn">
<head>
<style>
.thanhtoan-row {
	display: flex;
	justify-content: space-around;
}

.tongtien-row {
	display: flex;
	justify-content: end;
}
</style>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Giỏ Hàng</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/SanPham.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/giohang.css">


</head>
<body>

	<!-- header -->
	<jsp:include page="Header.jsp" />
	<form action="ShowGioHangServlet" method="post">
		<!-- Body_selling products -->
		<section class="body_product">
			<div class="container">
				<div class="title">
					<h3>Giỏ Hàng</h3>
				</div>
				<div class="show_product">
					<c:forEach items="${listGioHang}" var="sp" varStatus="loop">
						<div class="card">
							<div class="items">
								<div class="image">
									<img src="<%=request.getContextPath()%>/upload/${sp.tenSP}.jpg">
								</div>
								<div class="text">
									<h3>Tên LapTop: ${sp.tenSP}</h3>
									<p>Giá: ${sp.giaSP} VNĐ</p>
								</div>
								<div class="button">
									<a href="RemoveGioHangServlet?maSP=${sp.maSP}"
										class="btn btn-primary">Remove</a>
								</div>
								<div>
									<input
										onclick="var result = document.getElementById('SoLuong${loop.index + 1}'); var qty = result.value; if( !isNaN(qty) &amp; qty > 1 ) result.value--;return false;"
										type='button' value='-' /> <input
										id='SoLuong${loop.index + 1}' min='1'
										name='SoLuong${loop.index + 1}' type='text' value='${sp.soLuong}' /> <input
										onclick="var result = document.getElementById('SoLuong${loop.index + 1}'); var qty = result.value; if( !isNaN(qty)) result.value++;return false;"
										type='button' value='+' />
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<hr />
				<br />
				<div class="thanhtoan-row">
					<div>
						<h2>
							<label for="voucher">Voucher: </label> <input id="voucher"
								name="voucher" type="text" placeholder="Input Your Voucher"
								style="font-size: smaller;" />
						</h2>
					</div>
					<div>
						<table border=1>
							<tr>
								<th>Tên Sản Phẩm</th>
								<th>Giá Sản Phẩm</th>
								<th>Số Lượng</th>
								<th>Tổng Tiền</th>
							</tr>
							<c:forEach items="${listGioHang}" var="sp">
								<tr>
									<td>${sp.tenSP}</td>
									<td>${sp.giaSP}VNĐ</td>
									<td>${sp.soLuong}</td>
									<td>${sp.soLuong * sp.giaSP}VNĐ</td>
								</tr>
							</c:forEach>

						</table>
						<div class="tongtien-row">
							<div>
								<h1>
									Tổng Tiền: ${tongtien} VNĐ <br />
									<button type="submit">Cập Nhật Giỏ Hàng</button>
									<a href="/WebsiteLapTop/ThanhToanServlet">Thanh Toán</a>
								</h1>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</form>
	<!-- end Body product discount -->
	<jsp:include page="Footer.jsp" />
	<script src="https://kit.fontawesome.com/03bca92048.js"
		crossorigin="anonymous"></script>



</body>
</html>
