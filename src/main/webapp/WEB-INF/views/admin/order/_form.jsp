<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel panel-default">
	<div class="panel-body">
		<form:form action="${base}/index" modelAttribute="entity"
			enctype="multipart/form-data">
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Mã Đơn Hàng</label>
					<form:input path="maDonHang" class="form-control" readonly="true" />
				</div>
				<div class="form-group col-sm-6">
					<label>Mã Khach Hàng</label>
					<form:input path="khachHang.maKhachHang" class="form-control" readonly="true" />
				</div>

			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Ngày Đặt Hàng</label>
					<form:input path="ngayDatHang" class="form-control" readonly="true" />
				</div>
				<div class="form-group col-sm-6">
					<label>Địa Chỉ</label>
					<form:input path="khachHang.diaChi" class="form-control" readonly="true" />
				</div>

			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Ghi Chú</label>
					<form:input path="ghiChu" class="form-control" readonly="true" />
				</div>
				<div class="form-group col-sm-6">
					<label>Tổng Tiền</label>
					<form:input path="tongTien" class="form-control" readonly="true" />
				</div>
			</div>
			<div class="form-group"></div>
		</form:form>
		<c:if test="${!empty details }">
			<jsp:include page="_details.jsp"/>
		</c:if>
	</div>
</div>


