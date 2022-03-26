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
<title>Chính Sách Bảo Hành</title>
</head>
<body>
	<form action="ChiTietSanPhamServlet" method="post">
		<jsp:include page="Header.jsp" />
		<section class="SanPham">
			<div class="container">
				<div class="row">
					<table>
						<tr>
							<th><h1>NỘI DUNG CHÍNH SÁCH</h1></th>
							<th><h1>ĐIỀU KIỆN ÁP DỤNG</h1></th>
						</tr>

						<tr>
							<td>1) BẢO HÀNH CÓ CAM KẾT TRONG 12 THÁNG - RIÊNG Phụ kiện
								có điện AVA bảo hành 3 tháng. Đồng hồ thời trang chỉ bảo hành bộ
								máy, không bảo hành dây, vỏ, mặt kính. - Chỉ áp dụng cho sản
								phẩm chính, KHÔNG áp dụng cho phụ kiện đi kèm sản phẩm chính +
								Bảo hành trong vòng 15 ngày (tính từ ngày TGDĐ nhận máy ở trạng
								thái lỗi và đến ngày gọi khách hàng ra lấy lại máy đã bảo hành)

								+ Sản phẩm không bảo hành lại lần 2 trong 30 ngày kể từ ngày máy
								được bảo hành xong. + Nếu TGDD vi phạm cam kết (bảo hành quá 15
								ngày hoặc phải bảo hành lại sản phẩm lần nữa trong 30 ngày kể từ
								lần bảo hành trước), Khách hàng được áp dụng phương thức Hư gì
								đổi nấy ngay và luôn hoặc Hoàn tiền với mức phí giảm 50%. *Từ
								tháng thứ 13 trở đi không áp dụng bảo hành cam kết, chỉ áp dụng
								bảo hành hãng (nếu có)</td>
							<td>- Sản phẩm đủ điều kiện bảo hành của hãng.</td>
						</tr>
						<tr>
							<td>2) HƯ GÌ ĐỔI NẤY NGAY VÀ LUÔN (KHÔNG áp dụng cho Đồng
								hồ, phụ kiện có điện) Sản phẩm hư gì thì đổi đó (cùng model,
								cùng dung lượng, cùng màu sắc...) đối với sản phẩm chính và đổi
								tương đương đối với phụ kiện đi kèm, cụ thể: 2.1) Hư sản phẩm
								chính thì đổi sản phẩm chính mới - Tháng đầu tiên kể từ ngày
								mua: miễn phí - Tháng thứ 2 đến tháng thứ 12: phí 10% giá trị
								hóa đơn/tháng. (VD: tháng thứ 2 phí 10%, tháng thứ 3 phí 20%...)

								Lưu ý: Nếu không có sản phẩm chính đổi cho Khách hàng thì áp
								dụng chính sách Bảo hành có cam kết hoặc Hoàn tiền với mức phí
								giảm 50%. 2.2) Hư phụ kiện đi kèm thì đổi phụ kiện có cùng công
								năng mà TGDĐ đang kinh doanh Phụ kiện đi kèm được đổi miễn phí
								trong vòng 12 tháng kể từ ngày mua sản phẩm chính bằng hàng phụ
								kiện TGDĐ đang kinh doanh mới với công năng tương đương. Lưu ý:
								Nếu không có phụ kiện tương đương hoặc Khách hàng không thích
								thì áp dụng bảo hành hãng 2.3) Lỗi phần mềm không áp dụng, mà
								chỉ khắc phục lỗi phần mềm 2.4) Trường hợp Khách hàng muốn đổi
								full box (nguyên thùng, nguyên hộp): ngoài việc áp dụng mức phí
								đổi trả tại Mục 2.1 thì Khách hàng sẽ trả thêm phí lấy full box
								tương đương 20% giá trị hóa đơn.</td>
							<td>- Sản phẩm đổi trả phải giữ nguyên 100% hình dạng ban
								đầu và đủ điều kiện bảo hành của hãng. - Thân máy không trầy
								xước màn hình (áp dụng cho Điện thoại, Tablet, Laptop, Màn hình
								máy tính, Máy tính để bàn) - Sản phẩm chỉ dùng cho mục đích sử
								dụng cá nhân, không áp dụng việc sử dụng sản phẩm cho mục đích
								thương mại.</td>
						</tr>
						<tr>
							<td>3) HOÀN TIỀN: Áp dụng cho sản phẩm lỗi và không lỗi. -
								Tháng đầu tiên kể từ ngày mua: phí 20% giá trị hóa đơn. - Tháng
								thứ 2 đến tháng thứ 12: phí 10% giá trị hóa đơn/tháng. - Riêng
								phụ kiện có điện AVA: áp dụng hoàn tiền trong 3 tháng với mức
								phí như trên. Từ tháng thứ 4 trở đi không áp dụng hoàn tiền</td>
							<td>- Sản phẩm đổi trả phải giữ nguyên 100% hình dạng ban
								đầu và đủ điều kiện bảo hành của hãng. - Thân máy không trầy
								xước màn hình (áp dụng cho Điện thoại, Tablet, Laptop, Màn hình
								máy tính, Máy tính để bàn, Đồng hồ) - Sản phẩm chỉ dùng cho mục
								đích sử dụng cá nhân, không áp dụng việc sử dụng sản phẩm cho
								mục đích thương mại. - Hoàn trả lại đầy đủ hộp, sạc, phụ kiện đi
								kèm: + Mất hộp thu phí 2% giá trị hóa đơn đối với nhóm Điện
								thoại, Tablet, Laptop, Màn hình máy tính, Máy tính để bàn, Đồng
								hồ, Máy in + Mất phụ kiện thu phí theo giá bán tối thiểu trên
								website TGDĐ và chính hãng (tối đa 5% giá trị hóa đơn) cho tất
								cả nhóm sản phẩm - Hoàn trả toàn bộ hàng khuyến mãi. Nếu mất
								hàng khuyến mãi sẽ thu phí theo mức giá đã được công bố.</td>
						</tr>
					</table>
				</div>
			</div>
		</section>
		<jsp:include page="Footer.jsp" />
	</form>
</body>
</html>