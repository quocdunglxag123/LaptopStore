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
<title>Trung Tâm Bảo Hành</title>
</head>
<body>
	<form action="ChiTietSanPhamServlet" method="post">
		<jsp:include page="Header.jsp" />
		<section class="SanPham">
			<div class="container">
				<div class="row" style="margin: 25%;">
					<table>
						<tr>
							<th><h1>Trung Tâm</h1></th>
							<th><h1>Địa Chỉ</h1></th>
						</tr>

						<tr>
							<td>Trung Tâm Lý Quốc Dũng</td>
							<td>19133015, Đại Học Sư Phạm Kỹ Thuật</td>
						</tr>
						<tr>
							<td>Trung Tâm Đoàn Trần Đăng Khoa</td>
							<td>19133028, Đại Học Sư Phạm Kỹ Thuật</td>
						</tr>
						<tr>
							<td>Trung Tâm Lê Thị Kim Ngân</td>
							<td>19133038, Đại Học Sư Phạm Kỹ Thuật</td>
						</tr>
						<tr>
							<td>Trung Tâm Bùi Thị Ngân Tuyền</td>
							<td>19133066, Đại Học Sư Phạm Kỹ Thuật</td>
						</tr>
					</table>
				</div>
			</div>
		</section>
		<jsp:include page="Footer.jsp" />
	</form>
</body>
</html>