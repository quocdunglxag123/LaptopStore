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
<title>Quy Định Giá Cả Và Hình Thức Thanh Toán</title>
</head>
<body>
	<form action="ChiTietSanPhamServlet" method="post">
		<jsp:include page="Header.jsp" />
		<section class="SanPham">
			<div class="container">
				<div class="row" style="font-size:140%">I. QUY ĐỊNH GIÁ SẢN PHẨM <br /> Giá bán niêm yết
					trên website team5 là giá bán chưa bao gồm phí giao hàng tận nơi và
					các khoản phí dịch vụ phát sinh khác. <br />Giá bán có thể thay đổi mà
					chưa kịp cập nhật, bộ phận bán hàng sẽ thông tin tới Quý khách tại
					thời điểm xác nhận đơn hàng.<br /> Phí vận chuyển, phí thu hộ sẽ được
					tính khi Khách hàng thực hiện mua hàng trên website và chọn sử dụng
					dịch vụ Giao hàng tận nơi, thể hiện trên bước Thanh toán, hoặc bộ
					phận bán hàng sẽ thỏa thuận với Quý khách tại thời điểm xác nhận
					đơn hàng. <br />Quý khách có trách nhiệm thanh toán khoản phí này trực
					tiếp với đơn vị chuyển phát hoặc thông qua Team5.<br /> Phí vận chuyển sẽ
					phụ thuộc vào trọng lượng và vị trí địa lý từ Team5 đến khách
					hàng. Phí thu hộ sẽ phụ thuộc vào số tiền cần thu.<br /> II. HÌNH THỨC
					THANH TOÁN: <br />Với tiêu chí không ngừng nỗ lực để trải nghiệm mua hàng
					của Quý khách diễn ra thuận tiện và nhanh chóng nhất, Team5 hiện hỗ
					trợ các phương thức thanh toán sau: Thanh toán tiền mặt đối với
					trường hợp chọn nhận hàng trực tiếp tại Cửa hàng Team5.<br /> Thanh toán
					tiền mặt khi nhận hàng – COD (Giao hàng thu tiền tận nơi, Quý khách
					thanh toán Phí vận chuyển và Phí thu hộ).<br /> Chuyển khoản qua tài
					khoản ngân hàng, bao gồm thanh toán qua các ví điện tử.<br /> – Để đảm
					bảo quyền lợi của Quý khách, khi chuyển khoản, Quý khách ghi rõ Nội
					dung chuyển khoản: Họ tên – Điện thoại – Lý do chuyển khoản <br />III.
					THÔNG TIN LIÊN HỆ: <br />Team5 Địa chỉ: 1, Võ Văn Ngân. P. LINH CHIỂU, Q.
					Thủ Đức. Số điện thoại:(08)38968641, (08)38961333.
					http://www.hcmute.edu.vn · admin@hcmute.edu.vn. <br />Chúng tôi chuyên:<br /> +
					Tư vấn, thiết kế, lắp ráp, bảo trì máy tính và hệ thống mạng máy
					tính cho các doanh nghiệp, cá nhân.<br /> + Mua bán, trao đổi linh kiện
					máy tính, laptop, thiết bị mạng, thiết bị văn phòng… <br />+ Sửa Chữa PC,
					laptop, LCD, máy in, máy fax ….<br /> + Phục hồi dữ liệu. <br />+ Nạp mực in
					laser, phục hồi Cartridge và Print head, gắn in phun liên tục.<br /> +Tư
					vấn, thiết kế, thi công hệ thống Camera quan sát.<br /> +Thiết kế, bảo
					trì Website thông tin doanh nghiệp, thương mại điện tử. <br />Chân thành
					cảm ơn quý khách đã tin tưởng sử dụng sản phẩm và dịch vụ của Team5.</div>
			</div>
		</section>
		<jsp:include page="Footer.jsp" />
	</form>
</body>
</html>