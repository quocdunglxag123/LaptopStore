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
<title>Trang Chủ</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/SanPham.css">


<style>
</style>
</head>
<body>
	<script type="text/javascript">
		var index = 1;
		changeImage = function() {
			var imgs = [ "/WebsiteLapTop/upload/slide1s.jpg",
					"/WebsiteLapTop/upload/slide2.jpg",
					"/WebsiteLapTop/upload/slide3.jpg",
					"/WebsiteLapTop/upload/slide4.jpg",
					"/WebsiteLapTop/upload/slide5.jpg",
					"/WebsiteLapTop/upload/slide6.jpg",
					"/WebsiteLapTop/upload/slide7s.jpg",
					"/WebsiteLapTop/upload/slide8.jpg" ];
			document.getElementById('img').src = imgs[index];
			index++;
			if (index == 3) {
				index = 0;
			}
		}
		setInterval(changeImage, 1000);
	</script>
	<form action="TrangChuServlet" method="post">
		<!-- header -->
		<jsp:include page="Header.jsp" />
		<!--body slide-->
		<section class="slide_body">
			<div class="container">
				<div class="container_slide">
					<div class="slides">
						<div class="item">
							<img id="img"
								src="<%=request.getContextPath()%>/upload/slideKhoa.jpg" alt="">
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- Body_selling products -->
		<section class="body_product">
			<div class="container">
				<div class="title">
					<h3>Laptop bán chạy nhất</h3>
				</div>
				<div class="show_product">
					<c:forEach items="${listSP}" var="sp" begin="1" end="20" step="2">
						<div class="card">
							<div class="items">
								<div class="image">
									<img src="<%=request.getContextPath()%>/upload/${sp.tenSP}.jpg">
								</div>
								<div class="text">
									<h3>${sp.tenSP}</h3>
									<p>Giá: ${sp.giaSP} VNĐ</p>
								</div>
								<div class="button">
									<a href="GioHangServlet?maSP=${sp.maSP}"
										class="btn btn-primary">Buy</a> <a
										href="ChiTietSanPhamServlet?maSP=<c:out value='${sp.maSP}'/>">Xem
										chi tiết</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<section class="body_product">
			<div class="container">
				<div class="title">
					<h3>Mẫu Laptop mới</h3>
				</div>
				<div class="show_product">
					<c:forEach items="${listSP}" var="sp" begin="10" end="39" step="3">
						<div class="card">
							<div class="items">
								<div class="image">
									<img src="<%=request.getContextPath()%>/upload/${sp.tenSP}.jpg">
								</div>
								<div class="text">
									<h3>${sp.tenSP}</h3>
									<p>Giá: ${sp.giaSP} VNĐ</p>
								</div>
								<div class="button">
									<a href="GioHangServlet?maSP=${sp.maSP}"
										class="btn btn-primary">Buy</a> <a
										href="ChiTietSanPhamServlet?maSP=<c:out value='${sp.maSP}'/>">Xem
										chi tiết</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<!-- end Body product discount -->
		<jsp:include page="Footer.jsp" />
		<script src="https://kit.fontawesome.com/03bca92048.js"
			crossorigin="anonymous"></script>
	</form>
</body>
</html>
</body>
</html>