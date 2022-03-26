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
<title>Thêm Nhân Viên</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/SanPham.css">
<style>
.show input {
	width: 40%;
}

.show textarea {
	width: 40%;
	height: 10vh;
}

.show button {
	width: 20%;
	height: 4vh;
}

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
</style>
<script type="text/javascript">
		src="<%=request.getContextPath()%>
	/js/SanPham.js">
</script>
</head>
<body>

	<!-- header -->
	<div class="headernv">
		<jsp:include page="/viewsnhanvien/Header.jsp" />
	</div>
	<div class="menunv">
		<jsp:include page="/viewsnhanvien/Menu.jsp" /></div>
	<form action="InsertNhanVienDB" method="post">
		<section class="body_product">
			<div class="container">
				<div class="title">
					<h3>Thêm Nhân Viên</h3>
				</div>
				<div class="show">
					<label for="UserName">UserName:</label> <br /> <input type="text"
						id="UserName" name="UserName" class="form-control"> <br />
					<br />
					<br /> 
					<label for="PassWord">PassWord:</label> <br /> <input type="text"
						id="PassWord" name="PassWord" class="form-control"> <br />
					<br />
					<br /> 
					<label for="HoTen">Họ Tên:</label> <br /> <input type="text"
						id="HoTen" name="HoTen" class="form-control"> <br />
					<br />
					<br /> 
					 <label for="NgaySinh">Ngày Sinh:</label> <br />
					<input type="date" id="NgaySinh" name="NgaySinh" class="form-control">
					<br />
					<br />
					<br /> <label for="SDT">Số Điện Thoại:</label> <br />
					<input type="text" id="SDT" name="SDT"
						class="form-control"> <br />
					<br />
					<br /> <label for="QueQuan">Quê Quán:</label> <br />
					<input type="text" id="QueQuan" name="QueQuan" class="form-control">
					<br />
					<br />
					<br /> <label for="STK">Số Tài Khoản:</label> <br />
					<input type="text" id="STK" name="STK" class="form-control">
					<br />
					<br />
					<br /> 
					
					<button style="background-color: springgreen;" type="submit">Thêm</button>
					<button type="reset">Reset</button><br />
					<a href="NhanVienDB">Return List NhanVien</a>
				</div>
			</div>
		</section>
		</form>
		<!-- end Body product discount -->

		<script src="https://kit.fontawesome.com/03bca92048.js"
			crossorigin="anonymous"></script>
	
</body>
</html>
