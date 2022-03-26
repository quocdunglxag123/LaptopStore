<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="vn">
<head>
<style>
.row {
	display: flex;
}

table, th, td {
	border: 2px solid Black;
}
</style>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/ChiTietSanPham.css">
<title>Thông Tin Liên Hệ</title>
</head>
<body>
	<form action="ChiTietSanPhamServlet" method="post">
		<jsp:include page="Header.jsp" />
		<section class="SanPham">
			<div class="container">
				<div class="row" style="margin: 20%; font-size: x-large;">
					<table>
						<tr>
							<th>Giảng Viên</th>
							<th>Email</th>
						</tr>
						<tr>
							<td>Nguyễn Trường Hải</td>
							<td>Lớp Công Nghệ Phần Mềm</td>
						</tr>
						<tr>
							<th><h1>Sinh Viên</h1></th>
							<th><h1>Email</h1></th>
						</tr>

						<tr>
							<td>Lý Quốc Dũng</td>
							<td>19133015@student.hcmute.edu.vn</td>
						</tr>
						<tr>
							<td>Đoàn Trần Đăng Khoa</td>
							<td>19133028@student.hcmute.edu.vn</td>
						</tr>
						<tr>
							<td>Lê Thị Kim Ngân</td>
							<td>19133038@student.hcmute.edu.vn</td>
						</tr>
						<tr>
							<td>Bùi Thị Ngân Tuyền</td>
							<td>19133066@student.hcmute.edu.vn</td>
						</tr>
					</table>
				</div>
			</div>
		</section>
		<jsp:include page="Footer.jsp" />
	</form>
</body>
</html>