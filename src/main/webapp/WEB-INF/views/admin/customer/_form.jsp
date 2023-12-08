<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel panel-default">
	<div class="panel-body">
		<form:form action="${base}/index" modelAttribute="entity" enctype="multipart/form-data">
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Mã Khách Hàng</label>
					<form:input path="maKhachHang" class="form-control" readonly="${!empty entity.maKhachHang }"/>
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
					<label>Ảnh</label>
					<input type="file" name="photo_file" class="form-control">
					<form:hidden path="imgUrl" />
				</div>
				<div class="form-group col-sm-6">
					<label>Activate</label>
					<div class="form-control">
						<form:radiobutton path="chungThuc" value="true" label="yes" />
						<form:radiobutton path="chungThuc" value="false" label="no" />
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


