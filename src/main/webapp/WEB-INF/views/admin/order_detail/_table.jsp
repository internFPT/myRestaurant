<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel panel-default">
	<div class="panel-body">
<table class="table table-hover">
	<thead>
		<tr>
			<th>Mã Đơn Hàng</th>
			<th>Mã Sản Phẩm</th>
			<th>Số lượng</th>
			<th>Giá bán</th>
			
			<th>Tổng Tiền</th>
			<th>Khuyến mãi</th>
			
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="e" items="${list}">
			<tr>
				<td>${e.donHang.maDonHang}</td>
				<td>${e.sanPham.maSanPham}</td>
				<td>${e.soLuong}</td>
				<td>${e.giaBan}</td>
				
				<td>${e.tongTien}</td>
				<td>${e.khuyenMai}</td>
				
				<td> <a
					class="btn btn-sm btn-danger" href="${base}/delete/${e.maDhct}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>
</div>
