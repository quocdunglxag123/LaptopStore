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
<title>Giới Thiệu Cửa Hàng</title>
</head>
<body>
	<form action="ChiTietSanPhamServlet" method="post">
		<jsp:include page="Header.jsp" />
		<section class="SanPham">
			<div class="container">
				<div class="row" style="font-size: 140%">Giới Thiệu Cửa hàng
					Team5 <br /> chuyên cung cấp các sản phẩm laptop xách tay Mỹ, máy tính để
					bàn chính hãng zin 100%, các loại linh kiện vi tính chính hãng... <br />
					Đến với Team5, người dùng sẽ được trải nghiệm các thiết bị máy tính
					laptop xách tay chất lượng với nhiều phân khúc giá, thương hiệu,
					phù hợp với nhiều nhu cầu sử dụng khác nhau.  <br />Qua nhiều năm hoạt
					động trong lĩnh vực phân phối, mua – bán các thiết bị công nghệ,
					sửa chữa bảo trì máy tính cho các đơn vị, công ty, khách hàng cá
					nhân.  <br />Với đối ngũ nhân viên, kỹ thuật viên kinh nghiệm chuyên môn
					cao, có am hiểu về máy tính… sẽ phục khách hàng một cách nhiệt
					tình.  <br />Chúng tôi luôn đặt chất lượng sản phẩm lên hàng đầu, đảm bảo
					cho khách hàng luôn cảm thấy rất yên tâm khi mua sắm và sử dụng các
					sản phẩm của cửa hàng Team5.  <br />Sản phẩm của vi tính Team5 đa dạng từ
					Máy tính bàn, laptop xách tay, linh kiện máy tính…  <br />Các thiết bị đều
					đế từ những thương hiệu nổi tiếng toàn thế giới như: Dell, HP,
					Lenovo,… Cửa hàng vi tính chúng tôi tự hào mang đến cho khách hàng
					của mình những sản phẩm chính hãng, hình thức mới, chất lượng đảm
					bảo. <br /> Cùng với đó cung cấp thời gian bảo hành máy dài, dịch vụ hậu
					mãi tốt cho khách hàng yên tâm sử dụng sản phẩm.  <br />Mức giá bán sản
					phẩm máy tính laptop cũ, linh kiện máy tính cũng ở mức hợp lý, phải
					chăng, rất tương xứng chất lượng. <br /> Nhờ thế, cửa hàng vi tính chúng
					tôi được khách hàng đánh giá là địa chỉ bàn hàng uy tín, có chất
					lượng dịch vụ tốt. <br /> Đây cũng chính là động lực để chúng tôi nỗ lực
					nhiều hơn, hoàn thiện từ sản phẩm đến dịch vụ để phục vụ các khách
					hàng. <br /> Tiêu chí hoạt động của cửa hàng chúng tôi chính là “khách
					hàng là thượng đế”, vì thế mà Worlap luôn lấy sự hài lòng của khách
					hàng là kim chỉ nam, là mục tiêu phấn đấu.  <br />ửa hàng máy trạm Worlap
					đã xây dựng một hệ thống bán hàng trực tuyến trên website Team5
					để có thể giúp khách hàng có thể lựa chọn sản phẩm, mua hàng nhanh
					chóng và thuận tiện ngay tại nhà. <br /> Mọi thông tin về cửa hàng bàn có
					thể liên hệ với chúng tôi qua: Điện thoại: 0383***201 Địa chỉ cửa
					hàng: số 1, Võ Văn Ngân. P. LINH CHIỂU, Q. Thủ Đức Cửa hàng Team5
					chúng tôi rất hân hạnh được phục quý khách hàng và mang đến cho bạn
					những thiết bị công nghệ tốt nhất.  <br />Hãy nhanh chân đến ngay cửa hàng
					chúng tôi để trải nghiệm mua hàng hấp nhé.</div>
			</div>
		</section>
		<jsp:include page="Footer.jsp" />
	</form>
</body>
</html>