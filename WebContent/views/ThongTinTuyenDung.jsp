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
<title>Thông Tin Tuyển Dụng</title>
</head>
<body>
	<form action="ChiTietSanPhamServlet" method="post">
		<jsp:include page="Header.jsp" />
		<section class="SanPham">
			<div class="container">
				<div class="row"  style="font-size:140%">Công Ty Team5, <br />Vị trí tuyển dụng : Nhân viên
					Kỹ Thuật, Nhân Viên IT ( sửa máy tính, laptop, sửa máy in, nạp mực
					máy in) <br />👉 Số lượng : 3<br /> 👉 Lương : từ 10 triệu – 17 triệu ( có thể
					thỏa thuận theo năng lực) <br />👉 Mô tả công việc : thực hiện công việc
					sửa chữa khắc phục sự cố hư hỏng tận nơi cho khách hàng tại các
					quận TPHCM => hoạt động theo khu vực mà kỹ thuật đang ở theo các
					quận + Quận 1 , quận 3, Quận 5 + Quận 4 , quận 7, huyện Nhà Bè +
					Quận gò vấp, quận 12, huyện hóc mon, củ chi + Quận 2, quận 9, quận
					thủ đức + bình tân , tân phú, quận 10, quận 11 + Quận phú nhuận,
					quận bình thạnh <br />👉 Yêu cầu công việc : có đầy đủ đồ nghề + kinh
					nghiệm xử lý tốt, biết cài win , nạp mực in, vệ sinh laptop, bấm
					dây mạng<br /> 👉 Quyền lợi : – môi trường năng động, chuyên nghiệp – Phụ
					cấp xăng + bảo hiểm + Nghỉ phép – Các quyền lợi khác</div>
			</div>
		</section>
		<jsp:include page="Footer.jsp" />
	</form>
</body>
</html>