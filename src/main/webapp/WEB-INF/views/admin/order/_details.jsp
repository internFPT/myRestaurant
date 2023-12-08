<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel panel-default">
	<div class="panel-body">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Mã Sản Phẩm</th>
					<th>Tên Sản Phẩm</th>
					<th>Số lượng</th>
					<th>Giá bán</th>
					<th>Tổng Tiền</th>
					<th>Khuyến mãi</th>

					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="e" items="${details}">
					<tr>
						<td>${e.sanPham.maSanPham}</td>
						<td>${e.sanPham.tenSanPham}</td>
						<td>${e.soLuong}</td>
						<td>${e.giaBan}</td>
						<td>${e.tongTien}</td>
						<td>${e.khuyenMai}</td>

						<td></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
