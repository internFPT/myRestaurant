<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel panel-default">
	<div class="panel-body">
		<form:form action="${base}/index" modelAttribute="entity" >
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Tài Khoản</label>
					<form:input path="taiKhoan" class="form-control" readonly="${!empty entity.taiKhoan }"/>
				</div>
				<div class="form-group col-sm-6">
					<label>Mật Khẩu</label>
					<form:input path="matKhau" class="form-control" />
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Họ tên</label>
					<form:input path="hoTen" class="form-control" />
				</div>
				<div class="form-group col-sm-6">
					<label>Email</label>
					<form:input path="email" class="form-control" />
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Số điện thoại</label>
					<form:input path="soDt" class="form-control" />
				</div>
				<div class="form-group col-sm-6">
					<label>Địa chỉ</label>
					<form:input path="diaChi" class="form-control" />
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Giới tính</label>
					<div class="form-control">
						<form:radiobutton path="gioiTinh" value="true" label="Nam" />
						<form:radiobutton path="gioiTinh" value="false" label="Nữ" />
					</div>
				</div>
				<div class="form-group col-sm-6">
					<label>Quyền</label>
					<div class="form-control">
						<form:radiobutton path="nhomQuyen" value="1" label="Admin" />
						<form:radiobutton path="nhomQuyen" value="2" label="User" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<button class="btn btn-primary" formaction="${base}/create">Create</button>
				<button class="btn btn-warning" formaction="${base}/update">Update</button>
				
				<a class="btn btn-default" href="${base}/index">Reset</a>

			</div>
		</form:form>
	</div>
</div>


