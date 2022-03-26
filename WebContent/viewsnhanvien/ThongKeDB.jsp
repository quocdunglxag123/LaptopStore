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
<title>Thống Kê</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/SanPham.css">
<style>
.menunv {
	margin: 1px;
	float: left;
	width: 16%;
	padding: 16px;
	min-height: 500px;
	background: #000055;
	height: 100vh
}
/* Next and Previous */
.nextprevious {
	text-decoration: none;
	display: inline-block;
	padding: 8px 16px;
}

.nextprevious:hover {
	background-color: #ddd;
	color: black;
}

.previous {
	background-color: #f1f1f1;
	color: black;
}

.next {
	background-color: #04AA6D;
	color: white;
}

.round {
	border-radius: 50%;
}

.nextpreviouscancel {
	text-decoration: none;
	display: inline-block;
	padding: 8px 16px;
	opacity: 0.5;
}

.nextpreviouscacel:hover {
	background-color: #ddd;
	color: black;
}

.show_product table {
	width: 100%;
}
/* Filter */
.check-filter {
	display: flex;
}

.check-filter .filter {
	margin-right: 20px;
}
</style>
<script type="text/javascript">
		src="<%=request.getContextPath()%>
	/js/SanPham.js">
</script>
</head>
<body>
	<form action="ThongKeDB" method="post">
		<!-- header -->
		<div class="headernv">
			<jsp:include page="/viewsnhanvien/Header.jsp" />
		</div>
		<div class="menunv">
			<jsp:include page="/viewsnhanvien/Menu.jsp" /></div>
		<section class="body_product">
			<div class="container">
				<div class="title">

					<c:if test="${ngaycheck!=1 && thangcheck!=2 && namcheck!=3}">
						<h3>Thống Kê</h3>
					</c:if>
					<c:if test="${ngaycheck==1}">
						<h3>Thống Kê Ngày</h3>
					</c:if>
					<c:if test="${thangcheck==2}">
						<h3>Thống Kê Tháng</h3>
					</c:if>
					<c:if test="${namcheck==3}">
						<h3>Thống Kê Năm</h3>
					</c:if>
				</div>
				<div class="check-filter">
					<div class="filter">
						<input type="checkbox" id="ngaycheck" name="ngaycheck" value="1">
						<label for="ngaycheck">Ngày</label>
					</div>
					<div class="filter">
						<input type="checkbox" id="thangcheck" name="thangcheck" value="2">
						<label for="thangcheck">Tháng</label>
					</div>
					<div class="filter">
						<input type="checkbox" id="namcheck" name="namcheck" value="3">
						<label for="namcheck">Năm</label>
					</div>

					<div class="filter">
						<input type="date" id="ngaythangnam" name="ngaythangnam">
						<label for="ngaythangnam"></label>
					</div>
					<button type="submit">Filter</button>
				</div>


				<div class="show_product">
					<table border=1>
						<tr>
							<th>STT</th>
							<th>Tên Sản Phẩm</th>
							<th>Giá Tiền</th>
							<th>Số Lượng</th>
							<th>Ngày Thanh Toán</th>

						</tr>
						<c:forEach items="${listfilter}" var="filter" varStatus="loop">
							<tr>
								<td>${loop.index +1}</td>
								<td>${filter.tenSP}</td>
								<td>${filter.giaSP}</td>
								<td>${filter.soLuong}</td>
								<td>${filter.ngaylaphoadonbanhang}</td>
							</tr>
						</c:forEach>
					</table>



				</div>
			</div>
			<div style="display: flex; justify-content: right; margin-right: 5%">
				<div>
					<h3>Tổng Tiền Thu Vào: ${tongtien} VNĐ</h3>
					<h3>Tổng Số Lượng Bán Ra: ${tongsoluong} Cái</h3>
				</div>
			</div>
		</section>
		<a href="HomePageDB">return HomePage</a>
		<!-- end Body product discount -->

		<script src="https://kit.fontawesome.com/03bca92048.js"
			crossorigin="anonymous"></script>
	</form>
</body>
</html>
