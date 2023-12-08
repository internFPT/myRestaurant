<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<table class="table table-hover">
	<thead>
		<tr>
			<th>Mã Khách Hàng</th>
			<th>Mật Khẩu</th>
			<th>Họ Tên</th>
			<th>Email</th>
			<th>Số Điện Thoại</th>
			<th>Địa Chỉ</th>
			<th>Ảnh</th>
			<th>Activated</th>
			
			
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="e" items="${list}">
			<tr>
				<td>${e.maKhachHang}</td>
				<td>${e.matKhau}</td>
				<td>${e.hoTen}</td>
				<td>${e.email}</td>
				<td>${e.soDt}</td>
				<td>${e.diaChi}</td>
				<td>${e.imgUrl}</td>
				<td>${e.chungThuc?'Yes':'No'}</td>
				
				<td><a class="btn btn-sm btn-info"
					href="${base}/edit/${e.maKhachHang}">Edit</a> <a
					class="btn btn-sm btn-danger" href="${base}/delete/${e.maKhachHang}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
