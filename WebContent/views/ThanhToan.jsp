<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="vn">
<head>
<style>
header .container .content_header .card_header .card {
	background-color: rgb(98, 217, 238);
}

header .container .content_header .card_header .card .logoutx {
	width: 8vw; <!-- ---- --> . modal { display : none;
	position: fixed;
	z-index: 1;
	padding-top: 100px;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
}
</style>
<script>
	function myFunction() {
		alert("Mua Hàng Thành Công");
	}
</script>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="html2pdf.bundle.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.min.js"></script>
<title>Thanh Toán</title>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<section class="top">
		<header class="container">
			<div class="row">
				<div>
					<h1>Thông Tin Người Nhận</h1>
				</div>
			</div>
		</header>
	</section>
	<section class="menu-login">
		<div class="container">
			<div class="row">
				<div class="col-7">
					<form action="ThanhToanServlet" method="post">
						<!-- Ten nguoi -->
						<div class="form-group">
							<label for="firstlastname">Họ Và Tên Người Nhận:</label> <input
								type="text" id="firstlastname" name="firstlastname"
								class="form-control">
						</div>
						<!-- Ten TK -->
						<div class="form-group">
							<label for="username">User Name:</label> <input type="text"
								id="username" name="username" class="form-control">
						</div>
						<!-- Địa Chỉ -->
						<div class="form-group">
							<label for="diachi">Địa Chỉ:</label> <input type="text"
								id="diachi" name="diachi" class="form-control">
						</div>
						<!-- Number Phone -->
						<div class="form-group">
							<label for="numberphone">Số Điện Thoại:</label> <input
								type="text" id="numberphone" name="numberphone"
								class="form-control">
						</div>
						<!-- Gioi Tinh-->
						<div class="form-group">
							<label for="genderM">Gender:</label>
							<div class="form-check form-check-inline">
								<input type="radio" id="genderM" name="genderM"
									class="form-check-input" /> <label for="genderM">Male</label>
							</div>
							<div class="form-check form-check-inline">
								<input type="radio" id="genderF" name="genderF"
									class="form-check-input" /> <label for="genderF">Female</label>
							</div>
						</div>
						<!-- Quoc Tich-->
						<div class="form-group">
							<label for="nationality">Quốc Tịch:</label> <select
								name="nationality" id="nationality" data-live-search="true"
								class="form-control selectpicker">
								<option data-tokens="Asian" value="VietNam">VietNam</option>
								<option data-tokens="Asian" value="Jpan">Jpan</option>
								<option data-tokens="Asian" value="China">"China"</option>
								<option data-tokens="Asian" value="korean">korean</option>
								<option data-tokens="Asian" value="Campuchia">Campuchia</option>
								<option data-tokens="Asian" value="Indonesia">Indonesia</option>
								<option data-tokens="Europe" value="England">England</option>
								<option data-tokens="Europe" value="Paris">Philippines</option>
								<option data-tokens="Europe" value="American">American</option>
								<option data-tokens="Europe" value="Russia">Russia</option>
							</select>

						</div>
						<!--Ghi Chu-->
						<div class="form-group">
							<label for="noted">noted</label>
							<textarea name="noted" id="noted" rows="3" class="form-control"></textarea>
						</div>
						<hr />
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
				<div class="col-5">
					<h3>Xác Nhận Thông Tin Người Nhận</h3>
					<ul>
						<li>Họ và Tên: ${firstlastname }</li>
						<li>Địa Chỉ: ${diachi }</li>
						<li>numberphone: ${numberphone}</li>
						<li>Gender: ${gender }</li>
						<li>Nationality: ${nationality }</li>
						<li>Noted: ${noted }</li>
					</ul>
					<button id="cart">xác nhận</button>
					<div id="myModal" class="modal"
						style="width: 40%; margin-left: 30%;">
						<div id="area-print" class="modal-content"
							style="background: #e1f9fb;">
							<div class="modal-header">
								<h5 style="margin-left: 30%; color: red; font-size: 200%;"
									class="modal-title">Hóa đơn</h5>
								<span class="close">&times;</span>
							</div>

							<p style="margin: 0px 0px 0px 20px">Họ và Tên:
								${firstlastname }</p>
							<p style="margin: 0px 0px 0px 20px">Địa Chỉ: ${diachi }</p>
							<p style="margin: 0px 0px 0px 20px">numberphone:
								${numberphone}</p>
							<p style="margin: 0px 0px 0px 20px">Gender: ${gender }</p>
							<p style="margin: 0px 0px 0px 20px">Nationality:
								${nationality }</p>
							<p style="margin: 0px 0px 0px 20px">Noted: ${noted }</p>

							<div class="modal-body">
								
								<table border=1>
									<tr>
										<th>Tên Sản Phẩm</th>
										<th>Giá Sản Phẩm</th>
										<th>Số Lượng</th>
										<th>Tổng Tiền</th>
									</tr>
									<c:forEach items="${listGioHang}" var="sp">
										<tr>
											<td>${sp.tenSP}</td>
											<td>${sp.giaSP}VNĐ</td>
											<td>${sp.soLuong}</td>
											<td>${sp.soLuong * sp.giaSP}VNĐ</td>
										</tr>
									</c:forEach>

								</table>
								<div class="cart-total">
									<strong class="cart-total-title">Tổng Cộng:
										${tongtien}</strong> <span class="cart-total-price">VNĐ</span><br /> <strong
										class="cart-total-title">Tổng Số Lượng: ${soluong}</strong> <span
										class="cart-total-price">Cái</span>
								</div>
							</div>

							<div class="modal-footer">
								<div class="col">
									<h3 class="name_website" style="font-size: 1rem">Blue
										Laptop</h3>
									<div>
										<img src="<%=request.getContextPath()%>/upload/logone1.png"
											alt="">
									</div>
									<p class="copyriht"
										style="text-align: center; margin-bottom: -10px;">Website
										design By @Team3</p>
								</div>

							</div>

						</div>
						<button type="button" class="btn btn-secondary close-footer">Đóng</button>
						<input class="btn btn-secondary close-footer" style="background-color:green" type="button" id="btn-print"
							value="Xuất hóa đơn">
					</div>

				</div>
			</div>
	</section>
	<jsp:include page="Footer.jsp" />
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
		integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
		crossorigin="anonymous"></script>
	<script type="text/javascript">
		// Modal
		var modal = document.getElementById("myModal");
		var btn = document.getElementById("cart");
		var close = document.getElementsByClassName("close")[0];
		/* tại sao lại có [0] như  thế này bởi vì mỗi close là một html colection nên khi mình muốn lấy giá trị html thì phải thêm [0]. 
		Nếu mình có 2 cái component cùng class thì khi [0] nó sẽ hiển thị component 1 còn [1] thì nó sẽ hiển thị component 2. */
		var close_footer = document.getElementsByClassName("close-footer")[0];
		var order = document.getElementsByClassName("order")[0];
		btn.onclick = function() {
			modal.style.display = "block";
		}
		close.onclick = function() {
			modal.style.display = "none";
		}
		close_footer.onclick = function() {
			modal.style.display = "none";
		}
		order.onclick = function() {
			alert("Cảm ơn bạn đã thanh toán đơn hàng")
		}
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var area_print = $('#area-print');
							var cache_width = area_print.width();
							var a4 = [ 595.28, 841.89 ];
							$('#btn-print').on('click', function() {
								createPDF();
							});
							function createPDF() {
								getCanvas()
										.then(
												function(canvas) {
													var img = canvas
															.toDataURL("image/png"), doc = new jsPDF(
															{
																unit : 'px',
																format : 'a4'
															});
													doc.addImage(img, 'JPEG',
															20, 20);
													doc
															.save('convert_html_to_pdf.pdf');
													area_print
															.width(cache_width);
												});
								// create canvas object  
								function getCanvas() {
									area_print.width((a4[0] * 1.33333) - 80)
											.css('max-width', 'none');
									return html2canvas(area_print, {
										imageTimeout : 2000,
										removeContainer : true
									});
								}
							}
						});
	</script>

</body>
</html>