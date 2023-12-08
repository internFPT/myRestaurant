<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel panel-default">
	<div class="panel-body">
		<form:form action="${base}/index" modelAttribute="entity"
			enctype="multipart/form-data">
			<div class="form-group">
				<label>Mã Danh Mục</label>
				<form:input path="maDanhMuc" class="form-control"
					readonly="${!empty entity.maDanhMuc }" />
			</div>
			<div class="form-group">
				<label>Tên Danh Mục</label>
				<form:input path="tenDanhMuc" class="form-control" />
			</div>
			<div class="form-group">
				<label>Ảnh Danh Mục</label> <input type="file" name="photo_file"
					class="form-control">
				<form:hidden path="imgUrl" />

			</div>
			<div class="form-group">
				<button class="btn btn-primary" formaction="${base}/create">Create</button>
				<button class="btn btn-warning" formaction="${base}/update">Update</button>

				<a class="btn btn-default" href="${base}/index">Reset</a>

			</div>
		</form:form>
	</div>
</div>


