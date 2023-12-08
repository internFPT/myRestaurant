<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel panel-default">
	<div class="panel-body">
		<form:form action="${base}/index" modelAttribute="entity" enctype="multipart/form-data">
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Mã sản phẩm</label>
					<form:input path="maSanPham" class="form-control" readonly="true" placeholder="Auto"/>
				</div>
				<div class="form-group col-sm-6">
					<label>Tên sản phẩm</label>
					<form:input path="tenSanPham" class="form-control" />
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Giá gốc</label>
					<form:input path="giaGoc" class="form-control" />
				</div>
				<div class="form-group col-sm-6">
					<label>Khuyến mãi</label>
					<form:input path="khuyenMai" class="form-control" />
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Đơn vị tính</label>
					<form:input path="donViTinh" class="form-control" />
				</div>
				<div class="form-group col-sm-6">
					<label>Ảnh</label>
					<input type="file" name="photo_file" class="form-control">
					<form:hidden path="imgUrl" />
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Mô tả ngắn</label>
					<form:textarea path="motaNgan" class="form-control" />
				</div>
				<div class="form-group col-sm-6">
					<label>Mô tả chi tiết</label>
					<form:textarea path="motaChiTiet" class="form-control" />
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Lượt xem</label>
					<form:input path="luotXem" class="form-control" />
				</div>
				<div class="form-group col-sm-6">
					<label>Số lượng</label>
					<form:input path="soLuong" class="form-control" />
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-12">
					<label>Danh mục sản phẩm</label>
					<form:select path="danhMucSanPham.maDanhMuc" class="form-control">
						<form:options items="${danhmucSP}" itemLabel="tenDanhMuc" itemValue="maDanhMuc" />
					 </form:select>
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

<script type="text/javascript">
//<![CDATA[
        bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
  //]]>
  </script>
