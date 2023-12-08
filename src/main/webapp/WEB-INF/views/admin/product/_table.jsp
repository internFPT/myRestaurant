<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<table class="table table-hover">
	<thead>
		<tr>
			<th>Mã Sản Phẩm</th>
			<th>Tên sản phẩm</th>
			<th>Giá gốc</th>
			<th>Khuyến mãi</th>
			<th>Đơn vị tính</th>
			<th>Ảnh</th>
			<th>Mô tả ngắn</th>
			<th>Mô tả chi tiết</th>
			<th>Lượt xem</th>
			<th>Số lượng</th>
			
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="e" items="${list}">
			<tr>
				<td>${e.maSanPham}</td>
				<td>${e.tenSanPham}</td>
				<td>${e.giaGoc}</td>
				<td>${e.khuyenMai}</td>
				<td>${e.donViTinh}</td>
				<td>${e.imgUrl}</td>
				<td>${e.motaNgan}</td>
				<td>${e.motaChiTiet}</td>
				<td>${e.luotXem}</td>
				<td>${e.soLuong}</td>
				
				<td><a class="btn btn-sm btn-info"
					href="${base}/edit/${e.maSanPham}">Edit</a> <a
					class="btn btn-sm btn-danger" href="${base}/delete/${e.maSanPham}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
