<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
/*Css viewcontent*/
.container-viewcontent {
	display: flex;
}

/*Css viewcontents*/
.viewcontents-container {
	height: 5%;
}

.viewcontents-container i {
	padding-left: 3%;
	padding-top: 2.5%;
	margin-right: 10px;
}

.viewcontents-container a {
	color: blue;
	padding-top: 2.5%;
	text-decoration: none;
}

.viewcontents-container:hover {
	background-color: lightgray;
}

/*Css main*/
.row-main {
	width: 100%;
}

.row-main hr {
	border-color: rgb(242, 242, 242);
	width: 100%;
	margin-bottom: 6px;
}
/*Css table-main*/
.table-main, .td-main, .th-main {
	border: 1px solid black;
}

.th-main {
	text-align: left;
	background-color: lightgray;
	font-size: 150%;
	padding-bottom: 1%;
	padding-top: 1%;
	padding-left: 1%;
	font-weight: lighter;
}

.td-main {
	padding: 3%;
}

.table-main {
	width: 95%;
	border-collapse: collapse;
}
/*Css table-son*/
.table-son, .td-son, .th-son {
	border: 1px solid black;
}

.table-son {
	width: 100%;
	border-collapse: collapse;
	font-size: 20px;
}

.th-son {
	text-align: unset;
}

.td-son {
	
}

.table-son .tr-son:nth-child(odd) {
	background-color: lightgray;
}

.table-son .tr-son:nth-child(even) {
	background-color: white;
}

.table-son .tr-son:nth-child(1) {
	background-color: white;
}

element.style {
    border-radius: 4 px;
}
textarea{
	border: 2px solid #f0f0f0;
	border-radius: 4px;
	display: block;
	font-family: inherit;
	font-size: 14px;
	padding: 1px;
	width: 720px;
}
input {
	border: 2px solid #f0f0f0;
	border-radius: 4px;
	display: block;
	font-family: inherit;
	font-size: 14px;
	padding: 5px;
	width: 720px;
}
.btn1{
	background-color: #17B21F;
	padding: 5px;
	font-family: inherit;
	margin-top: 1px;
}


.menunv {
	margin: 1px;
	float: left;
	width: 16%;
	padding: 16px;
	min-height: 500px;
	background-color: #000055;
	height: 100vh
}
</style>
<meta charset="ISO-8859-1">
<title>View Contents</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
<!-- header -->
		<div class="headernv">
			<jsp:include page="/viewsnhanvien/Header.jsp" />
		</div>
		<div class="menunv">
			<jsp:include page="/viewsnhanvien/Menu.jsp" /></div>
	<div class="container-viewcontent">
		<div class="row-main">
			
				<h1 style="margin-top: 2px;">Edit Nhà Cung Cấp</h1>

			<hr />
			<table class="table-main">
				<tr>
						<td class="td-main">
							<form action="EditNhaCungCapDB" method="post">
								<p style="margin: 0; padding: 0; color: green; font-size: x-large">${message}</p>
								
								<br /> 
								<input type="hidden" name="maNCC" value="<c:out value='${ncc.maNCC}' />" /> 
								
								<label for="tenNCC">Tên Nhà Cung Cấp:</label><br />
								<input type="text" id="tenNCC" name="tenNCC" value="${ncc.tenNCC}" maxlength="200"/><br />

								<label for="diaChi">Địa Chỉ:</label><br />
								<input type="text" id="diaChi" name="diaChi" value="${ncc.diaChi}" maxlength="200"/><br />
								
								<label for="dienThoai">Điện Thoại:</label><br />
								<input type="text" id="dienThoai" name="dienThoai" value="${ncc.dienThoai}" maxlength="200"/><br />
								
								<br />
								
								<button class="btn1" type="submit" onclick="validateFormContent()" name="submit" value="submit">Submit Button</button>
								<button class="btn1" type="reset">Reset Button</button>
								<a href="NhaCungCapDB">Return List NhaCungCap</a>
							</form>
						</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>