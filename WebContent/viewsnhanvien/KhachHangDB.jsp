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
<style>
.menunv{
margin:1px;
float: left;
	width: 16%;
	padding: 16px;
	min-height: 500px;
	 background: #000055;
	height:100vh
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
.show_product table{
width: 100%;
}s
</style>
<script type="text/javascript">
		src="<%=request.getContextPath()%>
	/js/SanPham.js">
</script>
</head>
<body>
	<form action="KhachHangDB" method="post">
		<!-- header -->
		<div class="headernv">
			<jsp:include page="/viewsnhanvien/Header.jsp" />
		</div>
		<div class="menunv">
			<jsp:include page="/viewsnhanvien/Menu.jsp" /></div>
		<section class="body_product">
			<div class="container">
				<div class="title">
					<h3>Khách Hàng</h3>
				</div>
				<div class="show_product">
					<table border=1>
						<tr>
							<!-- <th>Mã Khách Hàng</th> -->
							<th>Họ và Tên Khách Hàng</th>
							<th>Ngày Sinh Khách Hàng</th>
							<th>Số Điện Thoại Khách Hàng</th>
							<th>Gmail</th>
							<th>Mã Account</th>
							<th>Action</th>
						</tr>
						<c:forEach items="${listKhachHang}" var="kh" begin="${start }"
								end="${start+9}">
							<tr>
								<%-- <td>${kh.maKH}</td> --%>
								<td>${kh.hoTen}</td>
								<td>${kh.ngaySinh}</td>
								<td>${kh.SDT}</td>
								<td>${kh.gmail}</td>
								<td>${kh.id_Account}</td>
								<td><a href="LoadEditKhachHangDB?maKH=${kh.maKH}">Edit</a><a
									href="DeleteKhachHang?id=${kh.maKH}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
					
					
					
					<c:if test="${start>0}">
						<a class="nextprevious" href="KhachHangDB?start=${start-10}"
							class="previous">&laquo; Previous</a>

					</c:if>
					<c:if test="${start<=0}">
						<p class="nextpreviouscancel">&laquo; Previous</p>
					</c:if>


					<a class="nextprevious" href="KhachHangDB?start=0">1</a>
					<c:if test="${end%10!=0}">
						<c:forEach var="size" begin="2" end="${(end/10)+1}">
							<a class="nextprevious"
								href="KhachHangDB?start=${((size-1)*10)}">${size}</a>
						</c:forEach>
					</c:if>
					<c:if test="${end%10==0}">
						<c:forEach var="size" begin="2" end="${(end/10)}">
							<a class="nextprevious"
								href="KhachHangDB?start=${((size-1)*10)}">${size}</a>
						</c:forEach>
					</c:if>

					<c:if test="${start<=end-11}">
						<a class="nextprevious" href="KhachHangDB?start=${start+10}"
							class="next">Next &raquo;</a>
					</c:if>
					<c:if test="${start>end-11}">
						<p class="nextpreviouscancel">Next &raquo;</p>
					</c:if>
					
					
					
					
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
