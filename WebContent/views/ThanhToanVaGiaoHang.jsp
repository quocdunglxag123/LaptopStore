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
<title>Thanh Toán Và Giao Hàng</title>
</head>
<body>
	<form action="ChiTietSanPhamServlet" method="post">
		<jsp:include page="Header.jsp" />
		<section class="SanPham">
			<div class="container">
				<div class="row" style="font-size: 140%;">Chính sách vận chuyển Để đáp ứng nhu cầu mua
					hàng từ xa của quý khách hàng, Team5 phục vụ vận chuyển hàng tới
					tất cả các khu vực tỉnh thành trên phạm vi toàn lãnh thổ Việt Nam.
					<br />Chính sách cụ thể như sau : <br />1. Đối tượng áp dụng Tất cả các khách
					hàng mua máy tại Team5 có nhu cầu giao hàng trực tiếp tại nhà.<br /> 2.
					Khu vực áp dụng Đối với khách hàng nội thành HN: giao nhận trong
					ngày, miễn phí ship với tất cả các khách hàng ( không áp dụng với
					linh kiện ) <br />Đối với khách hàng ngoại tỉnh: Team5 sẽ gửi ship cod
					qua các đối tác vận chuyển, chi phí giao nhận sẽ được tính vào đơn
					hàng khi quý khách nhận hàng KIỂM TRA HÀNG và thanh toán với bên
					giao hàng.<br /> Chi phí giao hàng toàn quốc dao động từ 150.000 đ đến
					200.000 đ. <br />Quý khách có thể tham khảo thêm tại đây<br /> 3. Dịch vụ giao
					nhận Khách hàng đặt hàng trực tiếp qua website Team5 hoặc qua
					Hotline: 038**201 để được tư vấn nhanh nhất. <br />Khi xác
					nhận việc mua bán giữa hai bên, chúng tôi tiến hành giao hàng như
					thỏa thuận.<br /> – Đối với khách hàng nội thành HN: Team5 sẽ giao
					hàng trong vòng 1 ngày kể từ thời điểm bạn đặt hàng, kĩ thuật sẽ
					trực tiếp giao máy, test máy trong vòng 15p, khách hàng xác nhận
					mới thanh toán tiền hàng.<br /> – Đối với khách hàng ngoại tỉnh:
					Team5 sẽ giao hàng cho các đơn vị vận chuyển, thời gian giao
					hàng từ 3-5 ngày, khách hàng nhận máy mới thanh toán tiền hàng.<br /> *
					Lưu ý : Khi nhận hàng quý khách vui lòng trực tiếp kiểm tra kỹ hàng
					hoá ngay khi nhận hàng từ người chuyển phát hàng hoá, nếu có vấn đề
					liên quan chất lượng, số lượng hàng hoá không đúng như trong đơn
					đặt hàng, niêm phong đã bị thay đổi, thì Quý khách hãy lập biên bản
					ngay khi nhận hàng với đơn vị hoặc người chuyển phát và thông báo
					ngay cho chúng tôi để cùng phối hợp đơn vị chuyển phát hàng hóa xử
					lý. <br />Trong trường hợp giao hàng quý khách không kiểm tra hoặc kiểm
					tra không kỹ dẫn đến thiếu thiết bị linh kiện, Team5 không chịu
					trách nhiệm.</div>
			</div>
		</section>
		<jsp:include page="Footer.jsp" />
	</form>
</body>
</html>