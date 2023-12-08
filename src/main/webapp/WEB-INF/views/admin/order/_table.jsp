<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel panel-default">
	<div class="panel-body">
<table class="table table-hover">
	<thead>
		<tr>
			<th>Mã Đơn Hàng</th>
			<th>Mã Khách Hàng</th>
			<th>Ngày Đặt Hàng</th>
			<th>Địa Chỉ</th>
			<th>Tổng Tiền</th>
			<th>Ghi Chú</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="e" items="${list}">
			<tr>
				<td>${e.maDonHang}</td>
				<td>${e.khachHang.maKhachHang}</td>
				<td>${e.ngayDatHang}</td>
				<td>${e.diaChi}</td>
				<td>${e.tongTien}</td>
				<td>${e.ghiChu}</td>
				<td><a class="btn btn-sm btn-info"
					href="${base}/edit/${e.maDonHang}">Chi tiết</a> <a
					class="btn btn-sm btn-danger" href="${base}/delete/${e.maDonHang}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>
</div>
