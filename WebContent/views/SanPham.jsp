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
<title>Sản Phẩm</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/SanPham.css">

<script type="text/javascript">
		src="<%=request.getContextPath()%>
	/js/SanPham.js">
</script>
</head>
<body>
	<form action="SanPhamServlet" method="post">
		<!-- header -->
		<jsp:include page="Header.jsp" />  
		<section class="body_product">
			<div class="container">
				<div class="title">
					<h3>Mẫu Laptop</h3>
				</div>
				<div class="show_product">
					<c:forEach items="${listSP}" var="sp">
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
									<a href="GioHangServlet?maSP=${sp.maSP}" class="btn btn-primary">Buy</a>  <a href="ChiTietSanPhamServlet?maSP=<c:out value='${sp.maSP}'/>">Xem chi tiết</a>
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