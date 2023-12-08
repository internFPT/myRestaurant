<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel panel-default">
	<div class="panel-body">
<table class="table table-hover">
	<thead>
		<tr>
			<th>Tên tài hoản</th>
			<th>Mật khẩu</th>
			<th>Họ tên</th>
			<th>Giới tính</th>
			<th>Địa chỉ</th>
			<th>Email</th>
			<th>Sđt</th>
			<th>Quyền</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="e" items="${list}">
			<tr>
				<td>${e.taiKhoan}</td>
				<td>${e.matKhau}</td>
				<td>${e.hoTen}</td>
				<td>${e.gioiTinh}</td>
				<td>${e.diaChi}</td>
				<td>${e.email}</td>
				<td>${e.soDt}</td>
				<td>${e.nhomQuyen}</td>
				<td><a class="btn btn-sm btn-info"
					href="${base}/edit/${e.taiKhoan}">Edit</a> <a
					class="btn btn-sm btn-danger" href="${base}/delete/${e.taiKhoan}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>
</div>
